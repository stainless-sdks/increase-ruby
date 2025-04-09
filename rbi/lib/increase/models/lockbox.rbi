# typed: strong

module Increase
  module Models
    class Lockbox < Increase::Internal::Type::BaseModel
      # #/components/schemas/lockbox/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/lockbox/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/lockbox/properties/address
      sig { returns(Increase::Models::Lockbox::Address) }
      attr_reader :address

      sig { params(address: T.any(Increase::Models::Lockbox::Address, Increase::Internal::AnyHash)).void }
      attr_writer :address

      # #/components/schemas/lockbox/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/lockbox/properties/description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # #/components/schemas/lockbox/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/lockbox/properties/recipient_name
      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      # #/components/schemas/lockbox/properties/status
      sig { returns(Increase::Models::Lockbox::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/lockbox/properties/type
      sig { returns(Increase::Models::Lockbox::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/lockbox
      sig do
        params(
          id: String,
          account_id: String,
          address: T.any(Increase::Models::Lockbox::Address, Increase::Internal::AnyHash),
          created_at: Time,
          description: T.nilable(String),
          idempotency_key: T.nilable(String),
          recipient_name: T.nilable(String),
          status: Increase::Models::Lockbox::Status::OrSymbol,
          type: Increase::Models::Lockbox::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        address:,
        created_at:,
        description:,
        idempotency_key:,
        recipient_name:,
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
      def to_hash; end

      class Address < Increase::Internal::Type::BaseModel
        # #/components/schemas/lockbox/properties/address/properties/city
        sig { returns(String) }
        attr_accessor :city

        # #/components/schemas/lockbox/properties/address/properties/line1
        sig { returns(String) }
        attr_accessor :line1

        # #/components/schemas/lockbox/properties/address/properties/line2
        sig { returns(String) }
        attr_accessor :line2

        # #/components/schemas/lockbox/properties/address/properties/postal_code
        sig { returns(String) }
        attr_accessor :postal_code

        # #/components/schemas/lockbox/properties/address/properties/recipient
        sig { returns(T.nilable(String)) }
        attr_accessor :recipient

        # #/components/schemas/lockbox/properties/address/properties/state
        sig { returns(String) }
        attr_accessor :state

        # #/components/schemas/lockbox/properties/address
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
        def self.new(city:, line1:, line2:, postal_code:, recipient:, state:); end

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
        def to_hash; end
      end

      # #/components/schemas/lockbox/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Lockbox::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Lockbox::Status::TaggedSymbol) }

        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = T.let(:active, Increase::Models::Lockbox::Status::TaggedSymbol)

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = T.let(:inactive, Increase::Models::Lockbox::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Lockbox::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/lockbox/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Lockbox::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Lockbox::Type::TaggedSymbol) }

        LOCKBOX = T.let(:lockbox, Increase::Models::Lockbox::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Lockbox::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
