# typed: strong

module Increase
  module Models
    class CardCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The Account the card should belong to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The card's billing address.
      sig { returns(T.nilable(Increase::Models::CardCreateParams::BillingAddress)) }
      def billing_address
      end

      sig do
        params(_: T.any(Increase::Models::CardCreateParams::BillingAddress, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::CardCreateParams::BillingAddress, Increase::Util::AnyHash))
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
      #   creation. To add the card to a digital wallet, you may supply an email or phone
      #   number with this request. Otherwise, subscribe and then action a Real Time
      #   Decision with the category `digital_wallet_token_requested` or
      #   `digital_wallet_authentication_requested`.
      sig { returns(T.nilable(Increase::Models::CardCreateParams::DigitalWallet)) }
      def digital_wallet
      end

      sig do
        params(_: T.any(Increase::Models::CardCreateParams::DigitalWallet, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::CardCreateParams::DigitalWallet, Increase::Util::AnyHash))
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

      sig do
        params(
          account_id: String,
          billing_address: Increase::Models::CardCreateParams::BillingAddress,
          description: String,
          digital_wallet: Increase::Models::CardCreateParams::DigitalWallet,
          entity_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

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

        # The card's billing address.
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

        # An email address that can be used to contact and verify the cardholder via
        #   one-time passcode over email.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # A phone number that can be used to contact and verify the cardholder via
        #   one-time passcode over SMS.
        sig { returns(T.nilable(String)) }
        def phone
        end

        sig { params(_: String).returns(String) }
        def phone=(_)
        end

        # The contact information used in the two-factor steps for digital wallet card
        #   creation. To add the card to a digital wallet, you may supply an email or phone
        #   number with this request. Otherwise, subscribe and then action a Real Time
        #   Decision with the category `digital_wallet_token_requested` or
        #   `digital_wallet_authentication_requested`.
        sig do
          params(digital_card_profile_id: String, email: String, phone: String).returns(T.attached_class)
        end
        def self.new(digital_card_profile_id: nil, email: nil, phone: nil)
        end

        sig { override.returns({digital_card_profile_id: String, email: String, phone: String}) }
        def to_hash
        end
      end
    end
  end
end
