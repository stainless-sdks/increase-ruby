# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CardReversalsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.card_reversals.create(card_payment_id: "card_payment_nd3k2kacrqjli8482ave")

    assert_pattern do
      response => Increase::Models::CardPayment
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        card_id: String,
        created_at: Time,
        digital_wallet_token_id: String | nil,
        elements: ^(Increase::ArrayOf[Increase::Models::CardPayment::Element]),
        physical_card_id: String | nil,
        state: Increase::Models::CardPayment::State,
        type: Increase::Models::CardPayment::Type
      }
    end
  end
end
