# frozen_string_literal: true

module Increase
  module Resources
    class OAuthApplications
      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Retrieve an OAuth Application
      #
      # @param oauth_application_id [String] The identifier of the OAuth Application.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::OAuthApplication]
      #
      def retrieve(oauth_application_id, opts = {})
        req = {
          method: :get,
          path: ["oauth_applications/%0s", oauth_application_id],
          model: Increase::Models::OAuthApplication
        }
        @client.request(req, opts)
      end

      # List OAuth Applications
      #
      # @param params [Increase::Models::OAuthApplicationListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Increase::Models::OAuthApplicationListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::OAuthApplicationListParams::Status] :status
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::OAuthApplication>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::OAuthApplicationListParams.dump(params)
        req = {
          method: :get,
          path: "oauth_applications",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::OAuthApplication
        }
        @client.request(req, opts)
      end
    end
  end
end
