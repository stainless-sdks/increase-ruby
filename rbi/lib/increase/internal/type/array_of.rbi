# typed: strong

module Increase
  module Internal
    module Type
      # @api private
      #
      # Array of items of a given type.
      class ArrayOf
        include Increase::Internal::Type::Converter

        abstract!
        final!

        Elem = type_member(:out)

        sig(:final) do
          params(
            type_info: T.any(
              Increase::Internal::AnyHash,
              T.proc.returns(Increase::Internal::Type::Converter::Input),
              Increase::Internal::Type::Converter::Input
            ),
            spec: Increase::Internal::AnyHash
          )
            .returns(T.attached_class)
        end
        def self.[](type_info, spec = {}); end

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def ===(other); end

        sig(:final) { params(other: T.anything).returns(T::Boolean) }
        def ==(other); end

        # @api private
        sig(:final) do
          override
            .params(
              value: T.any(T::Array[T.anything], T.anything),
              state: Increase::Internal::Type::Converter::CoerceState
            )
            .returns(T.any(T::Array[T.anything], T.anything))
        end
        def coerce(value, state:); end

        # @api private
        sig(:final) do
          override
            .params(
              value: T.any(T::Array[T.anything], T.anything),
              state: Increase::Internal::Type::Converter::DumpState
            )
            .returns(T.any(T::Array[T.anything], T.anything))
        end
        def dump(value, state:); end

        # @api private
        sig(:final) { returns(Elem) }
        protected def item_type; end

        # @api private
        sig(:final) { returns(T::Boolean) }
        protected def nilable?; end

        # @api private
        sig(:final) do
          params(
            type_info: T.any(
              Increase::Internal::AnyHash,
              T.proc.returns(Increase::Internal::Type::Converter::Input),
              Increase::Internal::Type::Converter::Input
            ),
            spec: Increase::Internal::AnyHash
          )
            .void
        end
        def initialize(type_info, spec = {}); end

        # @api private
        sig(:final) { params(depth: Integer).returns(String) }
        def inspect(depth: 0); end
      end
    end
  end
end
