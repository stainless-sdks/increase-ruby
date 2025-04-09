# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequest < Increase::Internal::Type::BaseModel
      # #/components/schemas/proof_of_authorization_request/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/proof_of_authorization_request/properties/ach_transfers
      sig { returns(T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer]) }
      attr_accessor :ach_transfers

      # #/components/schemas/proof_of_authorization_request/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/proof_of_authorization_request/properties/due_on
      sig { returns(Time) }
      attr_accessor :due_on

      # #/components/schemas/proof_of_authorization_request/properties/type
      sig { returns(Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/proof_of_authorization_request/properties/updated_at
      sig { returns(Time) }
      attr_accessor :updated_at

      # #/components/schemas/proof_of_authorization_request
      sig do
        params(
          id: String,
          ach_transfers: T::Array[T.any(Increase::Models::ProofOfAuthorizationRequest::ACHTransfer, Increase::Internal::AnyHash)],
          created_at: Time,
          due_on: Time,
          type: Increase::Models::ProofOfAuthorizationRequest::Type::OrSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(id:, ach_transfers:, created_at:, due_on:, type:, updated_at:); end

      sig do
        override
          .returns(
            {
              id: String,
              ach_transfers: T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer],
              created_at: Time,
              due_on: Time,
              type: Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol,
              updated_at: Time
            }
          )
      end
      def to_hash; end

      class ACHTransfer < Increase::Internal::Type::BaseModel
        # #/components/schemas/proof_of_authorization_request/properties/ach_transfers/items/properties/id
        sig { returns(String) }
        attr_accessor :id

        # #/components/schemas/proof_of_authorization_request/properties/ach_transfers/items
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:); end

        sig { override.returns({id: String}) }
        def to_hash; end
      end

      # #/components/schemas/proof_of_authorization_request/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ProofOfAuthorizationRequest::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol) }

        PROOF_OF_AUTHORIZATION_REQUEST =
          T.let(:proof_of_authorization_request, Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
