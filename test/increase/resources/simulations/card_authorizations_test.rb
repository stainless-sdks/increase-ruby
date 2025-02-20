# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CardAuthorizationsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.card_authorizations.create(amount: 1000)

    assert_pattern do
      response => Increase::Models::Simulations::CardAuthorizationCreateResponse
    end

    assert_pattern do
      response => {
        declined_transaction: Increase::Models::DeclinedTransaction | nil,
        pending_transaction: Increase::Models::PendingTransaction | nil,
        type: Increase::Models::Simulations::CardAuthorizationCreateResponse::Type
      }
    end
  end
end
