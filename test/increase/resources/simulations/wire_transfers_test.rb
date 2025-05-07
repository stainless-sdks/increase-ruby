# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::WireTransfersTest < Increase::Test::ResourceTest
  def test_reverse
    response = @increase.simulations.wire_transfers.reverse("wire_transfer_id")

    assert_pattern do
      response => Increase::Models::WireTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        amount: Integer,
        approval: Increase::Models::WireTransfer::Approval | nil,
        beneficiary_address_line1: String | nil,
        beneficiary_address_line2: String | nil,
        beneficiary_address_line3: String | nil,
        beneficiary_name: String | nil,
        cancellation: Increase::Models::WireTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::Models::WireTransfer::CreatedBy | nil,
        currency: Increase::Models::WireTransfer::Currency,
        external_account_id: String | nil,
        idempotency_key: String | nil,
        message_to_recipient: String | nil,
        network: Increase::Models::WireTransfer::Network,
        originator_address_line1: String | nil,
        originator_address_line2: String | nil,
        originator_address_line3: String | nil,
        originator_name: String | nil,
        pending_transaction_id: String | nil,
        reversal: Increase::Models::WireTransfer::Reversal | nil,
        routing_number: String,
        source_account_number_id: String | nil,
        status: Increase::Models::WireTransfer::Status,
        submission: Increase::Models::WireTransfer::Submission | nil,
        transaction_id: String | nil,
        type: Increase::Models::WireTransfer::Type
      }
    end
  end

  def test_submit
    response = @increase.simulations.wire_transfers.submit("wire_transfer_id")

    assert_pattern do
      response => Increase::Models::WireTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        amount: Integer,
        approval: Increase::Models::WireTransfer::Approval | nil,
        beneficiary_address_line1: String | nil,
        beneficiary_address_line2: String | nil,
        beneficiary_address_line3: String | nil,
        beneficiary_name: String | nil,
        cancellation: Increase::Models::WireTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::Models::WireTransfer::CreatedBy | nil,
        currency: Increase::Models::WireTransfer::Currency,
        external_account_id: String | nil,
        idempotency_key: String | nil,
        message_to_recipient: String | nil,
        network: Increase::Models::WireTransfer::Network,
        originator_address_line1: String | nil,
        originator_address_line2: String | nil,
        originator_address_line3: String | nil,
        originator_name: String | nil,
        pending_transaction_id: String | nil,
        reversal: Increase::Models::WireTransfer::Reversal | nil,
        routing_number: String,
        source_account_number_id: String | nil,
        status: Increase::Models::WireTransfer::Status,
        submission: Increase::Models::WireTransfer::Submission | nil,
        transaction_id: String | nil,
        type: Increase::Models::WireTransfer::Type
      }
    end
  end
end
