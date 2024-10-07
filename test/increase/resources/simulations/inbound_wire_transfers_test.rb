# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InboundWireTransfersTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.simulations.inbound_wire_transfers.create(
      {account_number_id: "account_number_v18nkfqm6afpsrvy82b2", amount: 1000}
    )
    assert_kind_of(Increase::Models::InboundWireTransfer, response)
  end
end
