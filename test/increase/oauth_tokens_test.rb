# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class OAuthTokensResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.oauth_tokens.create({grant_type: "authorization_code"})
    assert(
      Increase::Converter.same_type?(Increase::Models::OAuthToken, response),
      response.class.to_s
    )
  end
end
