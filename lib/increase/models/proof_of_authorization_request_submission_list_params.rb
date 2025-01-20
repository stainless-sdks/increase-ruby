# frozen_string_literal: true

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmissionListParams < Increase::BaseModel
      # @!attribute [r] cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for that object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] proof_of_authorization_request_id
      #   ID of the proof of authorization request.
      #
      #   @return [String, nil]
      optional :proof_of_authorization_request_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :proof_of_authorization_request_id

      # @!parse
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param idempotency_key [String] Filter records to the one with the specified `idempotency_key` you chose for
      #   #   that object. This value is unique across Increase and is used to ensure that a
      #   #   request is only processed once. Learn more about
      #   #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param proof_of_authorization_request_id [String] ID of the proof of authorization request.
      #   #
      #   def initialize(cursor: nil, idempotency_key: nil, limit: nil, proof_of_authorization_request_id: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
