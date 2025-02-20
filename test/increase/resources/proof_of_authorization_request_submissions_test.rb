# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ProofOfAuthorizationRequestSubmissionsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.proof_of_authorization_request_submissions.create(
      authorization_terms: "I agree to the terms of service.",
      authorized_at: "2020-01-31T23:59:59Z",
      authorizer_email: "user@example.com",
      authorizer_name: "Ian Crease",
      customer_has_been_offboarded: true,
      proof_of_authorization_request_id: "proof_of_authorization_request_iwp8no25h3rjvil6ad3b",
      validated_account_ownership_via_credential: true,
      validated_account_ownership_with_account_statement: true,
      validated_account_ownership_with_microdeposit: true
    )

    assert_pattern do
      response => Increase::Models::ProofOfAuthorizationRequestSubmission
    end

    assert_pattern do
      response => {
        id: String,
        authorization_terms: String,
        authorized_at: Time,
        authorizer_company: String | nil,
        authorizer_email: String | nil,
        authorizer_ip_address: String | nil,
        authorizer_name: String | nil,
        created_at: Time,
        customer_has_been_offboarded: Increase::BooleanModel | nil,
        idempotency_key: String | nil,
        proof_of_authorization_request_id: String,
        status: Increase::Models::ProofOfAuthorizationRequestSubmission::Status,
        type: Increase::Models::ProofOfAuthorizationRequestSubmission::Type,
        updated_at: Time,
        validated_account_ownership_via_credential: Increase::BooleanModel | nil,
        validated_account_ownership_with_account_statement: Increase::BooleanModel | nil,
        validated_account_ownership_with_microdeposit: Increase::BooleanModel | nil
      }
    end
  end

  def test_retrieve
    response = @increase.proof_of_authorization_request_submissions.retrieve(
      "proof_of_authorization_request_submission_id"
    )

    assert_pattern do
      response => Increase::Models::ProofOfAuthorizationRequestSubmission
    end

    assert_pattern do
      response => {
        id: String,
        authorization_terms: String,
        authorized_at: Time,
        authorizer_company: String | nil,
        authorizer_email: String | nil,
        authorizer_ip_address: String | nil,
        authorizer_name: String | nil,
        created_at: Time,
        customer_has_been_offboarded: Increase::BooleanModel | nil,
        idempotency_key: String | nil,
        proof_of_authorization_request_id: String,
        status: Increase::Models::ProofOfAuthorizationRequestSubmission::Status,
        type: Increase::Models::ProofOfAuthorizationRequestSubmission::Type,
        updated_at: Time,
        validated_account_ownership_via_credential: Increase::BooleanModel | nil,
        validated_account_ownership_with_account_statement: Increase::BooleanModel | nil,
        validated_account_ownership_with_microdeposit: Increase::BooleanModel | nil
      }
    end
  end

  def test_list
    response = @increase.proof_of_authorization_request_submissions.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::ProofOfAuthorizationRequestSubmission
    end

    assert_pattern do
      row => {
        id: String,
        authorization_terms: String,
        authorized_at: Time,
        authorizer_company: String | nil,
        authorizer_email: String | nil,
        authorizer_ip_address: String | nil,
        authorizer_name: String | nil,
        created_at: Time,
        customer_has_been_offboarded: Increase::BooleanModel | nil,
        idempotency_key: String | nil,
        proof_of_authorization_request_id: String,
        status: Increase::Models::ProofOfAuthorizationRequestSubmission::Status,
        type: Increase::Models::ProofOfAuthorizationRequestSubmission::Type,
        updated_at: Time,
        validated_account_ownership_via_credential: Increase::BooleanModel | nil,
        validated_account_ownership_with_account_statement: Increase::BooleanModel | nil,
        validated_account_ownership_with_microdeposit: Increase::BooleanModel | nil
      }
    end
  end
end
