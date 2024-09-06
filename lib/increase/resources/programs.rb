# frozen_string_literal: true

module Increase
  module Resources
    class Programs
      def initialize(client:)
        @client = client
      end

      # Retrieve a Program
      # 
      # @param program_id [String] The identifier of the Program to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::Program]
      def retrieve(program_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/programs/#{program_id}"
        req[:model] = Increase::Models::Program
        @client.request(req, opts)
      end

      # List Programs
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::Program>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/programs"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::Program
        @client.request(req, opts)
      end
    end
  end
end
