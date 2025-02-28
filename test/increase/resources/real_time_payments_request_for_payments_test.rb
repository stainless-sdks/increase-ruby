# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimePaymentsRequestForPaymentsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.real_time_payments_request_for_payments.create(
      amount: 100,
      debtor: {address: {country: "US"}, name: "Ian Crease"},
      destination_account_number_id: "account_number_v18nkfqm6afpsrvy82b2",
      expires_at: "2026-12-31",
      remittance_information: "Invoice 29582",
      source_account_number: "987654321",
      source_routing_number: "101050001"
    )

    assert_pattern do
      response => Increase::Models::RealTimePaymentsRequestForPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        currency: Increase::Models::RealTimePaymentsRequestForPayment::Currency,
        debtor_name: String,
        destination_account_number_id: String,
        expires_at: Date,
        fulfillment_transaction_id: String | nil,
        idempotency_key: String | nil,
        refusal: Increase::Models::RealTimePaymentsRequestForPayment::Refusal | nil,
        rejection: Increase::Models::RealTimePaymentsRequestForPayment::Rejection | nil,
        remittance_information: String,
        source_account_number: String,
        source_routing_number: String,
        status: Increase::Models::RealTimePaymentsRequestForPayment::Status,
        submission: Increase::Models::RealTimePaymentsRequestForPayment::Submission | nil,
        type: Increase::Models::RealTimePaymentsRequestForPayment::Type
      }
    end
  end

  def test_retrieve
    response = @increase.real_time_payments_request_for_payments.retrieve("request_for_payment_id")

    assert_pattern do
      response => Increase::Models::RealTimePaymentsRequestForPayment
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        currency: Increase::Models::RealTimePaymentsRequestForPayment::Currency,
        debtor_name: String,
        destination_account_number_id: String,
        expires_at: Date,
        fulfillment_transaction_id: String | nil,
        idempotency_key: String | nil,
        refusal: Increase::Models::RealTimePaymentsRequestForPayment::Refusal | nil,
        rejection: Increase::Models::RealTimePaymentsRequestForPayment::Rejection | nil,
        remittance_information: String,
        source_account_number: String,
        source_routing_number: String,
        status: Increase::Models::RealTimePaymentsRequestForPayment::Status,
        submission: Increase::Models::RealTimePaymentsRequestForPayment::Submission | nil,
        type: Increase::Models::RealTimePaymentsRequestForPayment::Type
      }
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

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::RealTimePaymentsRequestForPayment
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        created_at: Time,
        currency: Increase::Models::RealTimePaymentsRequestForPayment::Currency,
        debtor_name: String,
        destination_account_number_id: String,
        expires_at: Date,
        fulfillment_transaction_id: String | nil,
        idempotency_key: String | nil,
        refusal: Increase::Models::RealTimePaymentsRequestForPayment::Refusal | nil,
        rejection: Increase::Models::RealTimePaymentsRequestForPayment::Rejection | nil,
        remittance_information: String,
        source_account_number: String,
        source_routing_number: String,
        status: Increase::Models::RealTimePaymentsRequestForPayment::Status,
        submission: Increase::Models::RealTimePaymentsRequestForPayment::Submission | nil,
        type: Increase::Models::RealTimePaymentsRequestForPayment::Type
      }
    end
  end
end
