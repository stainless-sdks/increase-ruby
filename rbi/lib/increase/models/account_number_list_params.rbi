# typed: strong

module Increase
  module Models
    class AccountNumberListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//account_numbers/get/parameters/4/schema
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Increase::Models::AccountNumberListParams::ACHDebitStatus)) }
      attr_reader :ach_debit_status

      sig do
        params(
          ach_debit_status: T.any(Increase::Models::AccountNumberListParams::ACHDebitStatus, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :ach_debit_status

      sig { returns(T.nilable(Increase::Models::AccountNumberListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(
          created_at: T.any(Increase::Models::AccountNumberListParams::CreatedAt, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :created_at

      # #/paths//account_numbers/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//account_numbers/get/parameters/9/schema
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # #/paths//account_numbers/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::AccountNumberListParams::Status)) }
      attr_reader :status

      sig { params(status: T.any(Increase::Models::AccountNumberListParams::Status, Increase::Internal::AnyHash)).void }
      attr_writer :status

      sig do
        params(
          account_id: String,
          ach_debit_status: T.any(Increase::Models::AccountNumberListParams::ACHDebitStatus, Increase::Internal::AnyHash),
          created_at: T.any(Increase::Models::AccountNumberListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::AccountNumberListParams::Status, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id: nil,
        ach_debit_status: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              account_id: String,
              ach_debit_status: Increase::Models::AccountNumberListParams::ACHDebitStatus,
              created_at: Increase::Models::AccountNumberListParams::CreatedAt,
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              status: Increase::Models::AccountNumberListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class ACHDebitStatus < Increase::Internal::Type::BaseModel
        # #/paths//account_numbers/get/parameters/3/schema
        sig { returns(T.nilable(T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//account_numbers/get/parameters/3/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumberListParams::ACHDebitStatus::In::TaggedSymbol) }

          # ACH Debits are allowed.
          ALLOWED = T.let(:allowed, Increase::Models::AccountNumberListParams::ACHDebitStatus::In::TaggedSymbol)

          # ACH Debits are blocked.
          BLOCKED = T.let(:blocked, Increase::Models::AccountNumberListParams::ACHDebitStatus::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::TaggedSymbol]) }
          def self.values; end
        end
      end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # #/paths//account_numbers/get/parameters/5/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # #/paths//account_numbers/get/parameters/6/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # #/paths//account_numbers/get/parameters/7/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # #/paths//account_numbers/get/parameters/8/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil); end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash; end
      end

      class Status < Increase::Internal::Type::BaseModel
        # #/paths//account_numbers/get/parameters/2/schema
        sig { returns(T.nilable(T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//account_numbers/get/parameters/2/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumberListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol) }

          # The account number is active.
          ACTIVE = T.let(:active, Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol)

          # The account number is temporarily disabled.
          DISABLED = T.let(:disabled, Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol)

          # The account number is permanently disabled.
          CANCELED = T.let(:canceled, Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
