# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CardPaymentsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.card_payments.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::CardPayment, response), response.class.to_s)
  end

  def test_list
    response = @increase.card_payments.list
    assert(Increase::Converter.same_type?(Increase::Models::CardPayment, response), response.class.to_s)
  end
end
