# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::RealTimePaymentsTransfersTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_complete
    response = @increase.simulations.real_time_payments_transfers.complete("real_time_payments_transfer_id")
    assert_kind_of(Increase::Models::RealTimePaymentsTransfer, response)
  end
end
