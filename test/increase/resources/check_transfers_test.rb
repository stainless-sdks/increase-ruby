# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CheckTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.check_transfers.create(
      {
        account_id: "account_in71c4amph0vgo2qllky",
        amount: 1000,
        source_account_number_id: "account_number_v18nkfqm6afpsrvy82b2"
      }
    )
    assert(
      Increase::Converter.same_type?(Increase::Models::CheckTransfer, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @increase.check_transfers.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::CheckTransfer, response),
      response.class.to_s
    )
  end

  def test_list
    response = @increase.check_transfers.list
    assert(
      Increase::Converter.same_type?(Increase::Models::CheckTransfer, response),
      response.class.to_s
    )
  end

  def test_approve
    response = @increase.check_transfers.approve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::CheckTransfer, response),
      response.class.to_s
    )
  end

  def test_cancel
    response = @increase.check_transfers.cancel("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::CheckTransfer, response),
      response.class.to_s
    )
  end
end
