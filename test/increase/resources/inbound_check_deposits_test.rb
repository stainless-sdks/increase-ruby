# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundCheckDepositsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.inbound_check_deposits.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::InboundCheckDeposit, response),
      response.class.to_s
    )
  end

  def test_decline
    response = @increase.inbound_check_deposits.decline("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::InboundCheckDeposit, response),
      response.class.to_s
    )
  end
end
