# typed: strong

module Increase
  module Resources
    class Simulations
      class RealTimePaymentsTransfers
        # Simulates submission of a
        # [Real-Time Payments Transfer](#real-time-payments-transfers) and handling the
        # response from the destination financial institution. This transfer must first
        # have a `status` of `pending_submission`.
        sig do
          params(
            real_time_payments_transfer_id: String,
            rejection: T.any(
              Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection,
              Increase::Internal::AnyHash
            ),
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::RealTimePaymentsTransfer)
        end
        def complete(
          # #/paths//simulations/real_time_payments_transfers/{real_time_payments_transfer_id}/complete/post/parameters/0/schema
          real_time_payments_transfer_id,
          # #/components/schemas/sandbox_complete_a_real_time_payments_transfer_parameters/properties/rejection
          rejection: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
