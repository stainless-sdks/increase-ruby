# frozen_string_literal: true

module Increase
  module Models
    class ProofOfAuthorizationRequest
      class ACHTransfers
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] id
        required :id, String
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] ach_transfers
      required :ach_transfers,
               Increase::ArrayOf.new(
                 lambda {
                   Increase::Models::ProofOfAuthorizationRequest::ACHTransfers
                 }
               )

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] due_on
      required :due_on, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:proof_of_authorization_request])

      # @!attribute [rw] updated_at
      required :updated_at, String
    end
  end
end
