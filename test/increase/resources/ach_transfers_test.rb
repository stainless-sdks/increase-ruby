# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ACHTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.ach_transfers.create(
      {account_id: "account_in71c4amph0vgo2qllky", amount: 100, statement_descriptor: "New ACH transfer"}
    )
    assert(Increase::Converter.same_type?(Increase::Models::ACHTransfer, response), response.class.to_s)
  end

  def test_retrieve
    response = @increase.ach_transfers.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::ACHTransfer, response), response.class.to_s)
  end

  def test_approve
    response = @increase.ach_transfers.approve("string")
    assert(Increase::Converter.same_type?(Increase::Models::ACHTransfer, response), response.class.to_s)
  end

  def test_cancel
    response = @increase.ach_transfers.cancel("string")
    assert(Increase::Converter.same_type?(Increase::Models::ACHTransfer, response), response.class.to_s)
  end
end
