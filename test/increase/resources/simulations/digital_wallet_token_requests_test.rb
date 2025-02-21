# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::DigitalWalletTokenRequestsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.digital_wallet_token_requests.create(card_id: "card_oubs0hwk5rn6knuecxg2")

    assert_pattern do
      response => Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse
    end
  end
end
