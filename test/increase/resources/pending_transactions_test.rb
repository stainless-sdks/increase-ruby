# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::PendingTransactionsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.pending_transactions.retrieve("pending_transaction_id")

    assert_pattern do
      response => Increase::Models::PendingTransaction
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        completed_at: Time | nil,
        created_at: Time,
        currency: Increase::Models::PendingTransaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::Models::PendingTransaction::RouteType | nil,
        source: Increase::Models::PendingTransaction::Source,
        status: Increase::Models::PendingTransaction::Status,
        type: Increase::Models::PendingTransaction::Type
      }
    end
  end

  def test_list
    response = @increase.pending_transactions.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::PendingTransaction
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        amount: Integer,
        completed_at: Time | nil,
        created_at: Time,
        currency: Increase::Models::PendingTransaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::Models::PendingTransaction::RouteType | nil,
        source: Increase::Models::PendingTransaction::Source,
        status: Increase::Models::PendingTransaction::Status,
        type: Increase::Models::PendingTransaction::Type
      }
    end
  end
end
