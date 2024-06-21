# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundACHTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.inbound_ach_transfers.retrieve("string")
    assert_kind_of(Increase::Models::InboundACHTransfer, response)
  end

  def test_list
    response = @increase.inbound_ach_transfers.list 
    assert_kind_of(Increase::Page, response)
  end

  def test_decline
    response = @increase.inbound_ach_transfers.decline("string")
    assert_kind_of(Increase::Models::InboundACHTransfer, response)
  end

  def test_notification_of_change
    response = @increase.inbound_ach_transfers.notification_of_change("string")
    assert_kind_of(Increase::Models::InboundACHTransfer, response)
  end

  def test_transfer_return_required_params
    response = @increase.inbound_ach_transfers.transfer_return("string", {reason: "payment_stopped"})
    assert_kind_of(Increase::Models::InboundACHTransfer, response)
  end
end
