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
          request = {}
          request[:method] = :post
          request[:path] = "/intrafi_exclusions"
          body_params = [:bank_name, :entity_id]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::IntrafiExclusion
          request.merge!(opts)
          @client.request(request)
        end

        # Get an IntraFi Exclusion
        #
        # @param intrafi_exclusion_id [String] The identifier of the IntraFi Exclusion to retrieve.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::IntrafiExclusion]
        def retrieve(intrafi_exclusion_id, opts = {})
          request = {}
          request[:method] = :get
          request[:path] = "/intrafi_exclusions/#{intrafi_exclusion_id}"
          request[:model] = Increase::Models::IntrafiExclusion
          request.merge!(opts)
          @client.request(request)
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
          request = {}
          request[:method] = :post
          request[:path] = "/intrafi_exclusions/#{intrafi_exclusion_id}/archive"
          request[:model] = Increase::Models::IntrafiExclusion
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
