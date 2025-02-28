# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ExternalAccountsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.external_accounts.create(
      account_number: "987654321",
      description: "Landlord",
      routing_number: "101050001"
    )

    assert_pattern do
      response => Increase::Models::ExternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_holder: Increase::Models::ExternalAccount::AccountHolder,
        account_number: String,
        created_at: Time,
        description: String,
        funding: Increase::Models::ExternalAccount::Funding,
        idempotency_key: String | nil,
        routing_number: String,
        status: Increase::Models::ExternalAccount::Status,
        type: Increase::Models::ExternalAccount::Type,
        verification_status: Increase::Models::ExternalAccount::VerificationStatus
      }
    end
  end

  def test_retrieve
    response = @increase.external_accounts.retrieve("external_account_id")

    assert_pattern do
      response => Increase::Models::ExternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_holder: Increase::Models::ExternalAccount::AccountHolder,
        account_number: String,
        created_at: Time,
        description: String,
        funding: Increase::Models::ExternalAccount::Funding,
        idempotency_key: String | nil,
        routing_number: String,
        status: Increase::Models::ExternalAccount::Status,
        type: Increase::Models::ExternalAccount::Type,
        verification_status: Increase::Models::ExternalAccount::VerificationStatus
      }
    end
  end

  def test_update
    response = @increase.external_accounts.update("external_account_id")

    assert_pattern do
      response => Increase::Models::ExternalAccount
    end

    assert_pattern do
      response => {
        id: String,
        account_holder: Increase::Models::ExternalAccount::AccountHolder,
        account_number: String,
        created_at: Time,
        description: String,
        funding: Increase::Models::ExternalAccount::Funding,
        idempotency_key: String | nil,
        routing_number: String,
        status: Increase::Models::ExternalAccount::Status,
        type: Increase::Models::ExternalAccount::Type,
        verification_status: Increase::Models::ExternalAccount::VerificationStatus
      }
    end
  end

  def test_list
    response = @increase.external_accounts.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::ExternalAccount
    end

    assert_pattern do
      row => {
        id: String,
        account_holder: Increase::Models::ExternalAccount::AccountHolder,
        account_number: String,
        created_at: Time,
        description: String,
        funding: Increase::Models::ExternalAccount::Funding,
        idempotency_key: String | nil,
        routing_number: String,
        status: Increase::Models::ExternalAccount::Status,
        type: Increase::Models::ExternalAccount::Type,
        verification_status: Increase::Models::ExternalAccount::VerificationStatus
      }
    end
  end
end
