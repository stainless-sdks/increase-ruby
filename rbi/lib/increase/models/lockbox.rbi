# typed: strong

module Increase
  module Models
    class Lockbox < Increase::BaseModel
      # The Lockbox identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the Account checks sent to this lockbox will be deposited
      #   into.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The mailing address for the Lockbox.
      sig { returns(Increase::Models::Lockbox::Address) }
      def address
      end

      sig do
        params(_: T.any(Increase::Models::Lockbox::Address, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::Lockbox::Address, Increase::Util::AnyHash))
      end
      def address=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Lockbox
      #   was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The description you choose for the Lockbox.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
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

      # The recipient name you choose for the Lockbox.
      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_name=(_)
      end

      # This indicates if mail can be sent to this address.
      sig { returns(Increase::Models::Lockbox::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::Lockbox::Status::TaggedSymbol)
          .returns(Increase::Models::Lockbox::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `lockbox`.
      sig { returns(Increase::Models::Lockbox::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::Lockbox::Type::TaggedSymbol)
          .returns(Increase::Models::Lockbox::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Lockboxes are physical locations that can receive mail containing paper checks.
      #   Increase will automatically create a Check Deposit for checks received this way.
      sig do
        params(
          id: String,
          account_id: String,
          address: T.any(Increase::Models::Lockbox::Address, Increase::Util::AnyHash),
          created_at: Time,
          description: T.nilable(String),
          idempotency_key: T.nilable(String),
          recipient_name: T.nilable(String),
          status: Increase::Models::Lockbox::Status::TaggedSymbol,
          type: Increase::Models::Lockbox::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, address:, created_at:, description:, idempotency_key:, recipient_name:, status:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              address: Increase::Models::Lockbox::Address,
              created_at: Time,
              description: T.nilable(String),
              idempotency_key: T.nilable(String),
              recipient_name: T.nilable(String),
              status: Increase::Models::Lockbox::Status::TaggedSymbol,
              type: Increase::Models::Lockbox::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Address < Increase::BaseModel
        # The city of the address.
        sig { returns(String) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        # The first line of the address.
        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        # The second line of the address.
        sig { returns(String) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        # The postal code of the address.
        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        # The recipient line of the address. This will include the recipient name you
        #   provide when creating the address, as well as an ATTN suffix to help route the
        #   mail to your lockbox. Mail senders must include this ATTN line to receive mail
        #   at this Lockbox.
        sig { returns(T.nilable(String)) }
        def recipient
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def recipient=(_)
        end

        # The two-letter United States Postal Service (USPS) abbreviation for the state of
        #   the address.
        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        # The mailing address for the Lockbox.
        sig do
          params(
            city: String,
            line1: String,
            line2: String,
            postal_code: String,
            recipient: T.nilable(String),
            state: String
          )
            .returns(T.attached_class)
        end
        def self.new(city:, line1:, line2:, postal_code:, recipient:, state:)
        end

        sig do
          override
            .returns(
              {
                city: String,
                line1: String,
                line2: String,
                postal_code: String,
                recipient: T.nilable(String),
                state: String
              }
            )
        end
        def to_hash
        end
      end

      # This indicates if mail can be sent to this address.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Lockbox::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Lockbox::Status::TaggedSymbol) }

        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = T.let(:active, Increase::Models::Lockbox::Status::TaggedSymbol)

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = T.let(:inactive, Increase::Models::Lockbox::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::Lockbox::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `lockbox`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Lockbox::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Lockbox::Type::TaggedSymbol) }

        LOCKBOX = T.let(:lockbox, Increase::Models::Lockbox::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::Lockbox::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
