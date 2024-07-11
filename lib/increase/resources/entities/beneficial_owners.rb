# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      class BeneficialOwners
        def initialize(client:)
          @client = client
        end

        # Create a beneficial owner for a corporate Entity
        #
        # @param entity_id [String] The identifier of the Entity to associate with the new Beneficial Owner.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [BeneficialOwner] :beneficial_owner The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Entity]
        def create(entity_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/entities/#{entity_id}/create_beneficial_owner"
          req[:body] = params
          req[:model] = Increase::Models::Entity
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
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Entity]
        def archive(entity_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/entities/#{entity_id}/archive_beneficial_owner"
          req[:body] = params
          req[:model] = Increase::Models::Entity
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
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Entity]
        def update_address(entity_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/entities/#{entity_id}/update_beneficial_owner_address"
          req[:body] = params
          req[:model] = Increase::Models::Entity
          @client.request(req, opts)
        end
      end
    end
  end
end
