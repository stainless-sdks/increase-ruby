# typed: strong

module Increase
  module Models
    class CardCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_card_parameters/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/create_a_card_parameters/properties/billing_address
      sig { returns(T.nilable(Increase::Models::CardCreateParams::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address: T.any(Increase::Models::CardCreateParams::BillingAddress, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :billing_address

      # #/components/schemas/create_a_card_parameters/properties/description
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # #/components/schemas/create_a_card_parameters/properties/digital_wallet
      sig { returns(T.nilable(Increase::Models::CardCreateParams::DigitalWallet)) }
      attr_reader :digital_wallet

      sig do
        params(
          digital_wallet: T.any(Increase::Models::CardCreateParams::DigitalWallet, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :digital_wallet

      # #/components/schemas/create_a_card_parameters/properties/entity_id
      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      sig do
        params(
          account_id: String,
          billing_address: T.any(Increase::Models::CardCreateParams::BillingAddress, Increase::Internal::AnyHash),
          description: String,
          digital_wallet: T.any(Increase::Models::CardCreateParams::DigitalWallet, Increase::Internal::AnyHash),
          entity_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id:,
        billing_address: nil,
        description: nil,
        digital_wallet: nil,
        entity_id: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              account_id: String,
              billing_address: Increase::Models::CardCreateParams::BillingAddress,
              description: String,
              digital_wallet: Increase::Models::CardCreateParams::DigitalWallet,
              entity_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class BillingAddress < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_card_parameters/properties/billing_address/properties/city
        sig { returns(String) }
        attr_accessor :city

        # #/components/schemas/create_a_card_parameters/properties/billing_address/properties/line1
        sig { returns(String) }
        attr_accessor :line1

        # #/components/schemas/create_a_card_parameters/properties/billing_address/properties/postal_code
        sig { returns(String) }
        attr_accessor :postal_code

        # #/components/schemas/create_a_card_parameters/properties/billing_address/properties/state
        sig { returns(String) }
        attr_accessor :state

        # #/components/schemas/create_a_card_parameters/properties/billing_address/properties/line2
        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # #/components/schemas/create_a_card_parameters/properties/billing_address
        sig do
          params(city: String, line1: String, postal_code: String, state: String, line2: String)
            .returns(T.attached_class)
        end
        def self.new(city:, line1:, postal_code:, state:, line2: nil); end

        sig do
          override.returns({city: String, line1: String, postal_code: String, state: String, line2: String})
        end
        def to_hash; end
      end

      class DigitalWallet < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_card_parameters/properties/digital_wallet/properties/digital_card_profile_id
        sig { returns(T.nilable(String)) }
        attr_reader :digital_card_profile_id

        sig { params(digital_card_profile_id: String).void }
        attr_writer :digital_card_profile_id

        # #/components/schemas/create_a_card_parameters/properties/digital_wallet/properties/email
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # #/components/schemas/create_a_card_parameters/properties/digital_wallet/properties/phone
        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        # #/components/schemas/create_a_card_parameters/properties/digital_wallet
        sig do
          params(digital_card_profile_id: String, email: String, phone: String).returns(T.attached_class)
        end
        def self.new(digital_card_profile_id: nil, email: nil, phone: nil); end

        sig { override.returns({digital_card_profile_id: String, email: String, phone: String}) }
        def to_hash; end
      end
    end
  end
end
