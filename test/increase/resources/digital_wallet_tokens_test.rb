# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DigitalWalletTokensTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.digital_wallet_tokens.retrieve("digital_wallet_token_id")

    assert_pattern do
      response => Increase::Models::DigitalWalletToken
    end

    assert_pattern do
      response => {
        id: String,
        card_id: String,
        created_at: Time,
        status: Increase::Models::DigitalWalletToken::Status,
        token_requestor: Increase::Models::DigitalWalletToken::TokenRequestor,
        type: Increase::Models::DigitalWalletToken::Type,
        updates: ^(Increase::ArrayOf[Increase::Models::DigitalWalletToken::Update])
      }
    end
  end

  def test_list
    response = @increase.digital_wallet_tokens.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::DigitalWalletToken
    end

    assert_pattern do
      row => {
        id: String,
        card_id: String,
        created_at: Time,
        status: Increase::Models::DigitalWalletToken::Status,
        token_requestor: Increase::Models::DigitalWalletToken::TokenRequestor,
        type: Increase::Models::DigitalWalletToken::Type,
        updates: ^(Increase::ArrayOf[Increase::Models::DigitalWalletToken::Update])
      }
    end
  end
end
