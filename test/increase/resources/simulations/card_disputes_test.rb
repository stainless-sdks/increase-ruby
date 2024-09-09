# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::CardDisputesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_action_required_params
    response = @increase.simulations.card_disputes.action("card_dispute_id", {status: "accepted"})
    assert_kind_of(Increase::Models::CardDispute, response)
  end
end
