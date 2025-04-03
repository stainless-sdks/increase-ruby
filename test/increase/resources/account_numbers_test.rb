# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountNumbersTest < Increase::Test::ResourceTest
  def test_create_required_params
    response =
      @increase.account_numbers.create(account_id: "account_in71c4amph0vgo2qllky", name: "Rent payments")

    assert_pattern do
      response => Increase::Models::AccountNumber
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        created_at: Time,
        idempotency_key: String | nil,
        inbound_ach: Increase::Models::AccountNumber::InboundACH,
        inbound_checks: Increase::Models::AccountNumber::InboundChecks,
        name: String,
        routing_number: String,
        status: Increase::Models::AccountNumber::Status,
        type: Increase::Models::AccountNumber::Type
      }
    end
  end

  def test_retrieve
    response = @increase.account_numbers.retrieve("account_number_id")

    assert_pattern do
      response => Increase::Models::AccountNumber
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        created_at: Time,
        idempotency_key: String | nil,
        inbound_ach: Increase::Models::AccountNumber::InboundACH,
        inbound_checks: Increase::Models::AccountNumber::InboundChecks,
        name: String,
        routing_number: String,
        status: Increase::Models::AccountNumber::Status,
        type: Increase::Models::AccountNumber::Type
      }
    end
  end

  def test_update
    response = @increase.account_numbers.update("account_number_id")

    assert_pattern do
      response => Increase::Models::AccountNumber
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number: String,
        created_at: Time,
        idempotency_key: String | nil,
        inbound_ach: Increase::Models::AccountNumber::InboundACH,
        inbound_checks: Increase::Models::AccountNumber::InboundChecks,
        name: String,
        routing_number: String,
        status: Increase::Models::AccountNumber::Status,
        type: Increase::Models::AccountNumber::Type
      }
    end
  end

  def test_list
    response = @increase.account_numbers.list

    assert_pattern do
      response => Increase::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::Models::AccountNumber
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        account_number: String,
        created_at: Time,
        idempotency_key: String | nil,
        inbound_ach: Increase::Models::AccountNumber::InboundACH,
        inbound_checks: Increase::Models::AccountNumber::InboundChecks,
        name: String,
        routing_number: String,
        status: Increase::Models::AccountNumber::Status,
        type: Increase::Models::AccountNumber::Type
      }
    end
  end
end
