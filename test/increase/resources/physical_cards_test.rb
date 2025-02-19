# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::PhysicalCardsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.physical_cards.create(
      card_id: "card_oubs0hwk5rn6knuecxg2",
      cardholder: {first_name: "Ian", last_name: "Crease"},
      shipment: {
        address: {city: "New York", line1: "33 Liberty Street", name: "Ian Crease", postal_code: "10045", state: "NY"},
        method: :usps
      }
    )

    assert_pattern do
      response => Increase::Models::PhysicalCard
    end
  end

  def test_retrieve
    response = @increase.physical_cards.retrieve("physical_card_id")

    assert_pattern do
      response => Increase::Models::PhysicalCard
    end
  end

  def test_update_required_params
    response = @increase.physical_cards.update("physical_card_id", status: :active)

    assert_pattern do
      response => Increase::Models::PhysicalCard
    end
  end

  def test_list
    response = @increase.physical_cards.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::PhysicalCard
    end
  end
end
