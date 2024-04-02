# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ProofOfAuthorizationRequestsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.proof_of_authorization_requests.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::ProofOfAuthorizationRequest, response), response.class.to_s)
  end
end
