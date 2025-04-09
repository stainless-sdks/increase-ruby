# typed: strong

module Increase
  module Models
    class EntityUpdateAddressParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address
      sig { returns(Increase::Models::EntityUpdateAddressParams::Address) }
      attr_reader :address

      sig do
        params(address: T.any(Increase::Models::EntityUpdateAddressParams::Address, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :address

      sig do
        params(
          address: T.any(Increase::Models::EntityUpdateAddressParams::Address, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(address:, request_options: {}); end

      sig do
        override
          .returns(
            {address: Increase::Models::EntityUpdateAddressParams::Address, request_options: Increase::RequestOptions}
          )
      end
      def to_hash; end

      class Address < Increase::Internal::Type::BaseModel
        # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/city
        sig { returns(String) }
        attr_accessor :city

        # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/line1
        sig { returns(String) }
        attr_accessor :line1

        # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/state
        sig { returns(String) }
        attr_accessor :state

        # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/zip
        sig { returns(String) }
        attr_accessor :zip

        # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/line2
        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address
        sig do
          params(
            city: String,
            line1: String,
            state: String,
            zip: String,
            line2: String
          ).returns(T.attached_class)
        end
        def self.new(city:, line1:, state:, zip:, line2: nil); end

        sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
        def to_hash; end
      end
    end
  end
end
