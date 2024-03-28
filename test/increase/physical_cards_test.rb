# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class PhysicalCardsResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.physical_cards.create(
      {
        card_id: "card_oubs0hwk5rn6knuecxg2",
        cardholder: {
          "first_name" => "Ian",
          "last_name" => "Crease"
        },
        shipment: {
          "method" => "usps",
          "address" => {
            "name" => "Ian Crease",
            "line1" => "33 Liberty Street",
            "city" => "New York",
            "state" => "NY",
            "postal_code" => "10045"
          }
        }
      }
    )
    assert(
      Increase::Converter.same_type?(Increase::Models::PhysicalCard, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @increase.physical_cards.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::PhysicalCard, response),
      response.class.to_s
    )
  end

  def test_update_required_params
    response = @increase.physical_cards.update("string", {status: "disabled"})
    assert(
      Increase::Converter.same_type?(Increase::Models::PhysicalCard, response),
      response.class.to_s
    )
  end

  def test_list
    response = @increase.physical_cards.list
    assert(
      Increase::Converter.same_type?(Increase::Models::PhysicalCard, response),
      response.class.to_s
    )
  end
end
