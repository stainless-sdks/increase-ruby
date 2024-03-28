# frozen_string_literal: true

module Increase
  module Resources
    module Entities
      class BeneficialOwnersResource
        def initialize(client:)
          @client = client
        end

        # Create a beneficial owner for a corporate Entity
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Hash] :beneficial_owner The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        # @option params [String] :entity_id The identifier of the Entity to associate with the new Beneficial Owner.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Entity]
        def create(params = {}, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/entity_beneficial_owners"
          body_params = [:beneficial_owner, :entity_id]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::Entity
          request.merge!(opts)
          @client.request(request)
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
          request = {}
          request[:method] = :post
          request[:path] = "/entity_beneficial_owners/archive"
          body_params = [:beneficial_owner_id, :entity_id]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::Entity
          request.merge!(opts)
          @client.request(request)
        end

        # Update the address for a beneficial owner belonging to a corporate Entity
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Hash] :address The individual's physical address. Mail receiving locations like PO Boxes and
        #   PMB's are disallowed.
        # @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        # @option params [String] :entity_id The identifier of the Entity to retrieve.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Entity]
        def update_address(params = {}, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/entity_beneficial_owners/address"
          body_params = [:address, :beneficial_owner_id, :entity_id]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::Entity
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
