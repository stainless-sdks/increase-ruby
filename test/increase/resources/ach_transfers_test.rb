# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ACHTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.ach_transfers.create(
      account_id: "account_in71c4amph0vgo2qllky",
      amount: 100,
      statement_descriptor: "New ACH transfer"
    )

    assert_pattern do
      response => Increase::Models::ACHTransfer
    end
  end

  def test_retrieve
    response = @increase.ach_transfers.retrieve("ach_transfer_id")

    assert_pattern do
      response => Increase::Models::ACHTransfer
    end
  end

  def test_list
    response = @increase.ach_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::ACHTransfer
    end
  end

  def test_approve
    response = @increase.ach_transfers.approve("ach_transfer_id")

    assert_pattern do
      response => Increase::Models::ACHTransfer
    end
  end

  def test_cancel
    response = @increase.ach_transfers.cancel("ach_transfer_id")

    assert_pattern do
      response => Increase::Models::ACHTransfer
    end
  end
end
