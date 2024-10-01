# frozen_string_literal: true

module Increase
  module Resources
    class PendingTransactions
      def initialize(client:)
        @client = client
      end

      # Retrieve a Pending Transaction
      #
      # @param pending_transaction_id [String] The identifier of the Pending Transaction.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PendingTransaction]
      def retrieve(pending_transaction_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/pending_transactions/#{pending_transaction_id}"
        req[:model] = Increase::Models::PendingTransaction
        @client.request(req, opts)
      end

      # List Pending Transactions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter pending transactions to those belonging to the specified Account.
      # @option params [Category, nil] :category
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String, nil] :route_id Filter pending transactions to those belonging to the specified Route.
      # @option params [Status, nil] :status
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::PendingTransaction>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/pending_transactions"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::PendingTransaction
        @client.request(req, opts)
      end

      class Category < BaseModel
        # @!attribute [rw] in_
        #   Return results whose value is in the provided list. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Category::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Category::In })

        class In < Increase::Enum
          # Account Transfer Instruction: details will be under the `account_transfer_instruction` object.
          ACCOUNT_TRANSFER_INSTRUCTION = :account_transfer_instruction

          # ACH Transfer Instruction: details will be under the `ach_transfer_instruction` object.
          ACH_TRANSFER_INSTRUCTION = :ach_transfer_instruction

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION = :card_authorization

          # Check Deposit Instruction: details will be under the `check_deposit_instruction` object.
          CHECK_DEPOSIT_INSTRUCTION = :check_deposit_instruction

          # Check Transfer Instruction: details will be under the `check_transfer_instruction` object.
          CHECK_TRANSFER_INSTRUCTION = :check_transfer_instruction

          # Inbound Funds Hold: details will be under the `inbound_funds_hold` object.
          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          # Real-Time Payments Transfer Instruction: details will be under the `real_time_payments_transfer_instruction` object.
          REAL_TIME_PAYMENTS_TRANSFER_INSTRUCTION = :real_time_payments_transfer_instruction

          # Wire Transfer Instruction: details will be under the `wire_transfer_instruction` object.
          WIRE_TRANSFER_INSTRUCTION = :wire_transfer_instruction

          # The Pending Transaction was made for an undocumented or deprecated reason.
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

      class Status < BaseModel
        # @!attribute [rw] in_
        #   Filter Pending Transactions for those with the specified status. By default only Pending Transactions in with status `pending` will be returned. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Status::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Status::In })

        class In < Increase::Enum
          # The Pending Transaction is still awaiting confirmation.
          PENDING = :pending

          # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
          COMPLETE = :complete
        end
      end
    end
  end
end
