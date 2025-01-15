# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CardIncrementsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.card_increments.create(
      amount: 500,
      card_payment_id: "card_payment_nd3k2kacrqjli8482ave"
    )

    assert_pattern do
      response => Increase::Models::CardPayment
    end
  end
end
