# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      sig { returns(T.nilable(Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(
          created_at: T.any(Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :created_at

      # #/paths//proof_of_authorization_requests/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//proof_of_authorization_requests/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          created_at: T.any(Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(created_at: nil, cursor: nil, limit: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              created_at: Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt,
              cursor: String,
              limit: Integer,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # #/paths//proof_of_authorization_requests/get/parameters/2/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # #/paths//proof_of_authorization_requests/get/parameters/3/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # #/paths//proof_of_authorization_requests/get/parameters/4/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # #/paths//proof_of_authorization_requests/get/parameters/5/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil); end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash; end
      end
    end
  end
end
