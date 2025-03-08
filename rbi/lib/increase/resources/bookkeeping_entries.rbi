# typed: strong

module Increase
  module Resources
    class BookkeepingEntries
      sig do
        params(
            bookkeeping_entry_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::BookkeepingEntry)
      end
      def retrieve(bookkeeping_entry_id, request_options: {})
      end

      sig do
        params(
            account_id: String,
            cursor: String,
            limit: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::BookkeepingEntry])
      end
      def list(account_id: nil, cursor: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
