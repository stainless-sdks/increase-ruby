# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class Documents
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
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/documents"
          req[:body] = params
          req[:model] = Increase::Models::Document
          @client.request(req, opts)
        end
      end
    end
  end
end
