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
      # @option params [String] :description The description you choose for the Lockbox, for display purposes.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @option params [String] :description The description you choose for the Lockbox.
      # @option params [Symbol] :status This indicates if checks can be sent to the Lockbox.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @option params [String] :account_id Filter Lockboxes to those associated with the provided Account.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
    end
  end
end
