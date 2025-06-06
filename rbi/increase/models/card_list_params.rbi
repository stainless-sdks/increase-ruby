# typed: strong

module Increase
  module Models
    class CardListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Increase::CardListParams, Increase::Internal::AnyHash)
        end

      # Filter Cards to ones belonging to the specified Account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Increase::CardListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(created_at: Increase::CardListParams::CreatedAt::OrHash).void
      end
      attr_writer :created_at

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Filter records to the one with the specified `idempotency_key` you chose for
      # that object. This value is unique across Increase and is used to ensure that a
      # request is only processed once. Learn more about
      # [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::CardListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::CardListParams::Status::OrHash).void }
      attr_writer :status

      sig do
        params(
          account_id: String,
          created_at: Increase::CardListParams::CreatedAt::OrHash,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::CardListParams::Status::OrHash,
          request_options: Increase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter Cards to ones belonging to the specified Account.
        account_id: nil,
        created_at: nil,
        # Return the page of entries after this one.
        cursor: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
        # that object. This value is unique across Increase and is used to ensure that a
        # request is only processed once. Learn more about
        # [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        # objects.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            created_at: Increase::CardListParams::CreatedAt,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            status: Increase::CardListParams::Status,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CreatedAt < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Increase::CardListParams::CreatedAt,
              Increase::Internal::AnyHash
            )
          end

        # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        # timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        # timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # Return results on or after this
        # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # Return results on or before this
        # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig do
          params(
            after: Time,
            before: Time,
            on_or_after: Time,
            on_or_before: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          # timestamp.
          after: nil,
          # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          # timestamp.
          before: nil,
          # Return results on or after this
          # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          on_or_after: nil,
          # Return results on or before this
          # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          on_or_before: nil
        )
        end

        sig do
          override.returns(
            { after: Time, before: Time, on_or_after: Time, on_or_before: Time }
          )
        end
        def to_hash
        end
      end

      class Status < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Increase::CardListParams::Status, Increase::Internal::AnyHash)
          end

        # Filter Cards by status. For GET requests, this should be encoded as a
        # comma-delimited string, such as `?in=one,two,three`.
        sig do
          returns(
            T.nilable(T::Array[Increase::CardListParams::Status::In::OrSymbol])
          )
        end
        attr_reader :in_

        sig do
          params(
            in_: T::Array[Increase::CardListParams::Status::In::OrSymbol]
          ).void
        end
        attr_writer :in_

        sig do
          params(
            in_: T::Array[Increase::CardListParams::Status::In::OrSymbol]
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter Cards by status. For GET requests, this should be encoded as a
          # comma-delimited string, such as `?in=one,two,three`.
          in_: nil
        )
        end

        sig do
          override.returns(
            { in_: T::Array[Increase::CardListParams::Status::In::OrSymbol] }
          )
        end
        def to_hash
        end

        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::CardListParams::Status::In) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # The card is active.
          ACTIVE =
            T.let(:active, Increase::CardListParams::Status::In::TaggedSymbol)

          # The card is temporarily disabled.
          DISABLED =
            T.let(:disabled, Increase::CardListParams::Status::In::TaggedSymbol)

          # The card is permanently canceled.
          CANCELED =
            T.let(:canceled, Increase::CardListParams::Status::In::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Increase::CardListParams::Status::In::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
