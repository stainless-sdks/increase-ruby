# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountNumbersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.account_numbers.create({account_id: "account_in71c4amph0vgo2qllky", name: "Rent payments"})
    assert_kind_of(Increase::Models::AccountNumber, response)
  end

  def test_retrieve
    response = @increase.account_numbers.retrieve("account_number_id")
    assert_kind_of(Increase::Models::AccountNumber, response)
  end

  def test_update
    response = @increase.account_numbers.update("account_number_id")
    assert_kind_of(Increase::Models::AccountNumber, response)
  end

  def test_list
    response = @increase.account_numbers.list 
    assert_kind_of(Increase::Page, response)
  end
end
