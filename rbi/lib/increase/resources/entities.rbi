# typed: strong

module Increase
  module Resources
    class Entities
      sig do
        params(
          structure: Symbol,
          corporation: Increase::Models::EntityCreateParams::Corporation,
          description: String,
          government_authority: Increase::Models::EntityCreateParams::GovernmentAuthority,
          joint: Increase::Models::EntityCreateParams::Joint,
          natural_person: Increase::Models::EntityCreateParams::NaturalPerson,
          supplemental_documents: T::Array[Increase::Models::EntityCreateParams::SupplementalDocument],
          third_party_verification: Increase::Models::EntityCreateParams::ThirdPartyVerification,
          trust: Increase::Models::EntityCreateParams::Trust,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def create(
        structure:,
        corporation: nil,
        description: nil,
        government_authority: nil,
        joint: nil,
        natural_person: nil,
        supplemental_documents: nil,
        third_party_verification: nil,
        trust: nil,
        request_options: {}
      )
      end

      sig do
        params(
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def retrieve(entity_id, request_options: {})
      end

      sig do
        params(
          created_at: Increase::Models::EntityListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::EntityListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::Entity])
      end
      def list(
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        params(
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def archive(entity_id, request_options: {})
      end

      sig do
        params(
          entity_id: String,
          beneficial_owner_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def archive_beneficial_owner(entity_id, beneficial_owner_id:, request_options: {})
      end

      sig do
        params(
          entity_id: String,
          confirmed_at: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def confirm(entity_id, confirmed_at: nil, request_options: {})
      end

      sig do
        params(
          entity_id: String,
          beneficial_owner: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def create_beneficial_owner(entity_id, beneficial_owner:, request_options: {})
      end

      sig do
        params(
          entity_id: String,
          address: Increase::Models::EntityUpdateAddressParams::Address,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def update_address(entity_id, address:, request_options: {})
      end

      sig do
        params(
          entity_id: String,
          address: Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address,
          beneficial_owner_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def update_beneficial_owner_address(entity_id, address:, beneficial_owner_id:, request_options: {})
      end

      sig do
        params(
          entity_id: String,
          industry_code: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Entity)
      end
      def update_industry_code(entity_id, industry_code:, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
