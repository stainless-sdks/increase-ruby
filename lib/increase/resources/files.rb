# frozen_string_literal: true

module Increase
  module Resources
    class FilesResource
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
        body_params = [:file, :purpose, :description]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
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

      # List Files
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Hash] :purpose
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::File]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/files"
        query_params = [:created_at, :cursor, :idempotency_key, :limit, :purpose]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::File
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
