# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimePaymentsTransfersTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.real_time_payments_transfers.create(
      amount: 100,
      creditor_name: "Ian Crease",
      remittance_information: "Invoice 29582",
      source_account_number_id: "account_number_v18nkfqm6afpsrvy82b2"
    )

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

  def test_retrieve
    response = @increase.real_time_payments_transfers.retrieve("real_time_payments_transfer_id")

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

  def test_list
    response = @increase.real_time_payments_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::RealTimePaymentsTransfer
    end

    assert_pattern do
      row => {
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
