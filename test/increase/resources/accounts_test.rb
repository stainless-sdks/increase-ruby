# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.accounts.create({name: "New Account!"})
    assert_kind_of(Increase::Models::Account, response)
  end

  def test_retrieve
    response = @increase.accounts.retrieve("string")
    assert_kind_of(Increase::Models::Account, response)
  end

  def test_update
    response = @increase.accounts.update("string")
    assert_kind_of(Increase::Models::Account, response)
  end

  def test_list
    response = @increase.accounts.list 
    assert_kind_of(Increase::Page, response)
  end

  def test_balance
    response = @increase.accounts.balance("string")
    assert_kind_of(Increase::Models::BalanceLookup, response)
  end
end
