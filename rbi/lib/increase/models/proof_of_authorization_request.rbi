# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequest < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer]) }
      def ach_transfers
      end

      sig do
        params(_: T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer])
          .returns(T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer])
      end
      def ach_transfers=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Time) }
      def due_on
      end

      sig { params(_: Time).returns(Time) }
      def due_on=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
            id: String,
            ach_transfers: T::Array[Increase::Models::ProofOfAuthorizationRequest::ACHTransfer],
            created_at: Time,
            due_on: Time,
            type: Symbol,
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
              type: Symbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      class ACHTransfer < Increase::BaseModel
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

      class Type < Increase::Enum
        abstract!

        PROOF_OF_AUTHORIZATION_REQUEST = :proof_of_authorization_request

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
