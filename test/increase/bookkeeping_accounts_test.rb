# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class BookkeepingAccountsResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.bookkeeping_accounts.create({name: "New Account!"})
    assert(
      Increase::Converter.same_type?(Increase::Models::BookkeepingAccount, response),
      response.class.to_s
    )
  end

  def test_update_required_params
    response = @increase.bookkeeping_accounts.update("string", {name: "Deprecated Account"})
    assert(
      Increase::Converter.same_type?(Increase::Models::BookkeepingAccount, response),
      response.class.to_s
    )
  end

  def test_list
    response = @increase.bookkeeping_accounts.list
    assert(
      Increase::Converter.same_type?(Increase::Models::BookkeepingAccount, response),
      response.class.to_s
    )
  end

  def test_balance
    response = @increase.bookkeeping_accounts.balance("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::BookkeepingBalanceLookup, response),
      response.class.to_s
    )
  end
end
