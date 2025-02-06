# frozen_string_literal: true

module Increase
  module Resources
    class OAuthApplications
      # Retrieve an OAuth Application
      #
      # @param oauth_application_id [String] The identifier of the OAuth Application.
      #
      # @param params [Increase::Models::OAuthApplicationRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::OAuthApplication]
      #
      def retrieve(oauth_application_id, params = {})
        @client.request(
          method: :get,
          path: ["oauth_applications/%0s", oauth_application_id],
          model: Increase::Models::OAuthApplication,
          options: params[:request_options]
        )
      end

      # List OAuth Applications
      #
      # @param params [Increase::Models::OAuthApplicationListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::OAuthApplication>]
      #
      def list(params = {})
        parsed, options = Increase::Models::OAuthApplicationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "oauth_applications",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::OAuthApplication,
          options: options
        )
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
