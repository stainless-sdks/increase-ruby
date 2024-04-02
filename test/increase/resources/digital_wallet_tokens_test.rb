# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DigitalWalletTokensTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.digital_wallet_tokens.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::DigitalWalletToken, response), response.class.to_s)
  end
end
