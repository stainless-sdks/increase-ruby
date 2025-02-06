# typed: strong

module Increase
  module Models
    class CardUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::CardUpdateParams::BillingAddress)) }
      attr_reader :billing_address

      sig { params(billing_address: Increase::Models::CardUpdateParams::BillingAddress).void }
      attr_writer :billing_address

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Increase::Models::CardUpdateParams::DigitalWallet)) }
      attr_reader :digital_wallet

      sig { params(digital_wallet: Increase::Models::CardUpdateParams::DigitalWallet).void }
      attr_writer :digital_wallet

      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          billing_address: Increase::Models::CardUpdateParams::BillingAddress,
          description: String,
          digital_wallet: Increase::Models::CardUpdateParams::DigitalWallet,
          entity_id: String,
          status: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        billing_address: nil,
        description: nil,
        digital_wallet: nil,
        entity_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing_address: Increase::Models::CardUpdateParams::BillingAddress,
            description: String,
            digital_wallet: Increase::Models::CardUpdateParams::DigitalWallet,
            entity_id: String,
            status: Symbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BillingAddress < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :city

        sig { returns(String) }
        attr_accessor :line1

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(String) }
        attr_accessor :state

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        sig { params(city: String, line1: String, postal_code: String, state: String, line2: String).void }
        def initialize(city:, line1:, postal_code:, state:, line2: nil)
        end

        sig do
          override.returns({city: String, line1: String, postal_code: String, state: String, line2: String})
        end
        def to_hash
        end
      end

      class DigitalWallet < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :digital_card_profile_id

        sig { params(digital_card_profile_id: String).void }
        attr_writer :digital_card_profile_id

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        sig { params(digital_card_profile_id: String, email: String, phone: String).void }
        def initialize(digital_card_profile_id: nil, email: nil, phone: nil)
        end

        sig { override.returns({digital_card_profile_id: String, email: String, phone: String}) }
        def to_hash
        end
      end

      class Status < Increase::Enum
        abstract!

        # The card is active.
        ACTIVE = :active

        # The card is temporarily disabled.
        DISABLED = :disabled

        # The card is permanently canceled.
        CANCELED = :canceled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
