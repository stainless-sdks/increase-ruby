# typed: strong

module Increase
  module Resources
    class BookkeepingEntrySets
      sig do
        params(
          entries: T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry],
          date: Time,
          transaction_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::BookkeepingEntrySet)
      end
      def create(entries:, date: nil, transaction_id: nil, request_options: {})
      end

      sig do
        params(
          bookkeeping_entry_set_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::BookkeepingEntrySet)
      end
      def retrieve(bookkeeping_entry_set_id, request_options: {})
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          transaction_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::BookkeepingEntrySet])
      end
      def list(cursor: nil, idempotency_key: nil, limit: nil, transaction_id: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
