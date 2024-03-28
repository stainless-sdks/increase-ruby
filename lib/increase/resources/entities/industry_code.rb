# frozen_string_literal: true

module Increase
  module Resources
    module Entities
      class IndustryCodeResource
        def initialize(client:)
          @client = client
        end

        # Update the industry code for a corporate Entity
        #
        # @param entity_id [String] The identifier of the Entity to update. This endpoint only accepts `corporation`
        #   entities.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :industry_code The North American Industry Classification System (NAICS) code for the
        #   corporation's primary line of business. This is a number, like `5132` for
        #   `Software Publishers`. A full list of classification codes is available at
        #   https://www.naics.com.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Entity]
        def create(entity_id, params = {}, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/entities/#{entity_id}/industry_code"
          body_params = [:industry_code]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::Entity
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
