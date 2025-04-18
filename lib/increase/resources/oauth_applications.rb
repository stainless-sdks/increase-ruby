# frozen_string_literal: true

module Increase
  module Resources
    class OAuthApplications
      # @api private
      private def initialize_resources; end

      # Retrieve an OAuth Application
      #
      # @overload retrieve(oauth_application_id, request_options: {})
      #
      # @param oauth_application_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::OAuthApplication]
      #
      # @see Increase::Models::OAuthApplicationRetrieveParams
      def retrieve(oauth_application_id, params = {})
        @client.request(
          method: :get,
          path: ["oauth_applications/%1$s", oauth_application_id],
          model: Increase::Models::OAuthApplication,
          options: params[:request_options]
        )
      end

      # List OAuth Applications
      #
      # @overload list(created_at: nil, cursor: nil, limit: nil, status: nil, request_options: {})
      #
      # @param created_at [Increase::Models::OAuthApplicationListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param status [Increase::Models::OAuthApplicationListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::OAuthApplication>]
      #
      # @see Increase::Models::OAuthApplicationListParams
      def list(params = {})
        parsed, options = Increase::Models::OAuthApplicationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "oauth_applications",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::OAuthApplication,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
