# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::DigitalWalletTokenRequestsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response =
      @increase.simulations.digital_wallet_token_requests.create(card_id: "card_oubs0hwk5rn6knuecxg2")

    assert_pattern do
      response => Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse
    end

    assert_pattern do
      response => {
        decline_reason: Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason | nil,
        digital_wallet_token_id: String | nil,
        type: Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type
      }
    end
  end
end
