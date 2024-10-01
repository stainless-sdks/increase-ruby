# frozen_string_literal: true

module Increase
  module Resources
    class InboundACHTransfers
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to get details for.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def retrieve(inbound_ach_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}"
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
      end

      # List Inbound ACH Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Inbound ACH Tranfers to ones belonging to the specified Account.
      # @option params [String, nil] :account_number_id Filter Inbound ACH Tranfers to ones belonging to the specified Account Number.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Symbol, Status, nil] :status Filter Inbound ACH Transfers to those with the specified status.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundACHTransfer>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_ach_transfers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
      end

      # Create a notification of change for an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer for which to create a notification of
      #   change.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :updated_account_number The updated account number to send in the notification of change.
      # @option params [String, nil] :updated_routing_number The updated routing number to send in the notification of change.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def create_notification_of_change(inbound_ach_transfer_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/create_notification_of_change"
        req[:body] = params
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
      end

      # Decline an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to decline.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Reason, nil] :reason The reason why this transfer will be returned. If this parameter is unset, the
      #   return codes will be `payment_stopped` for debits and
      #   `credit_entry_refused_by_receiver` for credits.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def decline(inbound_ach_transfer_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/decline"
        req[:body] = params
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
      end

      # Return an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to return to the originating
      #   financial institution.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Reason] :reason The reason why this transfer will be returned. The most usual return codes are
      #   `payment_stopped` for debits and `credit_entry_refused_by_receiver` for credits.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def transfer_return(inbound_ach_transfer_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/transfer_return"
        req[:body] = params
        req[:model] = Increase::Models::InboundACHTransfer
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

      # Filter Inbound ACH Transfers to those with the specified status.
      class Status < Increase::Enum
        # The Inbound ACH Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound ACH Transfer has been declined.
        DECLINED = :declined

        # The Inbound ACH Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound ACH Transfer has been returned.
        RETURNED = :returned
      end

      # The reason why this transfer will be returned. If this parameter is unset, the return codes will be `payment_stopped` for debits and `credit_entry_refused_by_receiver` for credits.
      class Reason < Increase::Enum
        # The customer's account has insufficient funds. This reason is only allowed for debits. The Nacha return code is R01.
        INSUFFICIENT_FUNDS = :insufficient_funds

        # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request. The Nacha return code is R06.
        RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

        # The customer no longer authorizes this transaction. The Nacha return code is R07.
        AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

        # The customer asked for the payment to be stopped. This reason is only allowed for debits. The Nacha return code is R08.
        PAYMENT_STOPPED = :payment_stopped

        # The customer advises that the debit was unauthorized. The Nacha return code is R10.
        CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE = :customer_advised_unauthorized_improper_ineligible_or_incomplete

        # The payee is deceased. The Nacha return code is R14.
        REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY = :representative_payee_deceased_or_unable_to_continue_in_that_capacity

        # The account holder is deceased. The Nacha return code is R15.
        BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

        # The customer refused a credit entry. This reason is only allowed for credits. The Nacha return code is R23.
        CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

        # The account holder identified this transaction as a duplicate. The Nacha return code is R24.
        DUPLICATE_ENTRY = :duplicate_entry

        # The corporate customer no longer authorizes this transaction. The Nacha return code is R29.
        CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized
      end

      # The reason why this transfer will be returned. The most usual return codes are `payment_stopped` for debits and `credit_entry_refused_by_receiver` for credits.
      class Reason < Increase::Enum
        # The customer's account has insufficient funds. This reason is only allowed for debits. The Nacha return code is R01.
        INSUFFICIENT_FUNDS = :insufficient_funds

        # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request. The Nacha return code is R06.
        RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

        # The customer no longer authorizes this transaction. The Nacha return code is R07.
        AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

        # The customer asked for the payment to be stopped. This reason is only allowed for debits. The Nacha return code is R08.
        PAYMENT_STOPPED = :payment_stopped

        # The customer advises that the debit was unauthorized. The Nacha return code is R10.
        CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE = :customer_advised_unauthorized_improper_ineligible_or_incomplete

        # The payee is deceased. The Nacha return code is R14.
        REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY = :representative_payee_deceased_or_unable_to_continue_in_that_capacity

        # The account holder is deceased. The Nacha return code is R15.
        BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

        # The customer refused a credit entry. This reason is only allowed for credits. The Nacha return code is R23.
        CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

        # The account holder identified this transaction as a duplicate. The Nacha return code is R24.
        DUPLICATE_ENTRY = :duplicate_entry

        # The corporate customer no longer authorizes this transaction. The Nacha return code is R29.
        CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized
      end
    end
  end
end
