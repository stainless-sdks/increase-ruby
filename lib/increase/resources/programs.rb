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
        request = {}
        request[:method] = :get
        request[:path] = "/programs/#{program_id}"
        request[:model] = Increase::Models::Program
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
