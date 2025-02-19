# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundRealTimePaymentsTransfers
        sig do
          params(
            account_number_id: String,
            amount: Integer,
            debtor_account_number: String,
            debtor_name: String,
            debtor_routing_number: String,
            remittance_information: String,
            request_for_payment_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::InboundRealTimePaymentsTransfer)
        end
        def create(
          account_number_id:,
          amount:,
          debtor_account_number: nil,
          debtor_name: nil,
          debtor_routing_number: nil,
          remittance_information: nil,
          request_for_payment_id: nil,
          request_options: {}
        )
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
