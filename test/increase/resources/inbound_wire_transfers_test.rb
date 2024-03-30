# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundWireTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.inbound_wire_transfers.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::InboundWireTransfer, response),
      response.class.to_s
    )
  end
end
