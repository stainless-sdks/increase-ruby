# frozen_string_literal: true

module Increase
  module Resources
    class DeclinedTransactions
      def initialize(client:)
        @client = client
      end

      # Retrieve a Declined Transaction
      #
      # @param declined_transaction_id [String] The identifier of the Declined Transaction.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DeclinedTransaction]
      def retrieve(declined_transaction_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/declined_transactions/#{declined_transaction_id}"
        req[:model] = Increase::Models::DeclinedTransaction
        @client.request(req, opts)
      end

      # List Declined Transactions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Declined Transactions to ones belonging to the specified Account.
      # @option params [Category, nil] :category
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String, nil] :route_id Filter Declined Transactions to those belonging to the specified route.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::DeclinedTransaction>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/declined_transactions"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::DeclinedTransaction
        @client.request(req, opts)
      end

      class Category < BaseModel
        # @!attribute [rw] in_
        #   Return results whose value is in the provided list. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Category::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Category::In })

        class In < Increase::Enum
          # ACH Decline: details will be under the `ach_decline` object.
          ACH_DECLINE = :ach_decline

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = :card_decline

          # Check Decline: details will be under the `check_decline` object.
          CHECK_DECLINE = :check_decline

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE = :inbound_real_time_payments_transfer_decline

          # Wire Decline: details will be under the `wire_decline` object.
          WIRE_DECLINE = :wire_decline

          # Check Deposit Rejection: details will be under the `check_deposit_rejection` object.
          CHECK_DEPOSIT_REJECTION = :check_deposit_rejection

          # The Declined Transaction was made for an undocumented or deprecated reason.
          OTHER = :other
        end
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
