# frozen_string_literal: true

module Increase
  module Resources
    class InboundCheckDeposits
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Check Deposit
      #
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to get details for.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundCheckDeposit]
      def retrieve(inbound_check_deposit_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_check_deposits/#{inbound_check_deposit_id}"
        req[:model] = Increase::Models::InboundCheckDeposit
        @client.request(req, opts)
      end

      # List Inbound Check Deposits
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Inbound Check Deposits to those belonging to the specified Account.
      # @option params [String, nil] :check_transfer_id Filter Inbound Check Deposits to those belonging to the specified Check
      #   Transfer.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundCheckDeposit>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_check_deposits"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::InboundCheckDeposit
        @client.request(req, opts)
      end

      # Decline an Inbound Check Deposit
      #
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to decline.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundCheckDeposit]
      def decline(inbound_check_deposit_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/inbound_check_deposits/#{inbound_check_deposit_id}/decline"
        req[:model] = Increase::Models::InboundCheckDeposit
        @client.request(req, opts)
      end

      # Return an Inbound Check Deposit
      #
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to return.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Reason] :reason The reason to return the Inbound Check Deposit.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundCheckDeposit]
      def return_(inbound_check_deposit_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/inbound_check_deposits/#{inbound_check_deposit_id}/return"
        req[:body] = params
        req[:model] = Increase::Models::InboundCheckDeposit
        @client.request(req, opts)
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end

      # The reason to return the Inbound Check Deposit.
      class Reason < Increase::Enum
        # The check was altered or fictitious.
        ALTERED_OR_FICTITIOUS = :altered_or_fictitious

        # The check was not authorized.
        NOT_AUTHORIZED = :not_authorized

        # The check was a duplicate presentment.
        DUPLICATE_PRESENTMENT = :duplicate_presentment

        # The check was not endorsed.
        ENDORSEMENT_MISSING = :endorsement_missing

        # The check was not endorsed by the payee.
        ENDORSEMENT_IRREGULAR = :endorsement_irregular
      end
    end
  end
end
