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
        # @param params [Hash] Attributes to send in this request.
        # @option params [BeneficialOwner] :beneficial_owner The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        # @option params [String] :entity_id The identifier of the Entity to associate with the new Beneficial Owner.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Entity]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/entity_beneficial_owners"
          req[:body] = params
          req[:model] = Increase::Models::Entity
          @client.request(req, opts)
        end

        # Archive a beneficial owner for a corporate Entity
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        # @option params [String] :entity_id The identifier of the Entity to retrieve.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Entity]
        def archive(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/entity_beneficial_owners/archive"
          req[:body] = params
          req[:model] = Increase::Models::Entity
          @client.request(req, opts)
        end

        # Update the address for a beneficial owner belonging to a corporate Entity
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [Address] :address The individual's physical address. Mail receiving locations like PO Boxes and
        #   PMB's are disallowed.
        # @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        # @option params [String] :entity_id The identifier of the Entity to retrieve.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Entity]
        def update_address(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/entity_beneficial_owners/address"
          req[:body] = params
          req[:model] = Increase::Models::Entity
          @client.request(req, opts)
        end
      end
    end
  end
end
