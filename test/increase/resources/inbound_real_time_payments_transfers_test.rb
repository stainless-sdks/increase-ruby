# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundRealTimePaymentsTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.inbound_real_time_payments_transfers.retrieve("inbound_real_time_payments_transfer_id")
    assert_kind_of(Increase::Models::InboundRealTimePaymentsTransfer, response)
  end

  def test_list
    response = @increase.inbound_real_time_payments_transfers.list
    assert_kind_of(Increase::Page, response)
  end
end
