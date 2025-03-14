# typed: strong

module Increase
  module Resources
    class IntrafiBalances
      # Get IntraFi balances by bank
      sig do
        params(
          account_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::IntrafiBalance)
      end
      def intrafi_balance(account_id, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
