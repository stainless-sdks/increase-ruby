# frozen_string_literal: true

module Increase
  module Resources
    class ProgramsResource
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
        request = {}
        request[:method] = :get
        request[:path] = "/programs/#{program_id}"
        request[:model] = Increase::Models::Program
        request.merge!(opts)
        @client.request(request)
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
      # @return [Increase::Models::Program]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/programs"
        query_params = [:cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::Program
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
