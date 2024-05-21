# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ProofOfAuthorizationRequestSubmissionsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.proof_of_authorization_request_submissions.create(
      {authorization_terms: "I agree to the terms of service.", authorized_at: "2020-01-31T23:59:59Z", authorizer_email: "user@example.com", authorizer_name: "Ian Crease", customer_has_been_offboarded: true, proof_of_authorization_request_id: "proof_of_authorization_request_iwp8no25h3rjvil6ad3b", validated_account_ownership_via_credential: true, validated_account_ownership_with_account_statement: true, validated_account_ownership_with_microdeposit: true}
    )
    assert_kind_of(Increase::Models::ProofOfAuthorizationRequestSubmission, response)
  end

  def test_retrieve
    response = @increase.proof_of_authorization_request_submissions.retrieve("string")
    assert_kind_of(Increase::Models::ProofOfAuthorizationRequestSubmission, response)
  end

  def test_list
    response = @increase.proof_of_authorization_request_submissions.list 
    assert_kind_of(Increase::Page, response)
  end
end
