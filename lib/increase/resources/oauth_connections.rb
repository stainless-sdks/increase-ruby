# frozen_string_literal: true

module Increase
  module Resources
    class OAuthConnections
      def initialize(client:)
        @client = client
      end

      # Retrieve an OAuth Connection
      #
      # @param oauth_connection_id [String] The identifier of the OAuth Connection.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::OAuthConnection]
      def retrieve(oauth_connection_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/oauth_connections/#{oauth_connection_id}"
        req[:model] = Increase::Models::OAuthConnection
        @client.request(req, opts)
      end

      # List OAuth Connections
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status, nil] :status
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::OAuthConnection>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/oauth_connections"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::OAuthConnection
        @client.request(req, opts)
      end

      class Status < BaseModel
        # @!attribute [rw] in_
        #   Filter to OAuth Connections by their status. By default, return only the `active` ones. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Status::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Status::In })

        class In < Increase::Enum
          # The OAuth connection is active.
          ACTIVE = :active

          # The OAuth connection is permanently deactivated.
          INACTIVE = :inactive
        end
      end
    end
  end
end
