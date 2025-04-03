# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::PendingTransactionsTest < Increase::Test::ResourceTest
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
      response => Increase::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

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
