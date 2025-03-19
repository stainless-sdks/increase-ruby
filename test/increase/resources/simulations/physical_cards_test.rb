# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::PhysicalCardsTest < Increase::Test::ResourceTest
  def test_advance_shipment_required_params
    response = @increase.simulations.physical_cards.advance_shipment(
      "physical_card_id",
      shipment_status: :pending
    )

    assert_pattern do
      response => Increase::Models::PhysicalCard
    end

    assert_pattern do
      response => {
        id: String,
        card_id: String,
        cardholder: Increase::Models::PhysicalCard::Cardholder,
        created_at: Time,
        idempotency_key: String | nil,
        physical_card_profile_id: String | nil,
        shipment: Increase::Models::PhysicalCard::Shipment,
        status: Increase::Models::PhysicalCard::Status,
        type: Increase::Models::PhysicalCard::Type
      }
    end
  end
end
