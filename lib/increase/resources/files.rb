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
        req = {}
        req[:method] = :post
        req[:path] = "/files"
        req[:body] = params
        req[:model] = Increase::Models::File
        @client.request(req, opts)
      end

      # Retrieve a File
      # 
      # @param file_id [String] The identifier of the File.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::File]
      def retrieve(file_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/files/#{file_id}"
        req[:model] = Increase::Models::File
        @client.request(req, opts)
      end

      # List Files
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Purpose] :purpose
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::File>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/files"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::File
        @client.request(req, opts)
      end
    end
  end
end
