# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::WireDrawdownRequestsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.wire_drawdown_requests.create(
      {
        account_number_id: "account_number_v18nkfqm6afpsrvy82b2",
        amount: 10_000,
        message_to_recipient: "Invoice 29582",
        recipient_account_number: "987654321",
        recipient_name: "Ian Crease",
        recipient_routing_number: "101050001"
      }
    )
    assert_kind_of(Increase::Models::WireDrawdownRequest, response)
  end

  def test_retrieve
    response = @increase.wire_drawdown_requests.retrieve("wire_drawdown_request_id")
    assert_kind_of(Increase::Models::WireDrawdownRequest, response)
  end

  def test_list
    response = @increase.wire_drawdown_requests.list
    assert_kind_of(Increase::Page, response)
  end
end
