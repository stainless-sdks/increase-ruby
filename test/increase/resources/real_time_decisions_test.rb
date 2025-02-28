# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimeDecisionsTest < Increase::Test::ResourceTest
  def test_retrieve
    response = @increase.real_time_decisions.retrieve("real_time_decision_id")

    assert_pattern do
      response => Increase::Models::RealTimeDecision
    end

    assert_pattern do
      response => {
        id: String,
        card_authentication: Increase::Models::RealTimeDecision::CardAuthentication | nil,
        card_authentication_challenge: Increase::Models::RealTimeDecision::CardAuthenticationChallenge | nil,
        card_authorization: Increase::Models::RealTimeDecision::CardAuthorization | nil,
        category: Increase::Models::RealTimeDecision::Category,
        created_at: Time,
        digital_wallet_authentication: Increase::Models::RealTimeDecision::DigitalWalletAuthentication | nil,
        digital_wallet_token: Increase::Models::RealTimeDecision::DigitalWalletToken | nil,
        status: Increase::Models::RealTimeDecision::Status,
        timeout_at: Time,
        type: Increase::Models::RealTimeDecision::Type
      }
    end
  end

  def test_action
    response = @increase.real_time_decisions.action("real_time_decision_id")

    assert_pattern do
      response => Increase::Models::RealTimeDecision
    end

    assert_pattern do
      response => {
        id: String,
        card_authentication: Increase::Models::RealTimeDecision::CardAuthentication | nil,
        card_authentication_challenge: Increase::Models::RealTimeDecision::CardAuthenticationChallenge | nil,
        card_authorization: Increase::Models::RealTimeDecision::CardAuthorization | nil,
        category: Increase::Models::RealTimeDecision::Category,
        created_at: Time,
        digital_wallet_authentication: Increase::Models::RealTimeDecision::DigitalWalletAuthentication | nil,
        digital_wallet_token: Increase::Models::RealTimeDecision::DigitalWalletToken | nil,
        status: Increase::Models::RealTimeDecision::Status,
        timeout_at: Time,
        type: Increase::Models::RealTimeDecision::Type
      }
    end
  end
end
