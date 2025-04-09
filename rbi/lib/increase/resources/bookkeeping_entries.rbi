# typed: strong

module Increase
  module Resources
    class BookkeepingEntries
      # Retrieve a Bookkeeping Entry
      sig do
        params(
          bookkeeping_entry_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::BookkeepingEntry)
      end
      def retrieve(
        # #/paths//bookkeeping_entries/{bookkeeping_entry_id}/get/parameters/0/schema
        bookkeeping_entry_id,
        request_options: {}
      ); end
      # List Bookkeeping Entries
      sig do
        params(
          account_id: String,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::BookkeepingEntry])
      end
      def list(
        # #/paths//bookkeeping_entries/get/parameters/2/schema
        account_id: nil,
        # #/paths//bookkeeping_entries/get/parameters/0/schema
        cursor: nil,
        # #/paths//bookkeeping_entries/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
