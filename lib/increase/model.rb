# frozen_string_literal: true

module Increase

  module Converter
    def convert(convert)
      raise NotImplementedError
    end

    def self.convert(type, value)
      if type.is_a?(Class) && type.superclass == Model
        type.convert(value || {})
      elsif type.is_a?(Converter) || type.include?(Converter)
        type.convert(value)
      elsif type.is_a?(Class)
        # TODO: selective hardcoded coercion here,
        # eg int->float
        if type == NilClass
          nil
        elsif type == Float && value.is_a?(Numeric)
          value.to_f
        elsif [Integer, String].include? type
          value
        end
      else
        raise StandardError.new("can't coerce #{value.class} to #{type}")
      end
    end

    # Is `value` a member of the type of this converter's output?
    # XXX this isn't coercion. The value must already be exactly correct.
    # It uses JSON schema's notion of type.
    # So, eg, Ruby doesn't have booleans, but this function's domain does.
    def same_type?(value)
      raise NotImplementedError
    end

    # dispatch function for `same_type`, to include `String` and other
    # base classes
    def self.same_type?(type, value)
      if type.is_a?(Converter) || type.include?(Converter)
        type.same_type? value
      else
        value.is_a? type
      end
    end
  end

  # @!visibility private
  class Unknown
    include Converter
    def self.convert(value)
      value
    end
    def self.same_type?(value)
      true
    end
  end

  # Ruby has no boolean class; this is something for models to refer to.
  class BooleanModel
    include Converter

    def self.convert(value)
      value
    end

    def self.same_type?(value)
      [true, false].include? value
    end
  end

  # A symbol from among a specified list of options.
  class Enum
    include Converter

    # NB we don't do runtime validation, so `options` is just an FYI
    # for the reader.
    def initialize(options)
      @options = options
    end

    def convert(value)
      if value.is_a? String
        value.to_sym
      else
        value
      end
    end

    def same_type?(value)
      options.include? value
    end
  end

  # Array of items of a given type.
  class ArrayOf
    include Converter
    def initialize(items_type_info)
      @items_type_fn = items_type_info.is_a?(Proc) ? items_type_info : -> { items_type_info }
    end

    def convert(value)
      items_type = @items_type_fn.call
      # TODO: responding to 'not an enumerable' by just bailing out with nil?
      value.map { |item| Converter.convert(items_type, item) }
    end

    def same_type?(value)
      if !value.is_a?(Array)
        false
      else
        items_type = @items_type_fn.call
        value.all? { |item| Converter.same_type?(items_type, item) }
      end
    end
  end

  # A domain object with specified properties.
  module Model
    include Converter

    def add_field(name_sym, type_info, mode)
      @fields ||= {}
      type_fn = type_info.is_a?(Proc) ? type_info : -> { type_info }
      @fields[name_sym] = { type_fn: type_fn, mode: mode }

      define_method(name_sym) { @data[name_sym] }
      define_method("#{name_sym}=") { |val| @data[name_sym] = val }
    end

    # NB `required` is basically just a signal to the reader. We don't do runtime validation anyway.
    def required(name_sym, type_info, mode = :rw)
      add_field(name_sym, type_info, mode)
    end

    # NB `optional` is basically just a signal to the reader. We don't do runtime validation anyway.
    def optional(name_sym, type_info, mode = :rw)
      add_field(name_sym, type_info, mode)
    end

    def convert(data)
      model = new
      model.convert(data)
      model
    end

    attr_accessor :fields

    def same_type?(value)
      value.is_a? self
    end

    module Instance
      def self.convert_field(data, model)
        if model.is_a? Converter
          model.convert data
        elsif model.superclass == Model
          # TODO: what if the data aren't a hash at all?
          model.convert(**(data || {}))
        elsif model.instance_of?(Class)
          # TODO: selective hardcoded coercion here,
          # eg int->float

          data
        else
          raise NotImplementedError
        end
      end

      def convert(data)
        # TODO: what if data isn't a hash?
        data.each do |field_name, value|
          next if value.nil?

          # TODO: decide whether raw data should have only symbols, only string keys, or both
          field =
            self.class.fields[field_name.to_sym] ||
            self.class.fields[field_name.to_s]
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

      # TODO(Ruby) recursive to_h
      def to_h
        out = @data
        self.class.fields.each_key do |field_name|
          out[field_name] = instance_variable_get("@#{field_name.to_sym}")
        end
        out
      end

      def initialize(**_data)
        self.class.fields ||= {}
        self.class.included_modules.each do |x|
          begin
            f = x.fields
            self.class.fields.merge!(f)
          rescue StandardError
            "none"
          end
        end
        @data = {}
      end
    end
  end
end
