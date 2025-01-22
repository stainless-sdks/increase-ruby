# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # proof_of_authorization_request => {
    #   id: String,
    #   ach_transfers: -> { Increase::ArrayOf[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer] === _1 },
    #   created_at: Time,
    #   due_on: Time,
    #   type: Increase::Models::ProofOfAuthorizationRequest::Type
    # }
    # ```
    class ProofOfAuthorizationRequest < Increase::BaseModel
      # @!attribute id
      #   The Proof of Authorization Request identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute ach_transfers
      #   The ACH Transfers associated with the request.
      #
      #   @return [Array<Increase::Models::ProofOfAuthorizationRequest::ACHTransfer>]
      required :ach_transfers,
               -> { Increase::ArrayOf[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer] }

      # @!attribute created_at
      #   The time the Proof of Authorization Request was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute due_on
      #   The time the Proof of Authorization Request is due.
      #
      #   @return [Time]
      required :due_on, Time

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `proof_of_authorization_request`.
      #
      #   @return [Symbol, Increase::Models::ProofOfAuthorizationRequest::Type]
      required :type, enum: -> { Increase::Models::ProofOfAuthorizationRequest::Type }

      # @!attribute updated_at
      #   The time the Proof of Authorization Request was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # A request for proof of authorization for one or more ACH debit transfers.
      #   #
      #   # @param id [String]
      #   # @param ach_transfers [Array<Increase::Models::ProofOfAuthorizationRequest::ACHTransfer>]
      #   # @param created_at [String]
      #   # @param due_on [String]
      #   # @param type [String]
      #   # @param updated_at [String]
      #   #
      #   def initialize(id:, ach_transfers:, created_at:, due_on:, type:, updated_at:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # ach_transfer => {
      #   id: String
      # }
      # ```
      class ACHTransfer < Increase::BaseModel
        # @!attribute id
        #   The ACH Transfer identifier.
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String]
        #   #
        #   def initialize(id:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # A constant representing the object's type. For this resource it will always be
      #   `proof_of_authorization_request`.
      #
      # @example
      # ```ruby
      # case type
      # in :proof_of_authorization_request
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        PROOF_OF_AUTHORIZATION_REQUEST = :proof_of_authorization_request

        finalize!
      end
    end
  end
end
