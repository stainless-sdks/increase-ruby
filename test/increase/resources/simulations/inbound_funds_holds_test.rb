# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InboundFundsHoldsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_release
    response = @increase.simulations.inbound_funds_holds.release("inbound_funds_hold_id")

    assert_pattern do
      response => Increase::Models::Simulations::InboundFundsHoldReleaseResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        automatically_releases_at: Time,
        created_at: Time,
        currency: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency,
        held_transaction_id: String | nil,
        pending_transaction_id: String | nil,
        released_at: Time | nil,
        status: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status,
        type: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type
      }
    end
  end
end
