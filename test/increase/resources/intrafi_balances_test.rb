# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::IntrafiBalancesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.intrafi_balances.retrieve("account_id")
    assert_kind_of(Increase::Models::IntrafiBalance, response)
  end
end
