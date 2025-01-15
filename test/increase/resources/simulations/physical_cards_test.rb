# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::PhysicalCardsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_advance_shipment_required_params
    response = @increase.simulations.physical_cards.advance_shipment(
      "physical_card_id",
      shipment_status: "pending"
    )

    assert_pattern do
      response => Increase::Models::PhysicalCard
    end
  end
end
