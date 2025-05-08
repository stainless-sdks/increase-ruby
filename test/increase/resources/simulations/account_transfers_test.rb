# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::AccountTransfersTest < Increase::Test::ResourceTest
  def test_complete
    response = @increase.simulations.account_transfers.complete("account_transfer_id")

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
