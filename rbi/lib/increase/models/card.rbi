# typed: strong

module Increase
  module Models
    class Card < Increase::BaseModel
      # The card identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the account this card belongs to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The Card's billing address.
      sig { returns(Increase::Models::Card::BillingAddress) }
      def billing_address
      end

      sig do
        params(_: T.any(Increase::Models::Card::BillingAddress, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::Card::BillingAddress, Increase::Util::AnyHash))
      end
      def billing_address=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Card was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The card's description for display purposes.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The contact information used in the two-factor steps for digital wallet card
      #   creation. At least one field must be present to complete the digital wallet
      #   steps.
      sig { returns(T.nilable(Increase::Models::Card::DigitalWallet)) }
      def digital_wallet
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::Card::DigitalWallet, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::Card::DigitalWallet, Increase::Util::AnyHash)))
      end
      def digital_wallet=(_)
      end

      # The identifier for the entity associated with this card.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def entity_id=(_)
      end

      # The month the card expires in M format (e.g., August is 8).
      sig { returns(Integer) }
      def expiration_month
      end

      sig { params(_: Integer).returns(Integer) }
      def expiration_month=(_)
      end

      # The year the card expires in YYYY format (e.g., 2025).
      sig { returns(Integer) }
      def expiration_year
      end

      sig { params(_: Integer).returns(Integer) }
      def expiration_year=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # The last 4 digits of the Card's Primary Account Number.
      sig { returns(String) }
      def last4
      end

      sig { params(_: String).returns(String) }
      def last4=(_)
      end

      # This indicates if payments can be made with the card.
      sig { returns(Increase::Models::Card::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::Card::Status::TaggedSymbol)
          .returns(Increase::Models::Card::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `card`.
      sig { returns(Increase::Models::Card::Type::TaggedSymbol) }
      def type
      end

      sig { params(_: Increase::Models::Card::Type::TaggedSymbol).returns(Increase::Models::Card::Type::TaggedSymbol) }
      def type=(_)
      end

      # Cards are commercial credit cards. They'll immediately work for online purchases
      #   after you create them. All cards maintain a credit limit of 100% of the
      #   Account’s available balance at the time of transaction. Funds are deducted from
      #   the Account upon transaction settlement.
      sig do
        params(
          id: String,
          account_id: String,
          billing_address: Increase::Models::Card::BillingAddress,
          created_at: Time,
          description: T.nilable(String),
          digital_wallet: T.nilable(Increase::Models::Card::DigitalWallet),
          entity_id: T.nilable(String),
          expiration_month: Integer,
          expiration_year: Integer,
          idempotency_key: T.nilable(String),
          last4: String,
          status: Increase::Models::Card::Status::TaggedSymbol,
          type: Increase::Models::Card::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        billing_address:,
        created_at:,
        description:,
        digital_wallet:,
        entity_id:,
        expiration_month:,
        expiration_year:,
        idempotency_key:,
        last4:,
        status:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              billing_address: Increase::Models::Card::BillingAddress,
              created_at: Time,
              description: T.nilable(String),
              digital_wallet: T.nilable(Increase::Models::Card::DigitalWallet),
              entity_id: T.nilable(String),
              expiration_month: Integer,
              expiration_year: Integer,
              idempotency_key: T.nilable(String),
              last4: String,
              status: Increase::Models::Card::Status::TaggedSymbol,
              type: Increase::Models::Card::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class BillingAddress < Increase::BaseModel
        # The city of the billing address.
        sig { returns(T.nilable(String)) }
        def city
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_)
        end

        # The first line of the billing address.
        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        # The second line of the billing address.
        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        # The postal code of the billing address.
        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        # The US state of the billing address.
        sig { returns(T.nilable(String)) }
        def state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_)
        end

        # The Card's billing address.
        sig do
          params(
            city: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(city:, line1:, line2:, postal_code:, state:)
        end

        sig do
          override
            .returns(
              {
                city: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                postal_code: T.nilable(String),
                state: T.nilable(String)
              }
            )
        end
        def to_hash
        end
      end

      class DigitalWallet < Increase::BaseModel
        # The digital card profile assigned to this digital card. Card profiles may also
        #   be assigned at the program level.
        sig { returns(T.nilable(String)) }
        def digital_card_profile_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def digital_card_profile_id=(_)
        end

        # An email address that can be used to verify the cardholder via one-time passcode
        #   over email.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_)
        end

        # A phone number that can be used to verify the cardholder via one-time passcode
        #   over SMS.
        sig { returns(T.nilable(String)) }
        def phone
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_)
        end

        # The contact information used in the two-factor steps for digital wallet card
        #   creation. At least one field must be present to complete the digital wallet
        #   steps.
        sig do
          params(
            digital_card_profile_id: T.nilable(String),
            email: T.nilable(String),
            phone: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(digital_card_profile_id:, email:, phone:)
        end

        sig do
          override
            .returns({
                       digital_card_profile_id: T.nilable(String),
                       email: T.nilable(String),
                       phone: T.nilable(String)
                     })
        end
        def to_hash
        end
      end

      # This indicates if payments can be made with the card.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Card::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Card::Status::TaggedSymbol) }

        # The card is active.
        ACTIVE = T.let(:active, Increase::Models::Card::Status::TaggedSymbol)

        # The card is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::Card::Status::TaggedSymbol)

        # The card is permanently canceled.
        CANCELED = T.let(:canceled, Increase::Models::Card::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::Card::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `card`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Card::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Card::Type::TaggedSymbol) }

        CARD = T.let(:card, Increase::Models::Card::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::Card::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
