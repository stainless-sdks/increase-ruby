# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.accounts.create({name: "New Account!"})
    assert(Increase::Converter.same_type?(Increase::Models::Account, response), response.class.to_s)
  end

  def test_retrieve
    response = @increase.accounts.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::Account, response), response.class.to_s)
  end

  def test_update
    response = @increase.accounts.update("string")
    assert(Increase::Converter.same_type?(Increase::Models::Account, response), response.class.to_s)
  end

  def test_list
    response = @increase.accounts.list
    assert(Increase::Converter.same_type?(Increase::Models::Account, response), response.class.to_s)
  end

  def test_balance
    response = @increase.accounts.balance("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::BalanceLookup, response),
      response.class.to_s
    )
  end
end
