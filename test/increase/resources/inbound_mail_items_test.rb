# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundMailItemsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.inbound_mail_items.retrieve("inbound_mail_item_id")
    assert_kind_of(Increase::Models::InboundMailItem, response)
  end

  def test_list
    response = @increase.inbound_mail_items.list
    assert_kind_of(Increase::Page, response)
  end
end
