# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::CardReversalsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.simulations.card_reversals.create({card_payment_id: "card_payment_nd3k2kacrqjli8482ave"})
    assert_kind_of(Increase::Models::CardPayment, response)
  end
end