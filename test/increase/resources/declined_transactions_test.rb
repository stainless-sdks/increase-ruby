# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DeclinedTransactionsTest < Increase::Test::ResourceTest
  def test_retrieve
    response = @increase.declined_transactions.retrieve("declined_transaction_id")

    assert_pattern do
      response => Increase::Models::DeclinedTransaction
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        created_at: Time,
        currency: Increase::Models::DeclinedTransaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::Models::DeclinedTransaction::RouteType | nil,
        source: Increase::Models::DeclinedTransaction::Source,
        type: Increase::Models::DeclinedTransaction::Type
      }
    end
  end

  def test_list
    response = @increase.declined_transactions.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::DeclinedTransaction
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        amount: Integer,
        created_at: Time,
        currency: Increase::Models::DeclinedTransaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::Models::DeclinedTransaction::RouteType | nil,
        source: Increase::Models::DeclinedTransaction::Source,
        type: Increase::Models::DeclinedTransaction::Type
      }
    end
  end
end
