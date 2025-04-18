# frozen_string_literal: true

module Increase
  module Resources
    class IntrafiExclusions
      # @api private
      private def initialize_resources; end

      # Create an IntraFi Exclusion
      #
      # @overload create(bank_name:, entity_id:, request_options: {})
      #
      # @param bank_name [String]
      # @param entity_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::IntrafiExclusion]
      #
      # @see Increase::Models::IntrafiExclusionCreateParams
      def create(params)
        parsed, options = Increase::Models::IntrafiExclusionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "intrafi_exclusions",
          body: parsed,
          model: Increase::Models::IntrafiExclusion,
          options: options
        )
      end

      # Get an IntraFi Exclusion
      #
      # @overload retrieve(intrafi_exclusion_id, request_options: {})
      #
      # @param intrafi_exclusion_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::IntrafiExclusion]
      #
      # @see Increase::Models::IntrafiExclusionRetrieveParams
      def retrieve(intrafi_exclusion_id, params = {})
        @client.request(
          method: :get,
          path: ["intrafi_exclusions/%1$s", intrafi_exclusion_id],
          model: Increase::Models::IntrafiExclusion,
          options: params[:request_options]
        )
      end

      # List IntraFi Exclusions
      #
      # @overload list(cursor: nil, entity_id: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param cursor [String]
      # @param entity_id [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::IntrafiExclusion>]
      #
      # @see Increase::Models::IntrafiExclusionListParams
      def list(params = {})
        parsed, options = Increase::Models::IntrafiExclusionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "intrafi_exclusions",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::IntrafiExclusion,
          options: options
        )
      end

      # Archive an IntraFi Exclusion
      #
      # @overload archive(intrafi_exclusion_id, request_options: {})
      #
      # @param intrafi_exclusion_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::IntrafiExclusion]
      #
      # @see Increase::Models::IntrafiExclusionArchiveParams
      def archive(intrafi_exclusion_id, params = {})
        @client.request(
          method: :post,
          path: ["intrafi_exclusions/%1$s/archive", intrafi_exclusion_id],
          model: Increase::Models::IntrafiExclusion,
          options: params[:request_options]
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
