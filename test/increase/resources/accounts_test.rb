# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.accounts.create(name: "New Account!")

    assert_pattern do
      response => Increase::Models::Account
    end

    assert_pattern do
      response => {
        id: String,
        bank: Increase::Models::Account::Bank,
        closed_at: Time | nil,
        created_at: Time,
        currency: Increase::Models::Account::Currency,
        entity_id: String | nil,
        idempotency_key: String | nil,
        informational_entity_id: String | nil,
        interest_accrued: String,
        interest_accrued_at: Date | nil,
        interest_rate: String,
        name: String,
        program_id: String,
        status: Increase::Models::Account::Status,
        type: Increase::Models::Account::Type
      }
    end
  end

  def test_retrieve
    response = @increase.accounts.retrieve("account_id")

    assert_pattern do
      response => Increase::Models::Account
    end

    assert_pattern do
      response => {
        id: String,
        bank: Increase::Models::Account::Bank,
        closed_at: Time | nil,
        created_at: Time,
        currency: Increase::Models::Account::Currency,
        entity_id: String | nil,
        idempotency_key: String | nil,
        informational_entity_id: String | nil,
        interest_accrued: String,
        interest_accrued_at: Date | nil,
        interest_rate: String,
        name: String,
        program_id: String,
        status: Increase::Models::Account::Status,
        type: Increase::Models::Account::Type
      }
    end
  end

  def test_update
    response = @increase.accounts.update("account_id")

    assert_pattern do
      response => Increase::Models::Account
    end

    assert_pattern do
      response => {
        id: String,
        bank: Increase::Models::Account::Bank,
        closed_at: Time | nil,
        created_at: Time,
        currency: Increase::Models::Account::Currency,
        entity_id: String | nil,
        idempotency_key: String | nil,
        informational_entity_id: String | nil,
        interest_accrued: String,
        interest_accrued_at: Date | nil,
        interest_rate: String,
        name: String,
        program_id: String,
        status: Increase::Models::Account::Status,
        type: Increase::Models::Account::Type
      }
    end
  end

  def test_list
    response = @increase.accounts.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::Account
    end

    assert_pattern do
      row => {
        id: String,
        bank: Increase::Models::Account::Bank,
        closed_at: Time | nil,
        created_at: Time,
        currency: Increase::Models::Account::Currency,
        entity_id: String | nil,
        idempotency_key: String | nil,
        informational_entity_id: String | nil,
        interest_accrued: String,
        interest_accrued_at: Date | nil,
        interest_rate: String,
        name: String,
        program_id: String,
        status: Increase::Models::Account::Status,
        type: Increase::Models::Account::Type
      }
    end
  end

  def test_balance
    response = @increase.accounts.balance("account_id")

    assert_pattern do
      response => Increase::Models::BalanceLookup
    end

    assert_pattern do
      response => {
        account_id: String,
        available_balance: Integer,
        current_balance: Integer,
        type: Increase::Models::BalanceLookup::Type
      }
    end
  end

  def test_close
    response = @increase.accounts.close("account_id")

    assert_pattern do
      response => Increase::Models::Account
    end

    assert_pattern do
      response => {
        id: String,
        bank: Increase::Models::Account::Bank,
        closed_at: Time | nil,
        created_at: Time,
        currency: Increase::Models::Account::Currency,
        entity_id: String | nil,
        idempotency_key: String | nil,
        informational_entity_id: String | nil,
        interest_accrued: String,
        interest_accrued_at: Date | nil,
        interest_rate: String,
        name: String,
        program_id: String,
        status: Increase::Models::Account::Status,
        type: Increase::Models::Account::Type
      }
    end
  end
end
