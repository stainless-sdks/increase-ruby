# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CheckTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_mail
    response = @increase.simulations.check_transfers.mail("check_transfer_id")

    assert_pattern do
      response => Increase::Models::CheckTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        amount: Integer,
        approval: Increase::Models::CheckTransfer::Approval | nil,
        approved_inbound_check_deposit_id: String | nil,
        cancellation: Increase::Models::CheckTransfer::Cancellation | nil,
        check_number: String,
        created_at: Time,
        created_by: Increase::Models::CheckTransfer::CreatedBy | nil,
        currency: Increase::Models::CheckTransfer::Currency,
        fulfillment_method: Increase::Models::CheckTransfer::FulfillmentMethod,
        idempotency_key: String | nil,
        mailing: Increase::Models::CheckTransfer::Mailing | nil,
        pending_transaction_id: String | nil,
        physical_check: Increase::Models::CheckTransfer::PhysicalCheck | nil,
        routing_number: String,
        source_account_number_id: String | nil,
        status: Increase::Models::CheckTransfer::Status,
        stop_payment_request: Increase::Models::CheckTransfer::StopPaymentRequest | nil,
        submission: Increase::Models::CheckTransfer::Submission | nil,
        third_party: Increase::Models::CheckTransfer::ThirdParty | nil,
        type: Increase::Models::CheckTransfer::Type
      }
    end
  end
end
