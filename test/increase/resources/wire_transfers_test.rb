# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::WireTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.wire_transfers.create(
      {
        account_id: "account_in71c4amph0vgo2qllky",
        amount: 100,
        beneficiary_name: "Ian Crease",
        message_to_recipient: "New account transfer"
      }
    )
    assert(Increase::Converter.same_type?(Increase::Models::WireTransfer, response), response.class.to_s)
  end

  def test_retrieve
    response = @increase.wire_transfers.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::WireTransfer, response), response.class.to_s)
  end

  def test_approve
    response = @increase.wire_transfers.approve("string")
    assert(Increase::Converter.same_type?(Increase::Models::WireTransfer, response), response.class.to_s)
  end

  def test_cancel
    response = @increase.wire_transfers.cancel("string")
    assert(Increase::Converter.same_type?(Increase::Models::WireTransfer, response), response.class.to_s)
  end
end
