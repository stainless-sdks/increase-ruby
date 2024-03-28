# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class ProofOfAuthorizationRequestsResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.proof_of_authorization_requests.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::ProofOfAuthorizationRequest, response),
      response.class.to_s
    )
  end

  def test_list
    response = @increase.proof_of_authorization_requests.list
    assert(
      Increase::Converter.same_type?(Increase::Models::ProofOfAuthorizationRequest, response),
      response.class.to_s
    )
  end
end
