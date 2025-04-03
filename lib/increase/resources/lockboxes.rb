# frozen_string_literal: true

module Increase
  module Resources
    class Lockboxes
      # Create a Lockbox
      #
      # @overload create(account_id:, description: nil, recipient_name: nil, request_options: {})
      #
      # @param account_id [String]
      # @param description [String]
      # @param recipient_name [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Lockbox]
      #
      # @see Increase::Models::LockboxCreateParams
      def create(params)
        parsed, options = Increase::Models::LockboxCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "lockboxes",
          body: parsed,
          model: Increase::Models::Lockbox,
          options: options
        )
      end

      # Retrieve a Lockbox
      #
      # @overload retrieve(lockbox_id, request_options: {})
      #
      # @param lockbox_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Lockbox]
      #
      # @see Increase::Models::LockboxRetrieveParams
      def retrieve(lockbox_id, params = {})
        @client.request(
          method: :get,
          path: ["lockboxes/%1$s", lockbox_id],
          model: Increase::Models::Lockbox,
          options: params[:request_options]
        )
      end

      # Update a Lockbox
      #
      # @overload update(lockbox_id, description: nil, recipient_name: nil, status: nil, request_options: {})
      #
      # @param lockbox_id [String]
      # @param description [String]
      # @param recipient_name [String]
      # @param status [Symbol, Increase::Models::LockboxUpdateParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Lockbox]
      #
      # @see Increase::Models::LockboxUpdateParams
      def update(lockbox_id, params = {})
        parsed, options = Increase::Models::LockboxUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["lockboxes/%1$s", lockbox_id],
          body: parsed,
          model: Increase::Models::Lockbox,
          options: options
        )
      end

      # List Lockboxes
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param account_id [String]
      # @param created_at [Increase::Models::LockboxListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::Lockbox>]
      #
      # @see Increase::Models::LockboxListParams
      def list(params = {})
        parsed, options = Increase::Models::LockboxListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "lockboxes",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Lockbox,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
