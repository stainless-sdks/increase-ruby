# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountTransfersTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.account_transfers.create(
      account_id: "account_in71c4amph0vgo2qllky",
      amount: 100,
      description: "Creating liquidity",
      destination_account_id: "account_uf16sut2ct5bevmq3eh"
    )

    assert_pattern do
      response => Increase::Models::AccountTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        approval: Increase::Models::AccountTransfer::Approval | nil,
        cancellation: Increase::Models::AccountTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::Models::AccountTransfer::CreatedBy | nil,
        currency: Increase::Models::AccountTransfer::Currency,
        description: String,
        destination_account_id: String,
        destination_transaction_id: String | nil,
        idempotency_key: String | nil,
        network: Increase::Models::AccountTransfer::Network,
        pending_transaction_id: String | nil,
        status: Increase::Models::AccountTransfer::Status,
        transaction_id: String | nil,
        type: Increase::Models::AccountTransfer::Type
      }
    end
  end

  def test_retrieve
    response = @increase.account_transfers.retrieve("account_transfer_id")

    assert_pattern do
      response => Increase::Models::AccountTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        approval: Increase::Models::AccountTransfer::Approval | nil,
        cancellation: Increase::Models::AccountTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::Models::AccountTransfer::CreatedBy | nil,
        currency: Increase::Models::AccountTransfer::Currency,
        description: String,
        destination_account_id: String,
        destination_transaction_id: String | nil,
        idempotency_key: String | nil,
        network: Increase::Models::AccountTransfer::Network,
        pending_transaction_id: String | nil,
        status: Increase::Models::AccountTransfer::Status,
        transaction_id: String | nil,
        type: Increase::Models::AccountTransfer::Type
      }
    end
  end

  def test_list
    response = @increase.account_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::AccountTransfer
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        amount: Integer,
        approval: Increase::Models::AccountTransfer::Approval | nil,
        cancellation: Increase::Models::AccountTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::Models::AccountTransfer::CreatedBy | nil,
        currency: Increase::Models::AccountTransfer::Currency,
        description: String,
        destination_account_id: String,
        destination_transaction_id: String | nil,
        idempotency_key: String | nil,
        network: Increase::Models::AccountTransfer::Network,
        pending_transaction_id: String | nil,
        status: Increase::Models::AccountTransfer::Status,
        transaction_id: String | nil,
        type: Increase::Models::AccountTransfer::Type
      }
    end
  end

  def test_approve
    response = @increase.account_transfers.approve("account_transfer_id")

    assert_pattern do
      response => Increase::Models::AccountTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        approval: Increase::Models::AccountTransfer::Approval | nil,
        cancellation: Increase::Models::AccountTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::Models::AccountTransfer::CreatedBy | nil,
        currency: Increase::Models::AccountTransfer::Currency,
        description: String,
        destination_account_id: String,
        destination_transaction_id: String | nil,
        idempotency_key: String | nil,
        network: Increase::Models::AccountTransfer::Network,
        pending_transaction_id: String | nil,
        status: Increase::Models::AccountTransfer::Status,
        transaction_id: String | nil,
        type: Increase::Models::AccountTransfer::Type
      }
    end
  end

  def test_cancel
    response = @increase.account_transfers.cancel("account_transfer_id")

    assert_pattern do
      response => Increase::Models::AccountTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        approval: Increase::Models::AccountTransfer::Approval | nil,
        cancellation: Increase::Models::AccountTransfer::Cancellation | nil,
        created_at: Time,
        created_by: Increase::Models::AccountTransfer::CreatedBy | nil,
        currency: Increase::Models::AccountTransfer::Currency,
        description: String,
        destination_account_id: String,
        destination_transaction_id: String | nil,
        idempotency_key: String | nil,
        network: Increase::Models::AccountTransfer::Network,
        pending_transaction_id: String | nil,
        status: Increase::Models::AccountTransfer::Status,
        transaction_id: String | nil,
        type: Increase::Models::AccountTransfer::Type
      }
    end
  end
end
