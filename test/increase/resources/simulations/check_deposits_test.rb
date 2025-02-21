# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CheckDepositsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_reject
    response = @increase.simulations.check_deposits.reject("check_deposit_id")

    assert_pattern do
      response => Increase::Models::CheckDeposit
    end
  end

  def test_return_
    response = @increase.simulations.check_deposits.return_("check_deposit_id")

    assert_pattern do
      response => Increase::Models::CheckDeposit
    end
  end

  def test_submit
    response = @increase.simulations.check_deposits.submit("check_deposit_id")

    assert_pattern do
      response => Increase::Models::CheckDeposit
    end
  end
end
