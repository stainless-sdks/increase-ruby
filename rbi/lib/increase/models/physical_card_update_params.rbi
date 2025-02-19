# typed: strong

module Increase
  module Models
    class PhysicalCardUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { params(status: Symbol, request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(status:, request_options: {})
      end

      sig { override.returns({status: Symbol, request_options: Increase::RequestOptions}) }
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
