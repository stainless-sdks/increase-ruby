# typed: strong

module Increase
  module Models
    class BookkeepingEntrySetCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries
      sig { returns(T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry]) }
      attr_accessor :entries

      # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/date
      sig { returns(T.nilable(Time)) }
      attr_reader :date

      sig { params(date: Time).void }
      attr_writer :date

      # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/transaction_id
      sig { returns(T.nilable(String)) }
      attr_reader :transaction_id

      sig { params(transaction_id: String).void }
      attr_writer :transaction_id

      sig do
        params(
          entries: T::Array[T.any(Increase::Models::BookkeepingEntrySetCreateParams::Entry, Increase::Internal::AnyHash)],
          date: Time,
          transaction_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(entries:, date: nil, transaction_id: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              entries: T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry],
              date: Time,
              transaction_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class Entry < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries/items/properties/account_id
        sig { returns(String) }
        attr_accessor :account_id

        # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries/items/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries/items
        sig { params(account_id: String, amount: Integer).returns(T.attached_class) }
        def self.new(account_id:, amount:); end

        sig { override.returns({account_id: String, amount: Integer}) }
        def to_hash; end
      end
    end
  end
end
