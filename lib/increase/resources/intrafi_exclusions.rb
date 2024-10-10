# frozen_string_literal: true

module Increase
  module Resources
    class IntrafiExclusions
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create an IntraFi Exclusion
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :bank_name The name of the financial institution to be excluded.
      # @option params [String] :entity_id The identifier of the Entity whose deposits will be excluded.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::IntrafiExclusion]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/intrafi_exclusions",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::IntrafiExclusion
        }
        @client.request(req, opts)
      end

      # Get an IntraFi Exclusion
      #
      # @param intrafi_exclusion_id [String] The identifier of the IntraFi Exclusion to retrieve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::IntrafiExclusion]
      def retrieve(intrafi_exclusion_id, opts = {})
        req = {
          method: :get,
          path: "/intrafi_exclusions/#{intrafi_exclusion_id}",
          model: Increase::Models::IntrafiExclusion
        }
        @client.request(req, opts)
      end

      # List IntraFi Exclusions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :entity_id Filter IntraFi Exclusions for those belonging to the specified Entity.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::IntrafiExclusion>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/intrafi_exclusions",
          query: params,
          page: Increase::Page,
          model: Increase::Models::IntrafiExclusion
        }
        @client.request(req, opts)
      end

      # Archive an IntraFi Exclusion
      #
      # @param intrafi_exclusion_id [String] The identifier of the IntraFi Exclusion request to archive. It may take 5
      #   business days for an exclusion removal to be processed. Removing an exclusion
      #   does not guarantee that funds will be swept to the previously-excluded bank.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::IntrafiExclusion]
      def archive(intrafi_exclusion_id, opts = {})
        req = {
          method: :post,
          path: "/intrafi_exclusions/#{intrafi_exclusion_id}/archive",
          model: Increase::Models::IntrafiExclusion
        }
        @client.request(req, opts)
      end
    end
  end
end
