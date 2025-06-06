# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::BookkeepingAccountsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.bookkeeping_accounts.create(name: "New Account!")

    assert_pattern do
      response => Increase::BookkeepingAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        compliance_category: Increase::BookkeepingAccount::ComplianceCategory | nil,
        entity_id: String | nil,
        idempotency_key: String | nil,
        name: String,
        type: Increase::BookkeepingAccount::Type
      }
    end
  end

  def test_update_required_params
    response = @increase.bookkeeping_accounts.update("bookkeeping_account_id", name: "Deprecated Account")

    assert_pattern do
      response => Increase::BookkeepingAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        compliance_category: Increase::BookkeepingAccount::ComplianceCategory | nil,
        entity_id: String | nil,
        idempotency_key: String | nil,
        name: String,
        type: Increase::BookkeepingAccount::Type
      }
    end
  end

  def test_list
    response = @increase.bookkeeping_accounts.list

    assert_pattern do
      response => Increase::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::BookkeepingAccount
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String | nil,
        compliance_category: Increase::BookkeepingAccount::ComplianceCategory | nil,
        entity_id: String | nil,
        idempotency_key: String | nil,
        name: String,
        type: Increase::BookkeepingAccount::Type
      }
    end
  end

  def test_balance
    response = @increase.bookkeeping_accounts.balance("bookkeeping_account_id")

    assert_pattern do
      response => Increase::BookkeepingBalanceLookup
    end

    assert_pattern do
      response => {
        balance: Integer,
        bookkeeping_account_id: String,
        type: Increase::BookkeepingBalanceLookup::Type
      }
    end
  end
end
