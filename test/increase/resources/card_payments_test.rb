# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CardPaymentsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.card_payments.retrieve("card_payment_id")
    assert_kind_of(Increase::Models::CardPayment, response)
  end

  def test_list
    response = @increase.card_payments.list
    assert_kind_of(Increase::Page, response)
  end
end
