# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::WireTransfersTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_reverse
    response = @increase.simulations.wire_transfers.reverse("wire_transfer_id")
    assert_kind_of(Increase::Models::WireTransfer, response)
  end

  def test_submit
    response = @increase.simulations.wire_transfers.submit("wire_transfer_id")
    assert_kind_of(Increase::Models::WireTransfer, response)
  end
end
