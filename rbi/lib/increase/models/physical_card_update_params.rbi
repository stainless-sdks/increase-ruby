# typed: strong

module Increase
  module Models
    class PhysicalCardUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The status to update the Physical Card to.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(status: Symbol, request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(status:, request_options: {})
      end

      sig { override.returns({status: Symbol, request_options: Increase::RequestOptions}) }
      def to_hash
      end

      # The status to update the Physical Card to.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled
      end
    end
  end
end
