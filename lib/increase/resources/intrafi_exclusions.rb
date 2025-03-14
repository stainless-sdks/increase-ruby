# frozen_string_literal: true

module Increase
  module Resources
    class IntrafiExclusions
      # Create an IntraFi Exclusion
      #
      # @param params [Increase::Models::IntrafiExclusionCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :bank_name The name of the financial institution to be excluded.
      #
      #   @option params [String] :entity_id The identifier of the Entity whose deposits will be excluded.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::IntrafiExclusion]
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
      # @param intrafi_exclusion_id [String] The identifier of the IntraFi Exclusion to retrieve.
      #
      # @param params [Increase::Models::IntrafiExclusionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::IntrafiExclusion]
      def retrieve(intrafi_exclusion_id, params = {})
        @client.request(
          method: :get,
          path: ["intrafi_exclusions/%0s", intrafi_exclusion_id],
          model: Increase::Models::IntrafiExclusion,
          options: params[:request_options]
        )
      end

      # List IntraFi Exclusions
      #
      # @param params [Increase::Models::IntrafiExclusionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :entity_id Filter IntraFi Exclusions for those belonging to the specified Entity.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::IntrafiExclusion>]
      def list(params = {})
        parsed, options = Increase::Models::IntrafiExclusionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "intrafi_exclusions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::IntrafiExclusion,
          options: options
        )
      end

      # Archive an IntraFi Exclusion
      #
      # @param intrafi_exclusion_id [String] The identifier of the IntraFi Exclusion request to archive. It may take 5
      #   business days for an exclusion removal to be processed. Removing an exclusion
      #   does not guarantee that funds will be swept to the previously-excluded bank.
      #
      # @param params [Increase::Models::IntrafiExclusionArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::IntrafiExclusion]
      def archive(intrafi_exclusion_id, params = {})
        @client.request(
          method: :post,
          path: ["intrafi_exclusions/%0s/archive", intrafi_exclusion_id],
          model: Increase::Models::IntrafiExclusion,
          options: params[:request_options]
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
