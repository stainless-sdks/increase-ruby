# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ACHPrenotificationsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.ach_prenotifications.create(
      account_id: "account_in71c4amph0vgo2qllky",
      account_number: "987654321",
      routing_number: "101050001"
    )

    assert_pattern do
      response => Increase::Models::ACHPrenotification
    end

    assert_pattern do
      response => {
        id: String,
        account_number: String,
        addendum: String | nil,
        company_descriptive_date: String | nil,
        company_discretionary_data: String | nil,
        company_entry_description: String | nil,
        company_name: String | nil,
        created_at: Time,
        credit_debit_indicator: Increase::Models::ACHPrenotification::CreditDebitIndicator | nil,
        effective_date: Time | nil,
        idempotency_key: String | nil,
        notifications_of_change: ^(Increase::ArrayOf[Increase::Models::ACHPrenotification::NotificationsOfChange]),
        prenotification_return: Increase::Models::ACHPrenotification::PrenotificationReturn | nil,
        routing_number: String,
        status: Increase::Models::ACHPrenotification::Status,
        type: Increase::Models::ACHPrenotification::Type
      }
    end
  end

  def test_retrieve
    response = @increase.ach_prenotifications.retrieve("ach_prenotification_id")

    assert_pattern do
      response => Increase::Models::ACHPrenotification
    end

    assert_pattern do
      response => {
        id: String,
        account_number: String,
        addendum: String | nil,
        company_descriptive_date: String | nil,
        company_discretionary_data: String | nil,
        company_entry_description: String | nil,
        company_name: String | nil,
        created_at: Time,
        credit_debit_indicator: Increase::Models::ACHPrenotification::CreditDebitIndicator | nil,
        effective_date: Time | nil,
        idempotency_key: String | nil,
        notifications_of_change: ^(Increase::ArrayOf[Increase::Models::ACHPrenotification::NotificationsOfChange]),
        prenotification_return: Increase::Models::ACHPrenotification::PrenotificationReturn | nil,
        routing_number: String,
        status: Increase::Models::ACHPrenotification::Status,
        type: Increase::Models::ACHPrenotification::Type
      }
    end
  end

  def test_list
    response = @increase.ach_prenotifications.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::ACHPrenotification
    end

    assert_pattern do
      row => {
        id: String,
        account_number: String,
        addendum: String | nil,
        company_descriptive_date: String | nil,
        company_discretionary_data: String | nil,
        company_entry_description: String | nil,
        company_name: String | nil,
        created_at: Time,
        credit_debit_indicator: Increase::Models::ACHPrenotification::CreditDebitIndicator | nil,
        effective_date: Time | nil,
        idempotency_key: String | nil,
        notifications_of_change: ^(Increase::ArrayOf[Increase::Models::ACHPrenotification::NotificationsOfChange]),
        prenotification_return: Increase::Models::ACHPrenotification::PrenotificationReturn | nil,
        routing_number: String,
        status: Increase::Models::ACHPrenotification::Status,
        type: Increase::Models::ACHPrenotification::Type
      }
    end
  end
end
