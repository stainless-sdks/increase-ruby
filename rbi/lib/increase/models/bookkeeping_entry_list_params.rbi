# typed: strong

module Increase
  module Models
    class BookkeepingEntryListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier for the Bookkeeping Account to filter by.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig do
        params(
          account_id: String,
          cursor: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(account_id: nil, cursor: nil, limit: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     account_id: String,
                     cursor: String,
                     limit: Integer,
                     request_options: Increase::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
