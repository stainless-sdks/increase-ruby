# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::IntrafiBalancesTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_intrafi_balance
    response = @increase.intrafi_balances.intrafi_balance("account_id")

    assert_pattern do
      response => Increase::Models::IntrafiBalance
    end

    assert_pattern do
      response => {
        id: String,
        balances: ^(Increase::ArrayOf[Increase::Models::IntrafiBalance::Balance]),
        currency: Increase::Models::IntrafiBalance::Currency,
        effective_date: Date,
        total_balance: Integer,
        type: Increase::Models::IntrafiBalance::Type
      }
    end
  end
end
