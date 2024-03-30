# frozen_string_literal: true

module Increase
  module Resources
    class Files
      def initialize(client:)
        @client = client
      end

      # To upload a file to Increase, you'll need to send a request of Content-Type
      #   `multipart/form-data`. The request should contain the file you would like to
      #   upload, as well as the parameters for creating a file.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :file The file contents. This should follow the specifications of
      #   [RFC 7578](https://datatracker.ietf.org/doc/html/rfc7578) which defines file
      #   transfers for the multipart/form-data protocol.
      # @option params [Symbol] :purpose What the File will be used for in Increase's systems.
      # @option params [String] :description The description you choose to give the File.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::File]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/files"
        request[:body] = params
        request[:model] = Increase::Models::File
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a File
      #
      # @param file_id [String] The identifier of the File.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::File]
      def retrieve(file_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/files/#{file_id}"
        request[:model] = Increase::Models::File
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
