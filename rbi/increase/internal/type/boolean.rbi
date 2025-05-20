# typed: strong

module Increase
  module Internal
    module Type
      # @api private
      #
      # Ruby has no Boolean class; this is something for models to refer to.
      class Boolean
        extend Increase::Internal::Type::Converter
        extend Increase::Internal::Util::SorbetRuntimeSupport

        abstract!

        sig { params(other: T.anything).returns(T::Boolean) }
        def self.===(other)
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def self.==(other)
        end

        class << self
          # @api private
          sig do
            override
              .params(
                value: T.any(T::Boolean, T.anything),
                state: Increase::Internal::Type::Converter::CoerceState
              )
              .returns(T.any(T::Boolean, T.anything))
          end
          def coerce(value, state:)
          end

          # @api private
          sig do
            override
              .params(
                value: T.any(T::Boolean, T.anything),
                state: Increase::Internal::Type::Converter::DumpState
              )
              .returns(T.any(T::Boolean, T.anything))
          end
          def dump(value, state:)
          end

          # @api private
          sig { returns(T.anything) }
          def to_sorbet_type
          end
        end
      end
    end
  end
end
