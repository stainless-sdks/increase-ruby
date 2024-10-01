# frozen_string_literal: true

module Increase
  module Resources
    class Lockboxes
      def initialize(client:)
        @client = client
      end

      # Create a Lockbox
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The Account checks sent to this Lockbox should be deposited into.
      # @option params [String, nil] :description The description you choose for the Lockbox, for display purposes.
      # @option params [String, nil] :recipient_name The name of the recipient that will receive mail at this location.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Lockbox]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/lockboxes"
        req[:body] = params
        req[:model] = Increase::Models::Lockbox
        @client.request(req, opts)
      end

      # Retrieve a Lockbox
      #
      # @param lockbox_id [String] The identifier of the Lockbox to retrieve.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Lockbox]
      def retrieve(lockbox_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/lockboxes/#{lockbox_id}"
        req[:model] = Increase::Models::Lockbox
        @client.request(req, opts)
      end

      # Update a Lockbox
      #
      # @param lockbox_id [String] The identifier of the Lockbox.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :description The description you choose for the Lockbox.
      # @option params [String, nil] :recipient_name The recipient name you choose for the Lockbox.
      # @option params [Symbol, Status, nil] :status This indicates if checks can be sent to the Lockbox.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Lockbox]
      def update(lockbox_id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/lockboxes/#{lockbox_id}"
        req[:body] = params
        req[:model] = Increase::Models::Lockbox
        @client.request(req, opts)
      end

      # List Lockboxes
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Lockboxes to those associated with the provided Account.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Lockbox>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/lockboxes"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::Lockbox
        @client.request(req, opts)
      end

      # This indicates if checks can be sent to the Lockbox.
      class Status < Increase::Enum
        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = :active

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = :inactive
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
    end
  end
end
