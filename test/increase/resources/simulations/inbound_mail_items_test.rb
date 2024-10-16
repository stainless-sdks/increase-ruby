# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InboundMailItemsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.inbound_mail_items.create(
      {amount: 1000, lockbox_id: "lockbox_3xt21ok13q19advds4t5"}
    )
    assert_kind_of(Increase::Models::InboundMailItem, response)
  end
end
