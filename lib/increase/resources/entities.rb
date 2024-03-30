# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      attr_reader :beneficial_owners, :supplemental_documents, :industry_code

      def initialize(client:)
        @client = client
        @beneficial_owners = Increase::Resources::Entities::BeneficialOwners.new(client: client)
        @supplemental_documents = Increase::Resources::Entities::SupplementalDocuments.new(client: client)
        @industry_code = Increase::Resources::Entities::IndustryCode.new(client: client)
      end

      # Create an Entity
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :structure The type of Entity to create.
      # @option params [Hash] :corporation Details of the corporation entity to create. Required if `structure` is equal to
      #   `corporation`.
      # @option params [String] :description The description you choose to give the entity.
      # @option params [Hash] :joint Details of the joint entity to create. Required if `structure` is equal to
      #   `joint`.
      # @option params [Hash] :natural_person Details of the natural person entity to create. Required if `structure` is equal
      #   to `natural_person`. Natural people entities should be submitted with
      #   `social_security_number` or `individual_taxpayer_identification_number`
      #   identification methods.
      # @option params [Symbol] :relationship The relationship between your group and the entity.
      # @option params [Array<Hash>] :supplemental_documents Additional documentation associated with the entity.
      # @option params [Hash] :trust Details of the trust entity to create. Required if `structure` is equal to
      #   `trust`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/entities"
        body_params = [
          :structure,
          :corporation,
          :description,
          :joint,
          :natural_person,
          :relationship,
          :supplemental_documents,
          :trust
        ]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::Entity
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an Entity
      #
      # @param entity_id [String] The identifier of the Entity to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def retrieve(entity_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/entities/#{entity_id}"
        request[:model] = Increase::Models::Entity
        request.merge!(opts)
        @client.request(request)
      end

      # Archive an Entity
      #
      # @param entity_id [String] The identifier of the Entity to archive. Any accounts associated with an entity
      #   must be closed before the entity can be archived.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def archive(entity_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/entities/#{entity_id}/archive"
        request[:model] = Increase::Models::Entity
        request.merge!(opts)
        @client.request(request)
      end

      # Depending on your program, you may be required to re-confirm an Entity's details
      #   on a recurring basis. After making any required updates, call this endpoint to
      #   record that your user confirmed their details.
      #
      # @param entity_id [String] The identifier of the Entity to confirm the details of.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :confirmed_at When your user confirmed the Entity's details. If not provided, the current time
      #   will be used.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def confirm(entity_id, params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/entities/#{entity_id}/confirm"
        body_params = [:confirmed_at]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::Entity
        request.merge!(opts)
        @client.request(request)
      end

      # Update a Natural Person or Corporation's address
      #
      # @param entity_id [String] The identifier of the Entity to archive.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :address The entity's physical address. Mail receiving locations like PO Boxes and PMB's
      #   are disallowed.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def update_address(entity_id, params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/entities/#{entity_id}/address"
        body_params = [:address]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::Entity
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
