# frozen_string_literal: true

module Increase
  module Resources
    module Simulations
      class DocumentsResource
        def initialize(client:)
          @client = client
        end

        # Simulates an tax document being created for an account.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_id The identifier of the Account the tax document is for.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Document]
        def create(params = {}, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/documents"
          body_params = [:account_id]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::Document
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
