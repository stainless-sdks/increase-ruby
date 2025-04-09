# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ProofOfAuthorizationRequests#retrieve
    class ProofOfAuthorizationRequest < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/proof_of_authorization_request/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute ach_transfers
      #   #/components/schemas/proof_of_authorization_request/properties/ach_transfers
      #
      #   @return [Array<Increase::Models::ProofOfAuthorizationRequest::ACHTransfer>]
      required :ach_transfers,
               -> { Increase::Internal::Type::ArrayOf[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer] }

      # @!attribute created_at
      #   #/components/schemas/proof_of_authorization_request/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute due_on
      #   #/components/schemas/proof_of_authorization_request/properties/due_on
      #
      #   @return [Time]
      required :due_on, Time

      # @!attribute type
      #   #/components/schemas/proof_of_authorization_request/properties/type
      #
      #   @return [Symbol, Increase::Models::ProofOfAuthorizationRequest::Type]
      required :type, enum: -> { Increase::Models::ProofOfAuthorizationRequest::Type }

      # @!attribute updated_at
      #   #/components/schemas/proof_of_authorization_request/properties/updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # #/components/schemas/proof_of_authorization_request
      #   #
      #   # @param id [String]
      #   # @param ach_transfers [Array<Increase::Models::ProofOfAuthorizationRequest::ACHTransfer>]
      #   # @param created_at [Time]
      #   # @param due_on [Time]
      #   # @param type [Symbol, Increase::Models::ProofOfAuthorizationRequest::Type]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(id:, ach_transfers:, created_at:, due_on:, type:, updated_at:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class ACHTransfer < Increase::Internal::Type::BaseModel
        # @!attribute id
        #   #/components/schemas/proof_of_authorization_request/properties/ach_transfers/items/properties/id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # #/components/schemas/proof_of_authorization_request/properties/ach_transfers/items
        #   #
        #   # @param id [String]
        #   #
        #   def initialize(id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/proof_of_authorization_request/properties/type
      #
      # @see Increase::Models::ProofOfAuthorizationRequest#type
      module Type
        extend Increase::Internal::Type::Enum

        PROOF_OF_AUTHORIZATION_REQUEST = :proof_of_authorization_request

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
