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
      status: "pending_user_information"
    )

    assert_pattern do
      response => Increase::Models::CardDispute
    end
  end
end
