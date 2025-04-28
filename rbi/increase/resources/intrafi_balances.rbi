# typed: strong

module Increase
  module Resources
    class IntrafiBalances
      # Get IntraFi balances by bank
      sig do
        params(account_id: String, request_options: Increase::RequestOpts)
          .returns(Increase::Models::IntrafiBalance)
      end
      def intrafi_balance(
        # The identifier of the Account to get balances for.
        account_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
