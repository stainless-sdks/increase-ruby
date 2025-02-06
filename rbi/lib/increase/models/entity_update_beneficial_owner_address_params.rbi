# typed: strong

module Increase
  module Models
    class EntityUpdateBeneficialOwnerAddressParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address) }
      attr_accessor :address

      sig { returns(String) }
      attr_accessor :beneficial_owner_id

      sig do
        params(
          address: Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address,
          beneficial_owner_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(address:, beneficial_owner_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            address: Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address,
            beneficial_owner_id: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Address < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :city

        sig { returns(String) }
        attr_accessor :line1

        sig { returns(String) }
        attr_accessor :state

        sig { returns(String) }
        attr_accessor :zip

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
        def initialize(city:, line1:, state:, zip:, line2: nil)
        end

        sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
        def to_hash
        end
      end
    end
  end
end
