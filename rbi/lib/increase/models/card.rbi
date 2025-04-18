# typed: strong

module Increase
  module Models
    class Card < Increase::Internal::Type::BaseModel
      # The card identifier.
      sig { returns(String) }
      attr_accessor :id

      # The identifier for the account this card belongs to.
      sig { returns(String) }
      attr_accessor :account_id

      # The Card's billing address.
      sig { returns(Increase::Models::Card::BillingAddress) }
      attr_reader :billing_address

      sig { params(billing_address: T.any(Increase::Models::Card::BillingAddress, Increase::Internal::AnyHash)).void }
      attr_writer :billing_address

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      # the Card was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The card's description for display purposes.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The contact information used in the two-factor steps for digital wallet card
      # creation. At least one field must be present to complete the digital wallet
      # steps.
      sig { returns(T.nilable(Increase::Models::Card::DigitalWallet)) }
      attr_reader :digital_wallet

      sig do
        params(
          digital_wallet: T.nilable(T.any(Increase::Models::Card::DigitalWallet, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :digital_wallet

      # The identifier for the entity associated with this card.
      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      # The month the card expires in M format (e.g., August is 8).
      sig { returns(Integer) }
      attr_accessor :expiration_month

      # The year the card expires in YYYY format (e.g., 2025).
      sig { returns(Integer) }
      attr_accessor :expiration_year

      # The idempotency key you chose for this object. This value is unique across
      # Increase and is used to ensure that a request is only processed once. Learn more
      # about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # The last 4 digits of the Card's Primary Account Number.
      sig { returns(String) }
      attr_accessor :last4

      # This indicates if payments can be made with the card.
      sig { returns(Increase::Models::Card::Status::TaggedSymbol) }
      attr_accessor :status

      # A constant representing the object's type. For this resource it will always be
      # `card`.
      sig { returns(Increase::Models::Card::Type::TaggedSymbol) }
      attr_accessor :type

      # Cards are commercial credit cards. They'll immediately work for online purchases
      # after you create them. All cards maintain a credit limit of 100% of the
      # Account’s available balance at the time of transaction. Funds are deducted from
      # the Account upon transaction settlement.
      sig do
        params(
          id: String,
          account_id: String,
          billing_address: T.any(Increase::Models::Card::BillingAddress, Increase::Internal::AnyHash),
          created_at: Time,
          description: T.nilable(String),
          digital_wallet: T.nilable(T.any(Increase::Models::Card::DigitalWallet, Increase::Internal::AnyHash)),
          entity_id: T.nilable(String),
          expiration_month: Integer,
          expiration_year: Integer,
          idempotency_key: T.nilable(String),
          last4: String,
          status: Increase::Models::Card::Status::OrSymbol,
          type: Increase::Models::Card::Type::OrSymbol
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
      ); end
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
      def to_hash; end

      class BillingAddress < Increase::Internal::Type::BaseModel
        # The city of the billing address.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # The first line of the billing address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # The second line of the billing address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # The postal code of the billing address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # The US state of the billing address.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

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
        def self.new(city:, line1:, line2:, postal_code:, state:); end

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
        def to_hash; end
      end

      class DigitalWallet < Increase::Internal::Type::BaseModel
        # The digital card profile assigned to this digital card. Card profiles may also
        # be assigned at the program level.
        sig { returns(T.nilable(String)) }
        attr_accessor :digital_card_profile_id

        # An email address that can be used to verify the cardholder via one-time passcode
        # over email.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # A phone number that can be used to verify the cardholder via one-time passcode
        # over SMS.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # The contact information used in the two-factor steps for digital wallet card
        # creation. At least one field must be present to complete the digital wallet
        # steps.
        sig do
          params(
            digital_card_profile_id: T.nilable(String),
            email: T.nilable(String),
            phone: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(digital_card_profile_id:, email:, phone:); end

        sig do
          override
            .returns({
                       digital_card_profile_id: T.nilable(String),
                       email: T.nilable(String),
                       phone: T.nilable(String)
                     })
        end
        def to_hash; end
      end

      # This indicates if payments can be made with the card.
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Card::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The card is active.
        ACTIVE = T.let(:active, Increase::Models::Card::Status::TaggedSymbol)

        # The card is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::Card::Status::TaggedSymbol)

        # The card is permanently canceled.
        CANCELED = T.let(:canceled, Increase::Models::Card::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Card::Status::TaggedSymbol]) }
        def self.values; end
      end

      # A constant representing the object's type. For this resource it will always be
      # `card`.
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Card::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD = T.let(:card, Increase::Models::Card::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Card::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
