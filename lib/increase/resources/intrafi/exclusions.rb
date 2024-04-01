# frozen_string_literal: true

module Increase
  module Resources
    class Intrafi
      class Exclusions
        def initialize(client:)
          @client = client
        end

        # Create an IntraFi Exclusion
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :bank_name The name of the financial institution to be excluded.
        # @option params [String] :entity_id The identifier of the Entity whose deposits will be excluded.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::IntrafiExclusion]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/intrafi_exclusions"
          req[:body] = params
          req[:model] = Increase::Models::IntrafiExclusion
          @client.request(req, opts)
        end

        # Get an IntraFi Exclusion
        #
        # @param intrafi_exclusion_id [String] The identifier of the IntraFi Exclusion to retrieve.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::IntrafiExclusion]
        def retrieve(intrafi_exclusion_id, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/intrafi_exclusions/#{intrafi_exclusion_id}"
          req[:model] = Increase::Models::IntrafiExclusion
          @client.request(req, opts)
        end

        # Archive an IntraFi Exclusion
        #
        # @param intrafi_exclusion_id [String] The identifier of the IntraFi Exclusion request to archive. It may take 5
        #   business days for an exclusion removal to be processed. Removing an exclusion
        #   does not guarantee that funds will be swept to the previously-excluded bank.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::IntrafiExclusion]
        def archive(intrafi_exclusion_id, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/intrafi_exclusions/#{intrafi_exclusion_id}/archive"
          req[:model] = Increase::Models::IntrafiExclusion
          @client.request(req, opts)
        end
      end
    end
  end
end
