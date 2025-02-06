# typed: strong

module Increase
  module Models
    class AccountNumberListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :ach_debit_status

      sig { params(ach_debit_status: Symbol).void }
      attr_writer :ach_debit_status

      sig { returns(T.nilable(Increase::Models::AccountNumberListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::Models::AccountNumberListParams::CreatedAt).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          account_id: String,
          ach_debit_status: Symbol,
          created_at: Increase::Models::AccountNumberListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        account_id: nil,
        ach_debit_status: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            ach_debit_status: Symbol,
            created_at: Increase::Models::AccountNumberListParams::CreatedAt,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            status: Symbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ACHDebitStatus < Increase::Enum
        abstract!

        # ACH Debits are allowed.
        ALLOWED = :allowed

        # ACH Debits are blocked.
        BLOCKED = :blocked

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class CreatedAt < Increase::BaseModel
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).void }
        def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end

      class Status < Increase::Enum
        abstract!

        # The account number is active.
        ACTIVE = :active

        # The account number is temporarily disabled.
        DISABLED = :disabled

        # The account number is permanently disabled.
        CANCELED = :canceled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
