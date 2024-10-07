# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.accounts.create({name: "New Account!"})
    assert_kind_of(Increase::Models::Account, response)
  end

  def test_retrieve
    response = @increase.accounts.retrieve("account_id")
    assert_kind_of(Increase::Models::Account, response)
  end

  def test_update
    response = @increase.accounts.update("account_id")
    assert_kind_of(Increase::Models::Account, response)
  end

  def test_list
    response = @increase.accounts.list
    assert_kind_of(Increase::Page, response)
  end

  def test_balance
    response = @increase.accounts.balance("account_id")
    assert_kind_of(Increase::Models::BalanceLookup, response)
  end

  def test_close
    response = @increase.accounts.close("account_id")
    assert_kind_of(Increase::Models::Account, response)
  end
end
