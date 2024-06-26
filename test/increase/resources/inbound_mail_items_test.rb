# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundMailItemsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.inbound_mail_items.retrieve("string")
    assert_kind_of(Increase::Models::InboundMailItem, response)
  end

  def test_list
    response = @increase.inbound_mail_items.list
    assert_kind_of(Increase::Page, response)
  end
end
