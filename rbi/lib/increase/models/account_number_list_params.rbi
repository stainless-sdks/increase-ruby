# typed: strong

module Increase
  module Models
    class AccountNumberListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def ach_debit_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ach_debit_status=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountNumberListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::AccountNumberListParams::CreatedAt).returns(Increase::Models::AccountNumberListParams::CreatedAt)
      end
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

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
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

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
