# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InboundCheckDepositsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.inbound_check_deposits.create(
      account_number_id: "account_number_v18nkfqm6afpsrvy82b2",
      amount: 1000,
      check_number: "1234567890"
    )

    assert_pattern do
      response => Increase::Models::InboundCheckDeposit
    end
  end
end
