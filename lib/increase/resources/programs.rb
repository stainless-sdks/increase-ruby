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
    end
  end
end
