# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::OAuthTokensTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.oauth_tokens.create({grant_type: "authorization_code"})
    assert(Increase::Converter.same_type?(Increase::Models::OAuthToken, response), response.class.to_s)
  end
end
