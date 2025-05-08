# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::RealTimePaymentsTransfersTest < Increase::Test::ResourceTest
  def test_complete
    response = @increase.simulations.real_time_payments_transfers.complete("real_time_payments_transfer_id")

    assert_pattern do
      response => Increase::Models::RealTimePaymentsTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        acknowledgement: Increase::Models::RealTimePaymentsTransfer::Acknowledgement | nil,
        amount: Integer,
        approval: Increase::Models::RealTimePaymentsTransfer::Approval | nil,
        cancellation: Increase::Models::RealTimePaymentsTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::Models::RealTimePaymentsTransfer::CreatedBy | nil,
        creditor_name: String,
        currency: Increase::Models::RealTimePaymentsTransfer::Currency,
        debtor_name: String | nil,
        destination_account_number: String,
        destination_routing_number: String,
        external_account_id: String | nil,
        idempotency_key: String | nil,
        pending_transaction_id: String | nil,
        rejection: Increase::Models::RealTimePaymentsTransfer::Rejection | nil,
        remittance_information: String,
        source_account_number_id: String,
        status: Increase::Models::RealTimePaymentsTransfer::Status,
        submission: Increase::Models::RealTimePaymentsTransfer::Submission | nil,
        transaction_id: String | nil,
        type: Increase::Models::RealTimePaymentsTransfer::Type,
        ultimate_creditor_name: String | nil,
        ultimate_debtor_name: String | nil
      }
    end
  end
end
