# typed: strong

module Increase
  module Resources
    class Simulations
      class ACHTransfers
        # Simulates the acknowledgement of an [ACH Transfer](#ach-transfers) by the
        # Federal Reserve. This transfer must first have a `status` of `submitted` . In
        # production, the Federal Reserve generally acknowledges submitted ACH files
        # within 30 minutes. Since sandbox ACH Transfers are not submitted to the Federal
        # Reserve, this endpoint allows you to skip that delay and add the acknowledgment
        # subresource to the ACH Transfer.
        sig do
          params(
            ach_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::ACHTransfer)
        end
        def acknowledge(
          # #/paths//simulations/ach_transfers/{ach_transfer_id}/acknowledge/post/parameters/0/schema
          ach_transfer_id,
          request_options: {}
        ); end
        # Simulates receiving a Notification of Change for an
        # [ACH Transfer](#ach-transfers).
        sig do
          params(
            ach_transfer_id: String,
            change_code: Increase::Models::Simulations::ACHTransferCreateNotificationOfChangeParams::ChangeCode::OrSymbol,
            corrected_data: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::ACHTransfer)
        end
        def create_notification_of_change(
          # #/paths//simulations/ach_transfers/{ach_transfer_id}/create_notification_of_change/post/parameters/0/schema
          ach_transfer_id,
          # #/components/schemas/sandbox_create_a_notification_of_change_for_an_ach_transfer_parameters/properties/change_code
          change_code:,
          # #/components/schemas/sandbox_create_a_notification_of_change_for_an_ach_transfer_parameters/properties/corrected_data
          corrected_data:,
          request_options: {}
        ); end
        # Simulates the return of an [ACH Transfer](#ach-transfers) by the Federal Reserve
        # due to an error condition. This will also create a Transaction to account for
        # the returned funds. This transfer must first have a `status` of `submitted`.
        sig do
          params(
            ach_transfer_id: String,
            reason: Increase::Models::Simulations::ACHTransferReturnParams::Reason::OrSymbol,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::ACHTransfer)
        end
        def return_(
          # #/paths//simulations/ach_transfers/{ach_transfer_id}/return/post/parameters/0/schema
          ach_transfer_id,
          # #/components/schemas/sandbox_return_an_ach_transfer_parameters/properties/reason
          reason: nil,
          request_options: {}
        ); end
        # Simulates the settlement of an [ACH Transfer](#ach-transfers) by the Federal
        # Reserve. This transfer must first have a `status` of `pending_submission` or
        # `submitted`. For convenience, if the transfer is in `status`:
        # `pending_submission`, the simulation will also submit the transfer. Without this
        # simulation the transfer will eventually settle on its own following the same
        # Federal Reserve timeline as in production.
        sig do
          params(
            ach_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::ACHTransfer)
        end
        def settle(
          # #/paths//simulations/ach_transfers/{ach_transfer_id}/settle/post/parameters/0/schema
          ach_transfer_id,
          request_options: {}
        ); end
        # Simulates the submission of an [ACH Transfer](#ach-transfers) to the Federal
        # Reserve. This transfer must first have a `status` of `pending_approval` or
        # `pending_submission`. In production, Increase submits ACH Transfers to the
        # Federal Reserve three times per day on weekdays. Since sandbox ACH Transfers are
        # not submitted to the Federal Reserve, this endpoint allows you to skip that
        # delay and transition the ACH Transfer to a status of `submitted`.
        sig do
          params(
            ach_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::ACHTransfer)
        end
        def submit(
          # #/paths//simulations/ach_transfers/{ach_transfer_id}/submit/post/parameters/0/schema
          ach_transfer_id,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
