# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InboundFundsHoldsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_release
    response = @increase.simulations.inbound_funds_holds.release("inbound_funds_hold_id")
    assert_kind_of(Increase::Models::InboundFundsHoldReleaseResponse, response)
  end
end