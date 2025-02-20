# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RoutingNumbersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list_required_params
    response = @increase.routing_numbers.list(routing_number: "xxxxxxxxx")

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::RoutingNumberListResponse
    end

    assert_pattern do
      row => {
        ach_transfers: Increase::Models::RoutingNumberListResponse::ACHTransfers,
        name: String,
        real_time_payments_transfers: Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers,
        routing_number: String,
        type: Increase::Models::RoutingNumberListResponse::Type,
        wire_transfers: Increase::Models::RoutingNumberListResponse::WireTransfers
      }
    end
  end
end
