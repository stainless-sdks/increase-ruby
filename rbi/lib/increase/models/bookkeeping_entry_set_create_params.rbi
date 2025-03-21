# typed: strong

module Increase
  module Models
    class BookkeepingEntrySetCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The bookkeeping entries.
      sig { returns(T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry]) }
      def entries
      end

      sig do
        params(_: T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry])
          .returns(T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry])
      end
      def entries=(_)
      end

      # The date of the transaction. Optional if `transaction_id` is provided, in which
      #   case we use the `date` of that transaction. Required otherwise.
      sig { returns(T.nilable(Time)) }
      def date
      end

      sig { params(_: Time).returns(Time) }
      def date=(_)
      end

      # The identifier of the Transaction related to this entry set, if any.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: String).returns(String) }
      def transaction_id=(_)
      end

      sig do
        params(
          entries: T::Array[Increase::Models::BookkeepingEntrySetCreateParams::Entry],
          date: Time,
          transaction_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(entries:, date: nil, transaction_id: nil, request_options: {})
      end

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
      def to_hash
      end

      class Entry < Increase::BaseModel
        # The identifier for the Bookkeeping Account impacted by this entry.
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # The entry amount in the minor unit of the account currency. For dollars, for
        #   example, this is cents. Debit entries have positive amounts; credit entries have
        #   negative amounts.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { params(account_id: String, amount: Integer).returns(T.attached_class) }
        def self.new(account_id:, amount:)
        end

        sig { override.returns({account_id: String, amount: Integer}) }
        def to_hash
        end
      end
    end
  end
end
