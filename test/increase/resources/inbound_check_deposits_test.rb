# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundCheckDepositsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.inbound_check_deposits.retrieve("inbound_check_deposit_id")
    assert_kind_of(Increase::Models::InboundCheckDeposit, response)
  end

  def test_list
    response = @increase.inbound_check_deposits.list 
    assert_kind_of(Increase::Page, response)
  end

  def test_decline
    response = @increase.inbound_check_deposits.decline("inbound_check_deposit_id")
    assert_kind_of(Increase::Models::InboundCheckDeposit, response)
  end
end
