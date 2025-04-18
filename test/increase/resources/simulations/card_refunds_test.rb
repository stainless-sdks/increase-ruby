# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CardRefundsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.simulations.card_refunds.create(transaction_id: "transaction_uyrp7fld2ium70oa7oi")

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
