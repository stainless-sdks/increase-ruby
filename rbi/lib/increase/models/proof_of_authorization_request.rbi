# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequest < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer]) }
      attr_accessor :ach_transfers

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Time) }
      attr_accessor :due_on

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          ach_transfers: T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer],
          created_at: Time,
          due_on: Time,
          type: Symbol,
          updated_at: Time
        ).void
      end
      def initialize(id:, ach_transfers:, created_at:, due_on:, type:, updated_at:)
      end

      sig do
        override.returns(
          {
            id: String,
            ach_transfers: T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer],
            created_at: Time,
            due_on: Time,
            type: Symbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class ACHTransfer < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        PROOF_OF_AUTHORIZATION_REQUEST = :proof_of_authorization_request

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
