# typed: strong

module Increase
  module Models
    class AccountTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier for the account that will send the transfer.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The transfer amount in the minor unit of the account currency. For dollars, for
      #   example, this is cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The description you choose to give the transfer.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The identifier for the account that will receive the transfer.
      sig { returns(String) }
      def destination_account_id
      end

      sig { params(_: String).returns(String) }
      def destination_account_id=(_)
      end

      # Whether the transfer requires explicit approval via the dashboard or API.
      sig { returns(T.nilable(T::Boolean)) }
      def require_approval
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def require_approval=(_)
      end

      sig do
        params(
          account_id: String,
          amount: Integer,
          description: String,
          destination_account_id: String,
          require_approval: T::Boolean,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(account_id:, amount:, description:, destination_account_id:, require_approval: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              amount: Integer,
              description: String,
              destination_account_id: String,
              require_approval: T::Boolean,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
