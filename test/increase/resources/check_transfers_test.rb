# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CheckTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.check_transfers.create(
      account_id: "account_in71c4amph0vgo2qllky",
      amount: 1000,
      fulfillment_method: :physical_check,
      source_account_number_id: "account_number_v18nkfqm6afpsrvy82b2"
    )

    assert_pattern do
      response => Increase::Models::CheckTransfer
    end
  end

  def test_retrieve
    response = @increase.check_transfers.retrieve("check_transfer_id")

    assert_pattern do
      response => Increase::Models::CheckTransfer
    end
  end

  def test_list
    response = @increase.check_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::CheckTransfer
    end
  end

  def test_approve
    response = @increase.check_transfers.approve("check_transfer_id")

    assert_pattern do
      response => Increase::Models::CheckTransfer
    end
  end

  def test_cancel
    response = @increase.check_transfers.cancel("check_transfer_id")

    assert_pattern do
      response => Increase::Models::CheckTransfer
    end
  end

  def test_stop_payment
    response = @increase.check_transfers.stop_payment("check_transfer_id")

    assert_pattern do
      response => Increase::Models::CheckTransfer
    end
  end
end
