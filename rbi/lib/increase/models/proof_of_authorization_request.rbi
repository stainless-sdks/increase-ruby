# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequest < Increase::BaseModel
      # The Proof of Authorization Request identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The ACH Transfers associated with the request.
      sig { returns(T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer]) }
      def ach_transfers
      end

      sig do
        params(_: T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer])
          .returns(T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer])
      end
      def ach_transfers=(_)
      end

      # The time the Proof of Authorization Request was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The time the Proof of Authorization Request is due.
      sig { returns(Time) }
      def due_on
      end

      sig { params(_: Time).returns(Time) }
      def due_on=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `proof_of_authorization_request`.
      sig { returns(Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol)
          .returns(Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # The time the Proof of Authorization Request was last updated.
      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # A request for proof of authorization for one or more ACH debit transfers.
      sig do
        params(
          id: String,
          ach_transfers: T::Array[T.any(Increase::Models::ProofOfAuthorizationRequest::ACHTransfer, Increase::Util::AnyHash)],
          created_at: Time,
          due_on: Time,
          type: Increase::Models::ProofOfAuthorizationRequest::Type::OrSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(id:, ach_transfers:, created_at:, due_on:, type:, updated_at:)
      end

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
      def to_hash
      end

      class ACHTransfer < Increase::BaseModel
        # The ACH Transfer identifier.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `proof_of_authorization_request`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ProofOfAuthorizationRequest::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol) }

        PROOF_OF_AUTHORIZATION_REQUEST =
          T.let(:proof_of_authorization_request, Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ProofOfAuthorizationRequest::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
