# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      # Create an Entity
      #
      # @param params [Increase::Models::EntityCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Increase::Models::EntityCreateParams::Structure] :structure The type of Entity to create.
      #
      #   @option params [Increase::Models::EntityCreateParams::Corporation] :corporation Details of the corporation entity to create. Required if `structure` is equal to
      #     `corporation`.
      #
      #   @option params [String] :description The description you choose to give the entity.
      #
      #   @option params [Increase::Models::EntityCreateParams::GovernmentAuthority] :government_authority Details of the Government Authority entity to create. Required if `structure` is
      #     equal to `Government Authority`.
      #
      #   @option params [Increase::Models::EntityCreateParams::Joint] :joint Details of the joint entity to create. Required if `structure` is equal to
      #     `joint`.
      #
      #   @option params [Increase::Models::EntityCreateParams::NaturalPerson] :natural_person Details of the natural person entity to create. Required if `structure` is equal
      #     to `natural_person`. Natural people entities should be submitted with
      #     `social_security_number` or `individual_taxpayer_identification_number`
      #     identification methods.
      #
      #   @option params [Array<Increase::Models::EntityCreateParams::SupplementalDocument>] :supplemental_documents Additional documentation associated with the entity.
      #
      #   @option params [Increase::Models::EntityCreateParams::ThirdPartyVerification] :third_party_verification A reference to data stored in a third-party verification service. Your
      #     integration may or may not use this field.
      #
      #   @option params [Increase::Models::EntityCreateParams::Trust] :trust Details of the trust entity to create. Required if `structure` is equal to
      #     `trust`.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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
      # @param entity_id [String] The identifier of the Entity to retrieve.
      #
      # @param params [Increase::Models::EntityRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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
      # @param params [Increase::Models::EntityListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::EntityListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::EntityListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::Entity>]
      def list(params = {})
        parsed, options = Increase::Models::EntityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "entities",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Entity,
          options: options
        )
      end

      # Archive an Entity
      #
      # @param entity_id [String] The identifier of the Entity to archive. Any accounts associated with an entity
      #   must be closed before the entity can be archived.
      #
      # @param params [Increase::Models::EntityArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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
      # @param entity_id [String] The identifier of the Entity associated with the Beneficial Owner that is being
      #   archived.
      #
      # @param params [Increase::Models::EntityArchiveBeneficialOwnerParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
      #     corporation.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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
      # @param entity_id [String] The identifier of the Entity to confirm the details of.
      #
      # @param params [Increase::Models::EntityConfirmParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :confirmed_at When your user confirmed the Entity's details. If not provided, the current time
      #     will be used.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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
      # @param entity_id [String] The identifier of the Entity to associate with the new Beneficial Owner.
      #
      # @param params [Increase::Models::EntityCreateBeneficialOwnerParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner] :beneficial_owner The identifying details of anyone controlling or owning 25% or more of the
      #     corporation.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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
      # @param entity_id [String] The identifier of the Entity whose address is being updated.
      #
      # @param params [Increase::Models::EntityUpdateAddressParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::EntityUpdateAddressParams::Address] :address The entity's physical address. Mail receiving locations like PO Boxes and PMB's
      #     are disallowed.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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
      # @param entity_id [String] The identifier of the Entity associated with the Beneficial Owner whose address
      #   is being updated.
      #
      # @param params [Increase::Models::EntityUpdateBeneficialOwnerAddressParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address] :address The individual's physical address. Mail receiving locations like PO Boxes and
      #     PMB's are disallowed.
      #
      #   @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
      #     corporation.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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
      # @param entity_id [String] The identifier of the Entity to update. This endpoint only accepts `corporation`
      #   entities.
      #
      # @param params [Increase::Models::EntityUpdateIndustryCodeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :industry_code The North American Industry Classification System (NAICS) code for the
      #     corporation's primary line of business. This is a number, like `5132` for
      #     `Software Publishers`. A full list of classification codes is available
      #     [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Entity]
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

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
