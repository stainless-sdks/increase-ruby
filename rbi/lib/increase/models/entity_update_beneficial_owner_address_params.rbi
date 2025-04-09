# typed: strong

module Increase
  module Models
    class EntityUpdateBeneficialOwnerAddressParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address
      sig { returns(Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address) }
      attr_reader :address

      sig do
        params(
          address: T.any(Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :address

      # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/beneficial_owner_id
      sig { returns(String) }
      attr_accessor :beneficial_owner_id

      sig do
        params(
          address: T.any(Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address, Increase::Internal::AnyHash),
          beneficial_owner_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(address:, beneficial_owner_id:, request_options: {}); end

      sig do
        override
          .returns(
            {
              address: Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address,
              beneficial_owner_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class Address < Increase::Internal::Type::BaseModel
        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/country
        sig { returns(String) }
        attr_accessor :country

        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/line1
        sig { returns(String) }
        attr_accessor :line1

        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/city
        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { params(city: String).void }
        attr_writer :city

        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/line2
        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/state
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/zip
        sig { returns(T.nilable(String)) }
        attr_reader :zip

        sig { params(zip: String).void }
        attr_writer :zip

        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address
        sig do
          params(country: String, line1: String, city: String, line2: String, state: String, zip: String)
            .returns(T.attached_class)
        end
        def self.new(country:, line1:, city: nil, line2: nil, state: nil, zip: nil); end

        sig do
          override.returns(
            {
              country: String,
              line1: String,
              city: String,
              line2: String,
              state: String,
              zip: String
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
