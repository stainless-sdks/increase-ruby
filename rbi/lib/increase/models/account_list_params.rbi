# typed: strong

module Increase
  module Models
    class AccountListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::AccountListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: T.any(Increase::Models::AccountListParams::CreatedAt, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountListParams::CreatedAt, Increase::Util::AnyHash))
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

      # Filter Accounts for those belonging to the specified Entity.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
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

      # Filter Accounts for those belonging to the specified Entity as informational.
      sig { returns(T.nilable(String)) }
      def informational_entity_id
      end

      sig { params(_: String).returns(String) }
      def informational_entity_id=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      # Filter Accounts for those in a specific Program.
      sig { returns(T.nilable(String)) }
      def program_id
      end

      sig { params(_: String).returns(String) }
      def program_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountListParams::Status)) }
      def status
      end

      sig do
        params(_: T.any(Increase::Models::AccountListParams::Status, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountListParams::Status, Increase::Util::AnyHash))
      end
      def status=(_)
      end

      sig do
        params(
          created_at: Increase::Models::AccountListParams::CreatedAt,
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          informational_entity_id: String,
          limit: Integer,
          program_id: String,
          status: Increase::Models::AccountListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at: nil,
        cursor: nil,
        entity_id: nil,
        idempotency_key: nil,
        informational_entity_id: nil,
        limit: nil,
        program_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              created_at: Increase::Models::AccountListParams::CreatedAt,
              cursor: String,
              entity_id: String,
              idempotency_key: String,
              informational_entity_id: String,
              limit: Integer,
              program_id: String,
              status: Increase::Models::AccountListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
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
        # Filter Accounts for those with the specified status. For GET requests, this
        #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig { params(in_: T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol]).returns(T.attached_class) }
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountListParams::Status::In) }
          OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::AccountListParams::Status::In::TaggedSymbol) }

          # Closed Accounts on which no new activity can occur.
          CLOSED = T.let(:closed, Increase::Models::AccountListParams::Status::In::TaggedSymbol)

          # Open Accounts that are ready to use.
          OPEN = T.let(:open, Increase::Models::AccountListParams::Status::In::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::AccountListParams::Status::In::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
