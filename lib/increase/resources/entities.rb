# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      # @return [Increase::Resources::Entities::BeneficialOwners]
      attr_reader :beneficial_owners

      # @return [Increase::Resources::Entities::SupplementalDocuments]
      attr_reader :supplemental_documents

      # @return [Increase::Resources::Entities::IndustryCode]
      attr_reader :industry_code

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
      # @option params [Corporation] :corporation Details of the corporation entity to create. Required if `structure` is equal to
      #   `corporation`.
      # @option params [String] :description The description you choose to give the entity.
      # @option params [GovernmentAuthority] :government_authority Details of the Government Authority entity to create. Required if `structure` is
      #   equal to `Government Authority`.
      # @option params [Joint] :joint Details of the joint entity to create. Required if `structure` is equal to
      #   `joint`.
      # @option params [NaturalPerson] :natural_person Details of the natural person entity to create. Required if `structure` is equal
      #   to `natural_person`. Natural people entities should be submitted with
      #   `social_security_number` or `individual_taxpayer_identification_number`
      #   identification methods.
      # @option params [Array<SupplementalDocument>] :supplemental_documents Additional documentation associated with the entity.
      # @option params [Trust] :trust Details of the trust entity to create. Required if `structure` is equal to
      #   `trust`.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::Entity]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Retrieve an Entity
      # 
      # @param entity_id [String] The identifier of the Entity to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::Entity]
      def retrieve(entity_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/entities/#{entity_id}"
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # List Entities
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status] :status
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::Entity>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/entities"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Archive an Entity
      # 
      # @param entity_id [String] The identifier of the Entity to archive. Any accounts associated with an entity
      #   must be closed before the entity can be archived.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::Entity]
      def archive(entity_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/archive"
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
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
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/confirm"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Update a Natural Person or Corporation's address
      # 
      # @param entity_id [String] The identifier of the Entity to archive.
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [Address] :address The entity's physical address. Mail receiving locations like PO Boxes and PMB's
      #   are disallowed.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::Entity]
      def update_address(entity_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/address"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end
    end
  end
end
