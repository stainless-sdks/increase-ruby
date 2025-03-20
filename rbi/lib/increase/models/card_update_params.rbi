# typed: strong

module Increase
  module Models
    class CardUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The card's updated billing address.
      sig { returns(T.nilable(Increase::Models::CardUpdateParams::BillingAddress)) }
      def billing_address
      end

      sig do
        params(_: T.any(Increase::Models::CardUpdateParams::BillingAddress, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::CardUpdateParams::BillingAddress, Increase::Util::AnyHash))
      end
      def billing_address=(_)
      end

      # The description you choose to give the card.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The contact information used in the two-factor steps for digital wallet card
      #   creation. At least one field must be present to complete the digital wallet
      #   steps.
      sig { returns(T.nilable(Increase::Models::CardUpdateParams::DigitalWallet)) }
      def digital_wallet
      end

      sig do
        params(_: T.any(Increase::Models::CardUpdateParams::DigitalWallet, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::CardUpdateParams::DigitalWallet, Increase::Util::AnyHash))
      end
      def digital_wallet=(_)
      end

      # The Entity the card belongs to. You only need to supply this in rare situations
      #   when the card is not for the Account holder.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      # The status to update the Card with.
      sig { returns(T.nilable(Increase::Models::CardUpdateParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Increase::Models::CardUpdateParams::Status::OrSymbol)
          .returns(Increase::Models::CardUpdateParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          billing_address: Increase::Models::CardUpdateParams::BillingAddress,
          description: String,
          digital_wallet: Increase::Models::CardUpdateParams::DigitalWallet,
          entity_id: String,
          status: Increase::Models::CardUpdateParams::Status::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing_address: nil,
        description: nil,
        digital_wallet: nil,
        entity_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              billing_address: Increase::Models::CardUpdateParams::BillingAddress,
              description: String,
              digital_wallet: Increase::Models::CardUpdateParams::DigitalWallet,
              entity_id: String,
              status: Increase::Models::CardUpdateParams::Status::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class BillingAddress < Increase::BaseModel
        # The city of the billing address.
        sig { returns(String) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        # The first line of the billing address.
        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        # The postal code of the billing address.
        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        # The US state of the billing address.
        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        # The second line of the billing address.
        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        # The card's updated billing address.
        sig do
          params(city: String, line1: String, postal_code: String, state: String, line2: String)
            .returns(T.attached_class)
        end
        def self.new(city:, line1:, postal_code:, state:, line2: nil)
        end

        sig do
          override.returns({city: String, line1: String, postal_code: String, state: String, line2: String})
        end
        def to_hash
        end
      end

      class DigitalWallet < Increase::BaseModel
        # The digital card profile assigned to this digital card.
        sig { returns(T.nilable(String)) }
        def digital_card_profile_id
        end

        sig { params(_: String).returns(String) }
        def digital_card_profile_id=(_)
        end

        # An email address that can be used to verify the cardholder via one-time passcode
        #   over email.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # A phone number that can be used to verify the cardholder via one-time passcode
        #   over SMS.
        sig { returns(T.nilable(String)) }
        def phone
        end

        sig { params(_: String).returns(String) }
        def phone=(_)
        end

        # The contact information used in the two-factor steps for digital wallet card
        #   creation. At least one field must be present to complete the digital wallet
        #   steps.
        sig do
          params(digital_card_profile_id: String, email: String, phone: String).returns(T.attached_class)
        end
        def self.new(digital_card_profile_id: nil, email: nil, phone: nil)
        end

        sig { override.returns({digital_card_profile_id: String, email: String, phone: String}) }
        def to_hash
        end
      end

      # The status to update the Card with.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CardUpdateParams::Status::TaggedSymbol) }

        # The card is active.
        ACTIVE = T.let(:active, Increase::Models::CardUpdateParams::Status::TaggedSymbol)

        # The card is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::CardUpdateParams::Status::TaggedSymbol)

        # The card is permanently canceled.
        CANCELED = T.let(:canceled, Increase::Models::CardUpdateParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::CardUpdateParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
