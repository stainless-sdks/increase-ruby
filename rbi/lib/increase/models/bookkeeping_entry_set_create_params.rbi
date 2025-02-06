# typed: strong

module Increase
  module Models
    class BookkeepingEntrySetCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry]) }
      attr_accessor :entries

      sig { returns(T.nilable(Time)) }
      attr_reader :date

      sig { params(date: Time).void }
      attr_writer :date

      sig { returns(T.nilable(String)) }
      attr_reader :transaction_id

      sig { params(transaction_id: String).void }
      attr_writer :transaction_id

      sig do
        params(
          entries: T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry],
          date: Time,
          transaction_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(entries:, date: nil, transaction_id: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            entries: T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry],
            date: Time,
            transaction_id: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Entry < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :account_id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { params(account_id: String, amount: Integer).void }
        def initialize(account_id:, amount:)
        end

        sig { override.returns({account_id: String, amount: Integer}) }
        def to_hash
        end
      end
    end
  end
end
