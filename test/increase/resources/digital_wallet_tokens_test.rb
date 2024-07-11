# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DigitalWalletTokensTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.digital_wallet_tokens.retrieve("digital_wallet_token_id")
    assert_kind_of(Increase::Models::DigitalWalletToken, response)
  end

  def test_list
    response = @increase.digital_wallet_tokens.list
    assert_kind_of(Increase::Page, response)
  end
end
