# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::BookkeepingAccountsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.bookkeeping_accounts.create({name: "New Account!"})
    assert_kind_of(Increase::Models::BookkeepingAccount, response)
  end

  def test_update_required_params
    response = @increase.bookkeeping_accounts.update("bookkeeping_account_id", {name: "Deprecated Account"})
    assert_kind_of(Increase::Models::BookkeepingAccount, response)
  end

  def test_list
    response = @increase.bookkeeping_accounts.list 
    assert_kind_of(Increase::Page, response)
  end

  def test_balance
    response = @increase.bookkeeping_accounts.balance("bookkeeping_account_id")
    assert_kind_of(Increase::Models::BookkeepingBalanceLookup, response)
  end
end
