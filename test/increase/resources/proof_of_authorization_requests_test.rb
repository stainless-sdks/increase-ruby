# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ProofOfAuthorizationRequestsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.proof_of_authorization_requests.retrieve("proof_of_authorization_request_id")
    assert_kind_of(Increase::Models::ProofOfAuthorizationRequest, response)
  end

  def test_list
    response = @increase.proof_of_authorization_requests.list
    assert_kind_of(Increase::Page, response)
  end
end
