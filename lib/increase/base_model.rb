# frozen_string_literal: true

module Increase
  # @!visibility private
  module Converter
    # Based on `value`, returns a value that conforms to `type`, to the extent possible:
    # - If the given `value` conforms to `type` already, the given `value`.
    # - If it's possible and safe to convert the given `value` to `type`, such a converted value.
    # - Otherwise, the given `value` unaltered.
    def self.convert(type, value)
      # If `type.is_a?(Converter)`, `type` is an instance of a class that mixes
      # in `Converter`, indicating that the type should define `#convert` on this
      # instance. This is used for Enums and ArrayOfs, which are parameterized.
      # If `type.include?(Converter)`, `type` is a class that mixes in `Converter`
      # which we use to signal that the class should define `.convert`. This is
      # used where the class itself fully specifies the type, like model classes.
      # We don't monkey-patch Ruby-native types, so those need to be handled
      # directly.
      if type.is_a?(Converter) || type.include?(Converter)
        type.convert(value)

      elsif type == NilClass
        nil
      elsif type == Float
        value.is_a?(Numeric) ? value.to_f : value
      elsif [Object, Integer, String, Hash].include?(type)
        value
      else
        raise StandardError, "Unexpected type #{type}"
      end
    end
  end

  # When we don't know what to expect for the value.
  # @!visibility private
  class Unknown
    include Converter

    def self.convert(value)
      value
    end
  end

  # Ruby has no Boolean class; this is something for models to refer to.
  # @!visibility private
  class BooleanModel
    include Converter

    def self.convert(value)
      value
    end
  end

  # A value from among a specified list of options. OpenAPI enum values map to
  # Ruby values in the SDK as follows:
  # boolean => true|false
  # integer => Integer
  # float => Float
  # string => Symbol
  # We can therefore convert string values to Symbols, but can't convert other
  # values safely.
  # @!visibility private
  class Enum
    include Converter

    # NB we don't do runtime validation, so `options` is just an FYI
    # for the reader.
    def initialize(*options)
      @options = options
    end

    def convert(value)
      if value.is_a?(String)
        value.to_sym
      else
        value
      end
    end
  end

  # Array of items of a given type.
  # @!visibility private
  class ArrayOf
    include Converter

    def initialize(items_type_info)
      @items_type_fn = items_type_info.is_a?(Proc) ? items_type_info : -> { items_type_info }
    end

    def convert(value)
      items_type = @items_type_fn.call
      value.map { |item| Converter.convert(items_type, item) }
    end
  end

  class BaseModel
    include Converter

    # @!visibility private
    # Assumes superclass fields are totally defined before fields are accessed / defined on subclasses.
    def self.fields
      @fields ||= (superclass == BaseModel ? {} : superclass.fields.dup)
    end

    # @!visibility private
    def self.add_field(name_sym, type_info, mode)
      type_fn = type_info.is_a?(Proc) ? type_info : -> { type_info }
      fields[name_sym] = {type_fn: type_fn, mode: mode}

      define_method(name_sym) { @data[name_sym] }
      define_method("#{name_sym}=") { |val| @data[name_sym] = val }
    end

    # @!visibility private
    # NB `required` is just a signal to the reader. We don't do runtime validation anyway.
    def self.required(name_sym, type_info, mode = :rw)
      add_field(name_sym, type_info, mode)
    end

    # @!visibility private
    # NB `optional` is just a signal to the reader. We don't do runtime validation anyway.
    def self.optional(name_sym, type_info, mode = :rw)
      add_field(name_sym, type_info, mode)
    end

    # @!visibility private
    def self.convert(data)
      model = new
      model.convert(data)
      model
    end

    # @!visibility private
    def initialize
      @data = {}
    end

    # @!visibility private
    def convert(data)
      # TODO: what if data isn't a hash?
      data.each do |field_name, value|
        next if value.nil?

        field = self.class.fields[field_name.to_sym]
        if field
          next if field[:mode] == :w

          field_type = field[:type_fn].call
          result = Converter.convert(field_type, value)
          # TODO: error handling: if conversion throws, just put back whatever we got from the raw json?
          @data[field_name.to_sym] = result
        else
          @data[field_name.to_sym] = value
        end
      end
    end

    # Returns a Hash of the data underlying this object.
    # Keys are Symbols and values are the parsed / typed domain objects.
    # The return value indicates which values were ever set on the object -
    # i.e. there will be a key in this hash if they ever were, even if the
    # set value was nil.
    # This method is not recursive.
    # The returned value is shared by the object, so it should not be mutated.
    #
    # @return [Hash{Symbol => Object}] Data for this object.
    def to_h
      @data
    end

    alias_method :to_hash, :to_h

    # Lookup attribute value by key in the object.
    # If this key was not provided when the object was formed (e.g. because the API response
    # did not include that key), returns nil.
    # It is valid to lookup keys that are not in the API spec, for example to access
    # undocumented features.
    # Lookup by anything other than a Symbol is an ArgumentError.
    #
    # @param key [Symbol] Key to look up by.
    #
    # @return [Object] Parsed / typed value at the given key, or nil if no data is available.
    def [](key)
      if !key.instance_of?(Symbol)
        raise ArgumentError, "Expected symbol key for lookup, got #{key.inspect}"
      end
      @data[key]
    end

    # @return [String]
    def inspect
      "#<#{self.class.name}:0x#{object_id.to_s(16)} #{@data.inspect}>"
    end

    # @return [String]
    def to_s
      @data.to_s
    end
  end
end
