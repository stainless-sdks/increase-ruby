# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::WireTransfersTest < Increase::Test::ResourceTest
  def test_create_required_params
    response =
      @client.wire_transfers.create(
        account_id: "account_in71c4amph0vgo2qllky",
        amount: 100,
        beneficiary_name: "Ian Crease",
        message_to_recipient: "New account transfer"
      )

    assert_pattern do
      response => Increase::WireTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        amount: Integer,
        approval: Increase::WireTransfer::Approval | nil,
        beneficiary_address_line1: String | nil,
        beneficiary_address_line2: String | nil,
        beneficiary_address_line3: String | nil,
        beneficiary_name: String | nil,
        cancellation: Increase::WireTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::WireTransfer::CreatedBy | nil,
        currency: Increase::WireTransfer::Currency,
        external_account_id: String | nil,
        idempotency_key: String | nil,
        message_to_recipient: String | nil,
        network: Increase::WireTransfer::Network,
        originator_address_line1: String | nil,
        originator_address_line2: String | nil,
        originator_address_line3: String | nil,
        originator_name: String | nil,
        pending_transaction_id: String | nil,
        reversal: Increase::WireTransfer::Reversal | nil,
        routing_number: String,
        source_account_number_id: String | nil,
        status: Increase::WireTransfer::Status,
        submission: Increase::WireTransfer::Submission | nil,
        transaction_id: String | nil,
        type: Increase::WireTransfer::Type
      }
    end
  end

  def test_retrieve
    response = @client.wire_transfers.retrieve("wire_transfer_id")

    assert_pattern do
      response => Increase::WireTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        amount: Integer,
        approval: Increase::WireTransfer::Approval | nil,
        beneficiary_address_line1: String | nil,
        beneficiary_address_line2: String | nil,
        beneficiary_address_line3: String | nil,
        beneficiary_name: String | nil,
        cancellation: Increase::WireTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::WireTransfer::CreatedBy | nil,
        currency: Increase::WireTransfer::Currency,
        external_account_id: String | nil,
        idempotency_key: String | nil,
        message_to_recipient: String | nil,
        network: Increase::WireTransfer::Network,
        originator_address_line1: String | nil,
        originator_address_line2: String | nil,
        originator_address_line3: String | nil,
        originator_name: String | nil,
        pending_transaction_id: String | nil,
        reversal: Increase::WireTransfer::Reversal | nil,
        routing_number: String,
        source_account_number_id: String | nil,
        status: Increase::WireTransfer::Status,
        submission: Increase::WireTransfer::Submission | nil,
        transaction_id: String | nil,
        type: Increase::WireTransfer::Type
      }
    end
  end

  def test_list
    response = @client.wire_transfers.list

    assert_pattern do
      response => Increase::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::WireTransfer
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        account_number: String,
        amount: Integer,
        approval: Increase::WireTransfer::Approval | nil,
        beneficiary_address_line1: String | nil,
        beneficiary_address_line2: String | nil,
        beneficiary_address_line3: String | nil,
        beneficiary_name: String | nil,
        cancellation: Increase::WireTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::WireTransfer::CreatedBy | nil,
        currency: Increase::WireTransfer::Currency,
        external_account_id: String | nil,
        idempotency_key: String | nil,
        message_to_recipient: String | nil,
        network: Increase::WireTransfer::Network,
        originator_address_line1: String | nil,
        originator_address_line2: String | nil,
        originator_address_line3: String | nil,
        originator_name: String | nil,
        pending_transaction_id: String | nil,
        reversal: Increase::WireTransfer::Reversal | nil,
        routing_number: String,
        source_account_number_id: String | nil,
        status: Increase::WireTransfer::Status,
        submission: Increase::WireTransfer::Submission | nil,
        transaction_id: String | nil,
        type: Increase::WireTransfer::Type
      }
    end
  end

  def test_approve
    response = @client.wire_transfers.approve("wire_transfer_id")

    assert_pattern do
      response => Increase::WireTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        amount: Integer,
        approval: Increase::WireTransfer::Approval | nil,
        beneficiary_address_line1: String | nil,
        beneficiary_address_line2: String | nil,
        beneficiary_address_line3: String | nil,
        beneficiary_name: String | nil,
        cancellation: Increase::WireTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::WireTransfer::CreatedBy | nil,
        currency: Increase::WireTransfer::Currency,
        external_account_id: String | nil,
        idempotency_key: String | nil,
        message_to_recipient: String | nil,
        network: Increase::WireTransfer::Network,
        originator_address_line1: String | nil,
        originator_address_line2: String | nil,
        originator_address_line3: String | nil,
        originator_name: String | nil,
        pending_transaction_id: String | nil,
        reversal: Increase::WireTransfer::Reversal | nil,
        routing_number: String,
        source_account_number_id: String | nil,
        status: Increase::WireTransfer::Status,
        submission: Increase::WireTransfer::Submission | nil,
        transaction_id: String | nil,
        type: Increase::WireTransfer::Type
      }
    end
  end

  def test_cancel
    response = @client.wire_transfers.cancel("wire_transfer_id")

    assert_pattern do
      response => Increase::WireTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        amount: Integer,
        approval: Increase::WireTransfer::Approval | nil,
        beneficiary_address_line1: String | nil,
        beneficiary_address_line2: String | nil,
        beneficiary_address_line3: String | nil,
        beneficiary_name: String | nil,
        cancellation: Increase::WireTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::WireTransfer::CreatedBy | nil,
        currency: Increase::WireTransfer::Currency,
        external_account_id: String | nil,
        idempotency_key: String | nil,
        message_to_recipient: String | nil,
        network: Increase::WireTransfer::Network,
        originator_address_line1: String | nil,
        originator_address_line2: String | nil,
        originator_address_line3: String | nil,
        originator_name: String | nil,
        pending_transaction_id: String | nil,
        reversal: Increase::WireTransfer::Reversal | nil,
        routing_number: String,
        source_account_number_id: String | nil,
        status: Increase::WireTransfer::Status,
        submission: Increase::WireTransfer::Submission | nil,
        transaction_id: String | nil,
        type: Increase::WireTransfer::Type
      }
    end
  end
end
