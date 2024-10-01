# frozen_string_literal: true

module Increase
  module Resources
    class CardDisputes
      def initialize(client:)
        @client = client
      end

      # Create a Card Dispute
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :disputed_transaction_id The Transaction you wish to dispute. This Transaction must have a `source_type`
      #   of `card_settlement`.
      # @option params [String] :explanation Why you are disputing this Transaction.
      # @option params [Integer, nil] :amount The monetary amount of the part of the transaction that is being disputed. This
      #   is optional and will default to the full amount of the transaction if not
      #   provided. If provided, the amount must be less than or equal to the amount of
      #   the transaction.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardDispute]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/card_disputes"
        req[:body] = params
        req[:model] = Increase::Models::CardDispute
        @client.request(req, opts)
      end

      # Retrieve a Card Dispute
      #
      # @param card_dispute_id [String] The identifier of the Card Dispute.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardDispute]
      def retrieve(card_dispute_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/card_disputes/#{card_dispute_id}"
        req[:model] = Increase::Models::CardDispute
        @client.request(req, opts)
      end

      # List Card Disputes
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status, nil] :status
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::CardDispute>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/card_disputes"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::CardDispute
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

      class Status < BaseModel
        # @!attribute [rw] in_
        #   Filter Card Disputes for those with the specified status or statuses. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Status::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Status::In })

        class In < Increase::Enum
          # The Card Dispute is pending review.
          PENDING_REVIEWING = :pending_reviewing

          # The Card Dispute has been accepted and your funds have been returned. The card dispute will eventually transition into `won` or `lost` depending on the outcome.
          ACCEPTED = :accepted

          # The Card Dispute has been rejected.
          REJECTED = :rejected

          # The Card Dispute has been lost and funds previously credited from the acceptance have been debited.
          LOST = :lost

          # The Card Dispute has been won and no further action can be taken.
          WON = :won
        end
      end
    end
  end
end
