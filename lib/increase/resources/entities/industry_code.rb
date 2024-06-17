# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      class IndustryCode
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
        #   `Software Publishers`. A full list of classification codes is available
        #   [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Entity]
        def create(entity_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/entities/#{entity_id}/industry_code"
          req[:body] = params
          req[:model] = Increase::Models::Entity
          @client.request(req, opts)
        end
      end
    end
  end
end
