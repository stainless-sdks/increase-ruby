# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundCheckDepositsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.inbound_check_deposits.retrieve("inbound_check_deposit_id")

    assert_pattern do
      response => Increase::Models::InboundCheckDeposit
    end
  end

  def test_list
    response = @increase.inbound_check_deposits.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end
  end

  def test_decline
    response = @increase.inbound_check_deposits.decline("inbound_check_deposit_id")

    assert_pattern do
      response => Increase::Models::InboundCheckDeposit
    end
  end

  def test_return__required_params
    response = @increase.inbound_check_deposits.return_(
      "inbound_check_deposit_id",
      reason: "altered_or_fictitious"
    )

    assert_pattern do
      response => Increase::Models::InboundCheckDeposit
    end
  end
end
