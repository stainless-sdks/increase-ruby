# frozen_string_literal: true

module Increase
  module Resources
    class Lockboxes
      # Create a Lockbox
      #
      # @param params [Increase::Models::LockboxCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :account_id The Account checks sent to this Lockbox should be deposited into.
      #
      #   @option params [String] :description The description you choose for the Lockbox, for display purposes.
      #
      #   @option params [String] :recipient_name The name of the recipient that will receive mail at this location.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Lockbox]
      #
      def create(params = {}, opts = {})
        parsed = Increase::Models::LockboxCreateParams.dump(params)
        req = {
          method: :post,
          path: "lockboxes",
          body: parsed,
          model: Increase::Models::Lockbox
        }
        @client.request(req, opts)
      end

      # Retrieve a Lockbox
      #
      # @param lockbox_id [String] The identifier of the Lockbox to retrieve.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Lockbox]
      #
      def retrieve(lockbox_id, opts = {})
        req = {
          method: :get,
          path: ["lockboxes/%0s", lockbox_id],
          model: Increase::Models::Lockbox
        }
        @client.request(req, opts)
      end

      # Update a Lockbox
      #
      # @param lockbox_id [String] The identifier of the Lockbox.
      #
      # @param params [Increase::Models::LockboxUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :description The description you choose for the Lockbox.
      #
      #   @option params [String] :recipient_name The recipient name you choose for the Lockbox.
      #
      #   @option params [Symbol, Increase::Models::LockboxUpdateParams::Status] :status This indicates if checks can be sent to the Lockbox.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Lockbox]
      #
      def update(lockbox_id, params = {}, opts = {})
        parsed = Increase::Models::LockboxUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["lockboxes/%0s", lockbox_id],
          body: parsed,
          model: Increase::Models::Lockbox
        }
        @client.request(req, opts)
      end

      # List Lockboxes
      #
      # @param params [Increase::Models::LockboxListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :account_id Filter Lockboxes to those associated with the provided Account.
      #
      #   @option params [Increase::Models::LockboxListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Lockbox>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::LockboxListParams.dump(params)
        req = {
          method: :get,
          path: "lockboxes",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Lockbox
        }
        @client.request(req, opts)
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
