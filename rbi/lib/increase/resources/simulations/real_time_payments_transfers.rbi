# typed: strong

module Increase
  module Resources
    class Simulations
      class RealTimePaymentsTransfers
        # Simulates submission of a
        #   [Real-Time Payments Transfer](#real-time-payments-transfers) and handling the
        #   response from the destination financial institution. This transfer must first
        #   have a `status` of `pending_submission`.
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

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
