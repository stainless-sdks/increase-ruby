# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::TransactionsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.transactions.retrieve("string")
    assert_kind_of(Increase::Models::Transaction, response)
  end

  def test_list
    response = @increase.transactions.list 
    assert_kind_of(Increase::Page, response)
  end
end
