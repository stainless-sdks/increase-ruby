# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      # Create an Entity
      #
      # @overload create(structure:, corporation: nil, description: nil, government_authority: nil, joint: nil, natural_person: nil, supplemental_documents: nil, third_party_verification: nil, trust: nil, request_options: {})
      #
      # @param structure [Symbol, Increase::Models::EntityCreateParams::Structure]
      # @param corporation [Increase::Models::EntityCreateParams::Corporation]
      # @param description [String]
      # @param government_authority [Increase::Models::EntityCreateParams::GovernmentAuthority]
      # @param joint [Increase::Models::EntityCreateParams::Joint]
      # @param natural_person [Increase::Models::EntityCreateParams::NaturalPerson]
      # @param supplemental_documents [Array<Increase::Models::EntityCreateParams::SupplementalDocument>]
      # @param third_party_verification [Increase::Models::EntityCreateParams::ThirdPartyVerification]
      # @param trust [Increase::Models::EntityCreateParams::Trust]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityCreateParams
      def create(params)
        parsed, options = Increase::Models::EntityCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "entities",
          body: parsed,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # Retrieve an Entity
      #
      # @overload retrieve(entity_id, request_options: {})
      #
      # @param entity_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityRetrieveParams
      def retrieve(entity_id, params = {})
        @client.request(
          method: :get,
          path: ["entities/%1$s", entity_id],
          model: Increase::Models::Entity,
          options: params[:request_options]
        )
      end

      # List Entities
      #
      # @overload list(created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param created_at [Increase::Models::EntityListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::EntityListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::Entity>]
      #
      # @see Increase::Models::EntityListParams
      def list(params = {})
        parsed, options = Increase::Models::EntityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "entities",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # Archive an Entity
      #
      # @overload archive(entity_id, request_options: {})
      #
      # @param entity_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityArchiveParams
      def archive(entity_id, params = {})
        @client.request(
          method: :post,
          path: ["entities/%1$s/archive", entity_id],
          model: Increase::Models::Entity,
          options: params[:request_options]
        )
      end

      # Archive a beneficial owner for a corporate Entity
      #
      # @overload archive_beneficial_owner(entity_id, beneficial_owner_id:, request_options: {})
      #
      # @param entity_id [String]
      # @param beneficial_owner_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityArchiveBeneficialOwnerParams
      def archive_beneficial_owner(entity_id, params)
        parsed, options = Increase::Models::EntityArchiveBeneficialOwnerParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["entities/%1$s/archive_beneficial_owner", entity_id],
          body: parsed,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # Depending on your program, you may be required to re-confirm an Entity's details
      #   on a recurring basis. After making any required updates, call this endpoint to
      #   record that your user confirmed their details.
      #
      # @overload confirm(entity_id, confirmed_at: nil, request_options: {})
      #
      # @param entity_id [String]
      # @param confirmed_at [Time]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityConfirmParams
      def confirm(entity_id, params = {})
        parsed, options = Increase::Models::EntityConfirmParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["entities/%1$s/confirm", entity_id],
          body: parsed,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # Create a beneficial owner for a corporate Entity
      #
      # @overload create_beneficial_owner(entity_id, beneficial_owner:, request_options: {})
      #
      # @param entity_id [String]
      # @param beneficial_owner [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityCreateBeneficialOwnerParams
      def create_beneficial_owner(entity_id, params)
        parsed, options = Increase::Models::EntityCreateBeneficialOwnerParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["entities/%1$s/create_beneficial_owner", entity_id],
          body: parsed,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # Update a Natural Person or Corporation's address
      #
      # @overload update_address(entity_id, address:, request_options: {})
      #
      # @param entity_id [String]
      # @param address [Increase::Models::EntityUpdateAddressParams::Address]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityUpdateAddressParams
      def update_address(entity_id, params)
        parsed, options = Increase::Models::EntityUpdateAddressParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["entities/%1$s/update_address", entity_id],
          body: parsed,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # Update the address for a beneficial owner belonging to a corporate Entity
      #
      # @overload update_beneficial_owner_address(entity_id, address:, beneficial_owner_id:, request_options: {})
      #
      # @param entity_id [String]
      # @param address [Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address]
      # @param beneficial_owner_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityUpdateBeneficialOwnerAddressParams
      def update_beneficial_owner_address(entity_id, params)
        parsed, options = Increase::Models::EntityUpdateBeneficialOwnerAddressParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["entities/%1$s/update_beneficial_owner_address", entity_id],
          body: parsed,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # Update the industry code for a corporate Entity
      #
      # @overload update_industry_code(entity_id, industry_code:, request_options: {})
      #
      # @param entity_id [String]
      # @param industry_code [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Entity]
      #
      # @see Increase::Models::EntityUpdateIndustryCodeParams
      def update_industry_code(entity_id, params)
        parsed, options = Increase::Models::EntityUpdateIndustryCodeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["entities/%1$s/update_industry_code", entity_id],
          body: parsed,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
