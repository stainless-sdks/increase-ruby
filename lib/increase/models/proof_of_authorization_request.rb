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
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] due_on
      #   The time the Proof of Authorization Request is due.
      #   @return [Time]
      required :due_on, Time

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `proof_of_authorization_request`.
      #   @return [Symbol, Increase::Models::ProofOfAuthorizationRequest::Type]
      required :type, enum: -> { Increase::Models::ProofOfAuthorizationRequest::Type }

      # @!attribute [rw] updated_at
      #   The time the Proof of Authorization Request was last updated.
      #   @return [Time]
      required :updated_at, Time

      class ACHTransfer < BaseModel
        # @!attribute [rw] id
        #   The ACH Transfer identifier.
        #   @return [String]
        required :id, String
      end

      # A constant representing the object's type. For this resource it will always be `proof_of_authorization_request`.
      class Type < Increase::Enum
        PROOF_OF_AUTHORIZATION_REQUEST = :proof_of_authorization_request
      end
    end
  end
end
