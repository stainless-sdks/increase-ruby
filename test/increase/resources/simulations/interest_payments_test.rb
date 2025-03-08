# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InterestPaymentsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.simulations.interest_payments.create(account_id: "account_in71c4amph0vgo2qllky", amount: 1000)

    assert_pattern do
      response => Increase::Models::Transaction
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        created_at: Time,
        currency: Increase::Models::Transaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::Models::Transaction::RouteType | nil,
        source: Increase::Models::Transaction::Source,
        type: Increase::Models::Transaction::Type
      }
    end
  end
end
