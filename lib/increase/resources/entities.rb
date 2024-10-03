# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      def initialize(client:)
        @client = client
      end

      # Create an Entity
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Structure] :structure The type of Entity to create.
      # @option params [Corporation, nil] :corporation Details of the corporation entity to create. Required if `structure` is equal to
      #   `corporation`.
      # @option params [String, nil] :description The description you choose to give the entity.
      # @option params [GovernmentAuthority, nil] :government_authority Details of the Government Authority entity to create. Required if `structure` is
      #   equal to `Government Authority`.
      # @option params [Joint, nil] :joint Details of the joint entity to create. Required if `structure` is equal to
      #   `joint`.
      # @option params [NaturalPerson, nil] :natural_person Details of the natural person entity to create. Required if `structure` is equal
      #   to `natural_person`. Natural people entities should be submitted with
      #   `social_security_number` or `individual_taxpayer_identification_number`
      #   identification methods.
      # @option params [Array<SupplementalDocument>, nil] :supplemental_documents Additional documentation associated with the entity.
      # @option params [Trust, nil] :trust Details of the trust entity to create. Required if `structure` is equal to
      #   `trust`.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/entities",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # Retrieve an Entity
      #
      # @param entity_id [String] The identifier of the Entity to retrieve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def retrieve(entity_id, opts = {})
        req = {
          method: :get,
          path: "/entities/#{entity_id}",
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # List Entities
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status, nil] :status
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Entity>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/entities",
          query: params,
          page: Increase::Page,
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # Archive an Entity
      #
      # @param entity_id [String] The identifier of the Entity to archive. Any accounts associated with an entity
      #   must be closed before the entity can be archived.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def archive(entity_id, opts = {})
        req = {
          method: :post,
          path: "/entities/#{entity_id}/archive",
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # Archive a beneficial owner for a corporate Entity
      #
      # @param entity_id [String] The identifier of the Entity associated with the Beneficial Owner that is being
      #   archived.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
      #   corporation.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def archive_beneficial_owner(entity_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/entities/#{entity_id}/archive_beneficial_owner",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # Depending on your program, you may be required to re-confirm an Entity's details
      #   on a recurring basis. After making any required updates, call this endpoint to
      #   record that your user confirmed their details.
      #
      # @param entity_id [String] The identifier of the Entity to confirm the details of.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Time, nil] :confirmed_at When your user confirmed the Entity's details. If not provided, the current time
      #   will be used.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def confirm(entity_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/entities/#{entity_id}/confirm",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # Create a beneficial owner for a corporate Entity
      #
      # @param entity_id [String] The identifier of the Entity to associate with the new Beneficial Owner.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [BeneficialOwner] :beneficial_owner The identifying details of anyone controlling or owning 25% or more of the
      #   corporation.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def create_beneficial_owner(entity_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/entities/#{entity_id}/create_beneficial_owner",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # Update a Natural Person or Corporation's address
      #
      # @param entity_id [String] The identifier of the Entity whose address is being updated.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Address] :address The entity's physical address. Mail receiving locations like PO Boxes and PMB's
      #   are disallowed.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def update_address(entity_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/entities/#{entity_id}/update_address",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # Update the address for a beneficial owner belonging to a corporate Entity
      #
      # @param entity_id [String] The identifier of the Entity associated with the Beneficial Owner whose address
      #   is being updated.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Address] :address The individual's physical address. Mail receiving locations like PO Boxes and
      #   PMB's are disallowed.
      # @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
      #   corporation.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def update_beneficial_owner_address(entity_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/entities/#{entity_id}/update_beneficial_owner_address",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end

      # Update the industry code for a corporate Entity
      #
      # @param entity_id [String] The identifier of the Entity to update. This endpoint only accepts `corporation`
      #   entities.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :industry_code The North American Industry Classification System (NAICS) code for the
      #   corporation's primary line of business. This is a number, like `5132` for
      #   `Software Publishers`. A full list of classification codes is available
      #   [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def update_industry_code(entity_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/entities/#{entity_id}/update_industry_code",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Entity
        }
        @client.request(req, opts)
      end
    end
  end
end
