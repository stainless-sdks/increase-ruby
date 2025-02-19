# typed: strong

module Increase
  module Resources
    class Simulations
      class RealTimePaymentsTransfers
        sig do
          params(
            real_time_payments_transfer_id: String,
            rejection: Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::RealTimePaymentsTransfer)
        end
        def complete(real_time_payments_transfer_id, rejection: nil, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
