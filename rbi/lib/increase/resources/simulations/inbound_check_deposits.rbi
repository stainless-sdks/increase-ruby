# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundCheckDeposits
        sig do
          params(
            account_number_id: String,
            amount: Integer,
            check_number: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Increase::Models::InboundCheckDeposit)
        end
        def create(account_number_id:, amount:, check_number:, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
