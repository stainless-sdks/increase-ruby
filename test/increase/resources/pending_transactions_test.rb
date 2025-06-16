# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::PendingTransactionsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @client.pending_transactions.create(account_id: "account_in71c4amph0vgo2qllky", amount: -1000)

    assert_pattern do
      response => Increase::PendingTransaction
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        balance_impact: Increase::PendingTransaction::BalanceImpact,
        completed_at: Time | nil,
        created_at: Time,
        currency: Increase::PendingTransaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::PendingTransaction::RouteType | nil,
        source: Increase::PendingTransaction::Source,
        status: Increase::PendingTransaction::Status,
        type: Increase::PendingTransaction::Type
      }
    end
  end

  def test_retrieve
    response = @client.pending_transactions.retrieve("pending_transaction_id")

    assert_pattern do
      response => Increase::PendingTransaction
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        balance_impact: Increase::PendingTransaction::BalanceImpact,
        completed_at: Time | nil,
        created_at: Time,
        currency: Increase::PendingTransaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::PendingTransaction::RouteType | nil,
        source: Increase::PendingTransaction::Source,
        status: Increase::PendingTransaction::Status,
        type: Increase::PendingTransaction::Type
      }
    end
  end

  def test_list
    response = @client.pending_transactions.list

    assert_pattern do
      response => Increase::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::PendingTransaction
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        amount: Integer,
        balance_impact: Increase::PendingTransaction::BalanceImpact,
        completed_at: Time | nil,
        created_at: Time,
        currency: Increase::PendingTransaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::PendingTransaction::RouteType | nil,
        source: Increase::PendingTransaction::Source,
        status: Increase::PendingTransaction::Status,
        type: Increase::PendingTransaction::Type
      }
    end
  end

  def test_release
    response = @client.pending_transactions.release("pending_transaction_id")

    assert_pattern do
      response => Increase::PendingTransaction
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        balance_impact: Increase::PendingTransaction::BalanceImpact,
        completed_at: Time | nil,
        created_at: Time,
        currency: Increase::PendingTransaction::Currency,
        description: String,
        route_id: String | nil,
        route_type: Increase::PendingTransaction::RouteType | nil,
        source: Increase::PendingTransaction::Source,
        status: Increase::PendingTransaction::Status,
        type: Increase::PendingTransaction::Type
      }
    end
  end
end
