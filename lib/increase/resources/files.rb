# frozen_string_literal: true

module Increase
  module Resources
    class Files
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # To upload a file to Increase, you'll need to send a request of Content-Type
      #   `multipart/form-data`. The request should contain the file you would like to
      #   upload, as well as the parameters for creating a file.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :file The file contents. This should follow the specifications of
      #     [RFC 7578](https://datatracker.ietf.org/doc/html/rfc7578) which defines file
      #     transfers for the multipart/form-data protocol.
      #   @option params [Symbol, Purpose] :purpose What the File will be used for in Increase's systems.
      #   @option params [String, nil] :description The description you choose to give the File.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::File]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/files",
          headers: {"Content-Type" => "multipart/form-data"},
          body: params,
          model: Increase::Models::File
        }
        @client.request(req, opts)
      end

      # Retrieve a File
      #
      # @param file_id [String] The identifier of the File.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::File]
      def retrieve(file_id, opts = {})
        req = {
          method: :get,
          path: "/files/#{file_id}",
          model: Increase::Models::File
        }
        @client.request(req, opts)
      end

      # List Files
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #   @option params [Purpose, nil] :purpose
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::File>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/files",
          query: params,
          page: Increase::Page,
          model: Increase::Models::File
        }
        @client.request(req, opts)
      end
    end
  end
end
