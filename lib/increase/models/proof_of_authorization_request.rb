# frozen_string_literal: true

module Increase
  module Models
    class ProofOfAuthorizationRequest < BaseModel
      # @!attribute [rw] id
      #   The Proof of Authorization Request identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] ach_transfers
      #   The ACH Transfers associated with the request.
      #   @return [Array<Increase::Models::ProofOfAuthorizationRequest::ACHTransfer>]
      required :ach_transfers,
               Increase::ArrayOf.new(-> { Increase::Models::ProofOfAuthorizationRequest::ACHTransfer })

      # @!attribute [rw] created_at
      #   The time the Proof of Authorization Request was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] due_on
      #   The time the Proof of Authorization Request is due.
      #   @return [String]
      required :due_on, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `proof_of_authorization_request`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:proof_of_authorization_request)

      # @!attribute [rw] updated_at
      #   The time the Proof of Authorization Request was last updated.
      #   @return [String]
      required :updated_at, String

      class ACHTransfer < BaseModel
        # @!attribute [rw] id
        #   The ACH Transfer identifier.
        #   @return [String]
        required :id, String
      end
    end
  end
end
