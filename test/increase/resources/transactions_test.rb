# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::TransactionsTest < Increase::Test::ResourceTest
  def test_retrieve
    response = @increase.transactions.retrieve("transaction_id")

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

  def test_list
    response = @increase.transactions.list

    assert_pattern do
      response => Increase::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::Models::Transaction
    end

    assert_pattern do
      row => {
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
