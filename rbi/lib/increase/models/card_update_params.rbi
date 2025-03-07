# typed: strong

module Increase
  module Models
    class CardUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::CardUpdateParams::BillingAddress)) }
      def billing_address
      end

      sig do
        params(_: Increase::Models::CardUpdateParams::BillingAddress)
          .returns(Increase::Models::CardUpdateParams::BillingAddress)
      end
      def billing_address=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardUpdateParams::DigitalWallet)) }
      def digital_wallet
      end

      sig do
        params(_: Increase::Models::CardUpdateParams::DigitalWallet)
          .returns(Increase::Models::CardUpdateParams::DigitalWallet)
      end
      def digital_wallet=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          billing_address: Increase::Models::CardUpdateParams::BillingAddress,
          description: String,
          digital_wallet: Increase::Models::CardUpdateParams::DigitalWallet,
          entity_id: String,
          status: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
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
        override
          .returns(
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
