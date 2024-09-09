# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::InboundWireDrawdownRequestsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.simulations.inbound_wire_drawdown_requests.create(
      {amount: 10000, beneficiary_account_number: "987654321", beneficiary_routing_number: "101050001", currency: "USD", message_to_recipient: "Invoice 29582", originator_account_number: "987654321", originator_routing_number: "101050001", recipient_account_number_id: "account_number_v18nkfqm6afpsrvy82b2"}
    )
    assert_kind_of(Increase::Models::InboundWireDrawdownRequest, response)
  end
end
