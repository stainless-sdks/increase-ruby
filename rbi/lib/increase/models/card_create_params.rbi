# typed: strong

module Increase
  module Models
    class CardCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardCreateParams::BillingAddress)) }
      def billing_address
      end

      sig do
        params(_: Increase::Models::CardCreateParams::BillingAddress)
          .returns(Increase::Models::CardCreateParams::BillingAddress)
      end
      def billing_address=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardCreateParams::DigitalWallet)) }
      def digital_wallet
      end

      sig do
        params(_: Increase::Models::CardCreateParams::DigitalWallet)
          .returns(Increase::Models::CardCreateParams::DigitalWallet)
      end
      def digital_wallet=(_)
      end

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
        sig { returns(String) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        sig do
          params(city: String, line1: String, postal_code: String, state: String, line2: String)
            .returns(T.attached_class)
        end
        def self.new(city:, line1:, postal_code:, state:, line2: nil)
        end

        sig { override.returns({city: String, line1: String, postal_code: String, state: String, line2: String}) }
        def to_hash
        end
      end

      class DigitalWallet < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        def digital_card_profile_id
        end

        sig { params(_: String).returns(String) }
        def digital_card_profile_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        sig { returns(T.nilable(String)) }
        def phone
        end

        sig { params(_: String).returns(String) }
        def phone=(_)
        end

        sig { params(digital_card_profile_id: String, email: String, phone: String).returns(T.attached_class) }
        def self.new(digital_card_profile_id: nil, email: nil, phone: nil)
        end

        sig { override.returns({digital_card_profile_id: String, email: String, phone: String}) }
        def to_hash
        end
      end
    end
  end
end
