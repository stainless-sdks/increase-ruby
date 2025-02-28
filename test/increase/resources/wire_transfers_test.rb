# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::WireTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.wire_transfers.create(
      account_id: "account_in71c4amph0vgo2qllky",
      amount: 100,
      beneficiary_name: "Ian Crease",
      message_to_recipient: "New account transfer"
    )

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

  def test_retrieve
    response = @increase.wire_transfers.retrieve("wire_transfer_id")

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

  def test_list
    response = @increase.wire_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::WireTransfer
    end

    assert_pattern do
      row => {
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

  def test_approve
    response = @increase.wire_transfers.approve("wire_transfer_id")

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

  def test_cancel
    response = @increase.wire_transfers.cancel("wire_transfer_id")

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
