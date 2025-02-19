# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InterestPaymentsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.interest_payments.create(account_id: "account_in71c4amph0vgo2qllky", amount: 1000)

    assert_pattern do
      response => Increase::Models::Transaction
    end
  end
end
