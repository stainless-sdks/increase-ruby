# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundACHTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.inbound_ach_transfers.retrieve("inbound_ach_transfer_id")

    assert_pattern do
      response => Increase::Models::InboundACHTransfer
    end
  end

  def test_list
    response = @increase.inbound_ach_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::InboundACHTransfer
    end
  end

  def test_create_notification_of_change
    response = @increase.inbound_ach_transfers.create_notification_of_change("inbound_ach_transfer_id")

    assert_pattern do
      response => Increase::Models::InboundACHTransfer
    end
  end

  def test_decline
    response = @increase.inbound_ach_transfers.decline("inbound_ach_transfer_id")

    assert_pattern do
      response => Increase::Models::InboundACHTransfer
    end
  end

  def test_transfer_return_required_params
    response = @increase.inbound_ach_transfers.transfer_return(
      "inbound_ach_transfer_id",
      reason: :insufficient_funds
    )

    assert_pattern do
      response => Increase::Models::InboundACHTransfer
    end
  end
end
