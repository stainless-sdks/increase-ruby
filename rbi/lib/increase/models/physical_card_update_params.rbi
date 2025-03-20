# typed: strong

module Increase
  module Models
    class PhysicalCardUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The status to update the Physical Card to.
      sig { returns(Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol)
          .returns(Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          status: Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(status:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              status: Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The status to update the Physical Card to.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PhysicalCardUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::PhysicalCardUpdateParams::Status::TaggedSymbol) }

        # The physical card is active.
        ACTIVE = T.let(:active, Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol)

        # The physical card is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol)

        # The physical card is permanently canceled.
        CANCELED = T.let(:canceled, Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol)
      end
    end
  end
end
