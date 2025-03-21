# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CardsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.cards.create(account_id: "account_in71c4amph0vgo2qllky")

    assert_pattern do
      response => Increase::Models::Card
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        billing_address: Increase::Models::Card::BillingAddress,
        created_at: Time,
        description: String | nil,
        digital_wallet: Increase::Models::Card::DigitalWallet | nil,
        entity_id: String | nil,
        expiration_month: Integer,
        expiration_year: Integer,
        idempotency_key: String | nil,
        last4: String,
        status: Increase::Models::Card::Status,
        type: Increase::Models::Card::Type
      }
    end
  end

  def test_retrieve
    response = @increase.cards.retrieve("card_id")

    assert_pattern do
      response => Increase::Models::Card
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        billing_address: Increase::Models::Card::BillingAddress,
        created_at: Time,
        description: String | nil,
        digital_wallet: Increase::Models::Card::DigitalWallet | nil,
        entity_id: String | nil,
        expiration_month: Integer,
        expiration_year: Integer,
        idempotency_key: String | nil,
        last4: String,
        status: Increase::Models::Card::Status,
        type: Increase::Models::Card::Type
      }
    end
  end

  def test_update
    response = @increase.cards.update("card_id")

    assert_pattern do
      response => Increase::Models::Card
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        billing_address: Increase::Models::Card::BillingAddress,
        created_at: Time,
        description: String | nil,
        digital_wallet: Increase::Models::Card::DigitalWallet | nil,
        entity_id: String | nil,
        expiration_month: Integer,
        expiration_year: Integer,
        idempotency_key: String | nil,
        last4: String,
        status: Increase::Models::Card::Status,
        type: Increase::Models::Card::Type
      }
    end
  end

  def test_list
    response = @increase.cards.list

    assert_pattern do
      response => Increase::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::Models::Card
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        billing_address: Increase::Models::Card::BillingAddress,
        created_at: Time,
        description: String | nil,
        digital_wallet: Increase::Models::Card::DigitalWallet | nil,
        entity_id: String | nil,
        expiration_month: Integer,
        expiration_year: Integer,
        idempotency_key: String | nil,
        last4: String,
        status: Increase::Models::Card::Status,
        type: Increase::Models::Card::Type
      }
    end
  end

  def test_details
    response = @increase.cards.details("card_id")

    assert_pattern do
      response => Increase::Models::CardDetails
    end

    assert_pattern do
      response => {
        card_id: String,
        expiration_month: Integer,
        expiration_year: Integer,
        primary_account_number: String,
        type: Increase::Models::CardDetails::Type,
        verification_code: String
      }
    end
  end
end
