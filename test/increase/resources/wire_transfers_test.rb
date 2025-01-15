# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::WireTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.wire_transfers.create(
      account_id: "account_in71c4amph0vgo2qllky",
      amount: 100,
      beneficiary_name: "Ian Crease",
      message_to_recipient: "New account transfer"
    )

    assert_pattern do
      response => Increase::Models::WireTransfer
    end
  end

  def test_retrieve
    response = @increase.wire_transfers.retrieve("wire_transfer_id")

    assert_pattern do
      response => Increase::Models::WireTransfer
    end
  end

  def test_list
    response = @increase.wire_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end
  end

  def test_approve
    response = @increase.wire_transfers.approve("wire_transfer_id")

    assert_pattern do
      response => Increase::Models::WireTransfer
    end
  end

  def test_cancel
    response = @increase.wire_transfers.cancel("wire_transfer_id")

    assert_pattern do
      response => Increase::Models::WireTransfer
    end
  end
end
