# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::AccountStatementsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.account_statements.create(account_id: "account_in71c4amph0vgo2qllky")

    assert_pattern do
      response => Increase::Models::AccountStatement
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        created_at: Time,
        ending_balance: Integer,
        file_id: String,
        starting_balance: Integer,
        statement_period_end: Time,
        statement_period_start: Time,
        type: Increase::Models::AccountStatement::Type
      }
    end
  end
end
