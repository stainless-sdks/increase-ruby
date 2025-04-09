# typed: strong

module Increase
  module Resources
    class BookkeepingEntrySets
      # Create a Bookkeeping Entry Set
      sig do
        params(
          entries: T::Array[T.any(Increase::Models::BookkeepingEntrySetCreateParams::Entry, Increase::Internal::AnyHash)],
          date: Time,
          transaction_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::BookkeepingEntrySet)
      end
      def create(
        # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries
        entries:,
        # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/date
        date: nil,
        # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/transaction_id
        transaction_id: nil,
        request_options: {}
      ); end
      # Retrieve a Bookkeeping Entry Set
      sig do
        params(
          bookkeeping_entry_set_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::BookkeepingEntrySet)
      end
      def retrieve(
        # #/paths//bookkeeping_entry_sets/{bookkeeping_entry_set_id}/get/parameters/0/schema
        bookkeeping_entry_set_id,
        request_options: {}
      ); end
      # List Bookkeeping Entry Sets
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          transaction_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::BookkeepingEntrySet])
      end
      def list(
        # #/paths//bookkeeping_entry_sets/get/parameters/0/schema
        cursor: nil,
        # #/paths//bookkeeping_entry_sets/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//bookkeeping_entry_sets/get/parameters/1/schema
        limit: nil,
        # #/paths//bookkeeping_entry_sets/get/parameters/2/schema
        transaction_id: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
