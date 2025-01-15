# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::WireTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_reverse
    response = @increase.simulations.wire_transfers.reverse("wire_transfer_id")

    assert_pattern do
      response => Increase::Models::WireTransfer
    end
  end

  def test_submit
    response = @increase.simulations.wire_transfers.submit("wire_transfer_id")

    assert_pattern do
      response => Increase::Models::WireTransfer
    end
  end
end
