# typed: strong

module Increase
  module Resources
    class Entities
      # Create an Entity
      sig do
        params(
          structure: Increase::Models::EntityCreateParams::Structure::OrSymbol,
          corporation: T.any(Increase::Models::EntityCreateParams::Corporation, Increase::Internal::AnyHash),
          description: String,
          government_authority: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority, Increase::Internal::AnyHash),
          joint: T.any(Increase::Models::EntityCreateParams::Joint, Increase::Internal::AnyHash),
          natural_person: T.any(Increase::Models::EntityCreateParams::NaturalPerson, Increase::Internal::AnyHash),
          supplemental_documents: T::Array[T.any(Increase::Models::EntityCreateParams::SupplementalDocument, Increase::Internal::AnyHash)],
          third_party_verification: T.any(Increase::Models::EntityCreateParams::ThirdPartyVerification, Increase::Internal::AnyHash),
          trust: T.any(Increase::Models::EntityCreateParams::Trust, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def create(
        # #/components/schemas/create_an_entity_parameters/properties/structure
        structure:,
        # #/components/schemas/create_an_entity_parameters/properties/corporation
        corporation: nil,
        # #/components/schemas/create_an_entity_parameters/properties/description
        description: nil,
        # #/components/schemas/create_an_entity_parameters/properties/government_authority
        government_authority: nil,
        # #/components/schemas/create_an_entity_parameters/properties/joint
        joint: nil,
        # #/components/schemas/create_an_entity_parameters/properties/natural_person
        natural_person: nil,
        # #/components/schemas/create_an_entity_parameters/properties/supplemental_documents
        supplemental_documents: nil,
        # #/components/schemas/create_an_entity_parameters/properties/third_party_verification
        third_party_verification: nil,
        # #/components/schemas/create_an_entity_parameters/properties/trust
        trust: nil,
        request_options: {}
      ); end
      # Retrieve an Entity
      sig do
        params(
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def retrieve(
        # #/paths//entities/{entity_id}/get/parameters/0/schema
        entity_id,
        request_options: {}
      ); end
      # List Entities
      sig do
        params(
          created_at: T.any(Increase::Models::EntityListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::EntityListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::Entity])
      end
      def list(
        created_at: nil,
        # #/paths//entities/get/parameters/0/schema
        cursor: nil,
        # #/paths//entities/get/parameters/7/schema
        idempotency_key: nil,
        # #/paths//entities/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # Archive an Entity
      sig do
        params(
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def archive(
        # #/paths//entities/{entity_id}/archive/post/parameters/0/schema
        entity_id,
        request_options: {}
      ); end
      # Archive a beneficial owner for a corporate Entity
      sig do
        params(
          entity_id: String,
          beneficial_owner_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def archive_beneficial_owner(
        # #/paths//entities/{entity_id}/archive_beneficial_owner/post/parameters/0/schema
        entity_id,
        # #/components/schemas/archive_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner_id
        beneficial_owner_id:,
        request_options: {}
      ); end
      # Depending on your program, you may be required to re-confirm an Entity's details
      # on a recurring basis. After making any required updates, call this endpoint to
      # record that your user confirmed their details.
      sig do
        params(
          entity_id: String,
          confirmed_at: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def confirm(
        # #/paths//entities/{entity_id}/confirm/post/parameters/0/schema
        entity_id,
        # #/components/schemas/confirm_an_entitys_details_are_correct_parameters/properties/confirmed_at
        confirmed_at: nil,
        request_options: {}
      ); end
      # Create a beneficial owner for a corporate Entity
      sig do
        params(
          entity_id: String,
          beneficial_owner: T.any(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def create_beneficial_owner(
        # #/paths//entities/{entity_id}/create_beneficial_owner/post/parameters/0/schema
        entity_id,
        # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner
        beneficial_owner:,
        request_options: {}
      ); end
      # Update a Natural Person or Corporation's address
      sig do
        params(
          entity_id: String,
          address: T.any(Increase::Models::EntityUpdateAddressParams::Address, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def update_address(
        # #/paths//entities/{entity_id}/update_address/post/parameters/0/schema
        entity_id,
        # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address
        address:,
        request_options: {}
      ); end
      # Update the address for a beneficial owner belonging to a corporate Entity
      sig do
        params(
          entity_id: String,
          address: T.any(Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address, Increase::Internal::AnyHash),
          beneficial_owner_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def update_beneficial_owner_address(
        # #/paths//entities/{entity_id}/update_beneficial_owner_address/post/parameters/0/schema
        entity_id,
        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address
        address:,
        # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/beneficial_owner_id
        beneficial_owner_id:,
        request_options: {}
      ); end
      # Update the industry code for a corporate Entity
      sig do
        params(
          entity_id: String,
          industry_code: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Entity)
      end
      def update_industry_code(
        # #/paths//entities/{entity_id}/update_industry_code/post/parameters/0/schema
        entity_id,
        # #/components/schemas/update_the_industry_code_for_a_corporate_entity_parameters/properties/industry_code
        industry_code:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
