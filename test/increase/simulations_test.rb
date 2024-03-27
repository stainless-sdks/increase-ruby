# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class SimulationsResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_card_authorization_expirations_required_params
    response = @increase.simulations.card_authorization_expirations({card_payment_id: "card_payment_nd3k2kacrqjli8482ave"})
    assert(
      Increase::Converter.same_type?(Increase::Models::CardPayment, response),
      response.class.to_s
    )
  end

  def test_card_fuel_confirmations_required_params
    response = @increase.simulations.card_fuel_confirmations(
      {
        amount: 5000,
        card_payment_id: "card_payment_nd3k2kacrqjli8482ave"
      }
    )
    assert(
      Increase::Converter.same_type?(Increase::Models::CardPayment, response),
      response.class.to_s
    )
  end

  def test_card_increments_required_params
    response = @increase.simulations.card_increments(
      {
        amount: 500,
        card_payment_id: "card_payment_nd3k2kacrqjli8482ave"
      }
    )
    assert(
      Increase::Converter.same_type?(Increase::Models::CardPayment, response),
      response.class.to_s
    )
  end

  def test_card_reversals_required_params
    response = @increase.simulations.card_reversals({card_payment_id: "card_payment_nd3k2kacrqjli8482ave"})
    assert(
      Increase::Converter.same_type?(Increase::Models::CardPayment, response),
      response.class.to_s
    )
  end
end
