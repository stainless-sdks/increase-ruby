# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::OAuthTokensTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.oauth_tokens.create({grant_type: "authorization_code"})
    assert_kind_of(Increase::Models::OAuthToken, response)
  end
end
