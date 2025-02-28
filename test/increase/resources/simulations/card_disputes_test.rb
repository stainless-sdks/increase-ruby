# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CardDisputesTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_action_required_params
    response = @increase.simulations.card_disputes.action(
      "card_dispute_id",
      status: :pending_user_information
    )

    assert_pattern do
      response => Increase::Models::CardDispute
    end

    assert_pattern do
      response => {
        id: String,
        acceptance: Increase::Models::CardDispute::Acceptance | nil,
        amount: Integer | nil,
        created_at: Time,
        disputed_transaction_id: String,
        explanation: String,
        idempotency_key: String | nil,
        loss: Increase::Models::CardDispute::Loss | nil,
        rejection: Increase::Models::CardDispute::Rejection | nil,
        status: Increase::Models::CardDispute::Status,
        type: Increase::Models::CardDispute::Type,
        win: Increase::Models::CardDispute::Win | nil
      }
    end
  end
end
