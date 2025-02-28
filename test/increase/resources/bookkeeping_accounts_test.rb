# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::BookkeepingAccountsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.bookkeeping_accounts.create(name: "New Account!")

    assert_pattern do
      response => Increase::Models::BookkeepingAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        compliance_category: Increase::Models::BookkeepingAccount::ComplianceCategory | nil,
        entity_id: String | nil,
        idempotency_key: String | nil,
        name: String,
        type: Increase::Models::BookkeepingAccount::Type
      }
    end
  end

  def test_update_required_params
    response = @increase.bookkeeping_accounts.update("bookkeeping_account_id", name: "Deprecated Account")

    assert_pattern do
      response => Increase::Models::BookkeepingAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        compliance_category: Increase::Models::BookkeepingAccount::ComplianceCategory | nil,
        entity_id: String | nil,
        idempotency_key: String | nil,
        name: String,
        type: Increase::Models::BookkeepingAccount::Type
      }
    end
  end

  def test_list
    response = @increase.bookkeeping_accounts.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::BookkeepingAccount
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String | nil,
        compliance_category: Increase::Models::BookkeepingAccount::ComplianceCategory | nil,
        entity_id: String | nil,
        idempotency_key: String | nil,
        name: String,
        type: Increase::Models::BookkeepingAccount::Type
      }
    end
  end

  def test_balance
    response = @increase.bookkeeping_accounts.balance("bookkeeping_account_id")

    assert_pattern do
      response => Increase::Models::BookkeepingBalanceLookup
    end

    assert_pattern do
      response => {
        balance: Integer,
        bookkeeping_account_id: String,
        type: Increase::Models::BookkeepingBalanceLookup::Type
      }
    end
  end
end
