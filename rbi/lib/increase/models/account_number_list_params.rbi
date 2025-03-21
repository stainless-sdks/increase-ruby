# typed: strong

module Increase
  module Models
    class AccountNumberListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Filter Account Numbers to those belonging to the specified Account.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountNumberListParams::ACHDebitStatus)) }
      def ach_debit_status
      end

      sig do
        params(_: T.any(Increase::Models::AccountNumberListParams::ACHDebitStatus, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountNumberListParams::ACHDebitStatus, Increase::Util::AnyHash))
      end
      def ach_debit_status=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountNumberListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: T.any(Increase::Models::AccountNumberListParams::CreatedAt, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountNumberListParams::CreatedAt, Increase::Util::AnyHash))
      end
      def created_at=(_)
      end

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      # Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountNumberListParams::Status)) }
      def status
      end

      sig do
        params(_: T.any(Increase::Models::AccountNumberListParams::Status, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountNumberListParams::Status, Increase::Util::AnyHash))
      end
      def status=(_)
      end

      sig do
        params(
          account_id: String,
          ach_debit_status: T.any(Increase::Models::AccountNumberListParams::ACHDebitStatus, Increase::Util::AnyHash),
          created_at: T.any(Increase::Models::AccountNumberListParams::CreatedAt, Increase::Util::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::AccountNumberListParams::Status, Increase::Util::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      class ACHDebitStatus < Increase::BaseModel
        # The ACH Debit status to retrieve Account Numbers for. For GET requests, this
        #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol])
            .returns(T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus::In::TaggedSymbol) }

          # ACH Debits are allowed.
          ALLOWED = T.let(:allowed, Increase::Models::AccountNumberListParams::ACHDebitStatus::In::TaggedSymbol)

          # ACH Debits are blocked.
          BLOCKED = T.let(:blocked, Increase::Models::AccountNumberListParams::ACHDebitStatus::In::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::AccountNumberListParams::ACHDebitStatus::In::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      class CreatedAt < Increase::BaseModel
        # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        # Return results on or after this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        # Return results on or before this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end

      class Status < Increase::BaseModel
        # The status to retrieve Account Numbers for. For GET requests, this should be
        #   encoded as a comma-delimited string, such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::AccountNumberListParams::Status::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumberListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol) }

          # The account number is active.
          ACTIVE = T.let(:active, Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol)

          # The account number is temporarily disabled.
          DISABLED = T.let(:disabled, Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol)

          # The account number is permanently disabled.
          CANCELED = T.let(:canceled, Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::AccountNumberListParams::Status::In::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
