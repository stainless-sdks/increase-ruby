# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimePaymentsRequestForPaymentsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.real_time_payments_request_for_payments.create(
      amount: 100,
      debtor: {"address" => {"country" => "US"}, "name" => "Ian Crease"},
      destination_account_number_id: "account_number_v18nkfqm6afpsrvy82b2",
      expires_at: "2026-12-31",
      remittance_information: "Invoice 29582",
      source_account_number: "987654321",
      source_routing_number: "101050001"
    )

    assert_pattern do
      response => Increase::Models::RealTimePaymentsRequestForPayment
    end
  end

  def test_retrieve
    response = @increase.real_time_payments_request_for_payments.retrieve("request_for_payment_id")

    assert_pattern do
      response => Increase::Models::RealTimePaymentsRequestForPayment
    end
  end

  def test_list
    response = @increase.real_time_payments_request_for_payments.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end
  end
end
