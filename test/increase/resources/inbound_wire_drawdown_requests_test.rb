# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundWireDrawdownRequestsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.inbound_wire_drawdown_requests.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::InboundWireDrawdownRequest, response),
      response.class.to_s
    )
  end

  def test_list
    response = @increase.inbound_wire_drawdown_requests.list
    assert(
      Increase::Converter.same_type?(Increase::Models::InboundWireDrawdownRequest, response),
      response.class.to_s
    )
  end
end