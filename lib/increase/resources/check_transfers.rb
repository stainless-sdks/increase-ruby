# frozen_string_literal: true

module Increase
  module Resources
    class CheckTransfers
      def initialize(client:)
        @client = client
      end

      # Create a Check Transfer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The identifier for the account that will send the transfer.
      # @option params [Integer] :amount The transfer amount in cents.
      # @option params [String] :source_account_number_id The identifier of the Account Number from which to send the transfer and print
      #   on the check.
      # @option params [Symbol, FulfillmentMethod, nil] :fulfillment_method Whether Increase will print and mail the check or if you will do it yourself.
      # @option params [PhysicalCheck, nil] :physical_check Details relating to the physical check that Increase will print and mail. This
      #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
      #   included if any other `fulfillment_method` is provided.
      # @option params [Boolean, nil] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      # @option params [ThirdParty, nil] :third_party Details relating to the custom fulfillment you will perform. This is required if
      #   `fulfillment_method` is equal to `third_party`. It must not be included if any
      #   other `fulfillment_method` is provided.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/check_transfers"
        req[:body] = params
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # Retrieve a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def retrieve(check_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/check_transfers/#{check_transfer_id}"
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # List Check Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Check Transfers to those that originated from the specified Account.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::CheckTransfer>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/check_transfers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # Approve a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer to approve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def approve(check_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/check_transfers/#{check_transfer_id}/approve"
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # Cancel a pending Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the pending Check Transfer to cancel.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def cancel(check_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/check_transfers/#{check_transfer_id}/cancel"
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # Request a stop payment on a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Reason, nil] :reason The reason why this transfer should be stopped.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def stop_payment(check_transfer_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/check_transfers/#{check_transfer_id}/stop_payment"
        req[:body] = params
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # Whether Increase will print and mail the check or if you will do it yourself.
      class FulfillmentMethod < Increase::Enum
        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party
      end

      class PhysicalCheck < BaseModel
        # @!attribute [rw] mailing_address
        #   Details for where Increase will mail the check.
        #   @return [PhysicalCheck::MailingAddress]
        required :mailing_address, -> { PhysicalCheck::MailingAddress }

        # @!attribute [rw] memo
        #   The descriptor that will be printed on the memo field on the check.
        #   @return [String]
        required :memo, String

        # @!attribute [rw] recipient_name
        #   The name that will be printed on the check in the 'To:' field.
        #   @return [String]
        required :recipient_name, String

        # @!attribute [rw] note
        #   The descriptor that will be printed on the letter included with the check.
        #   @return [String]
        optional :note, String

        # @!attribute [rw] return_address
        #   The return address to be printed on the check. If omitted this will default to an Increase-owned address that will mark checks as delivery failed and shred them.
        #   @return [PhysicalCheck::ReturnAddress]
        optional :return_address, -> { PhysicalCheck::ReturnAddress }

        # @!attribute [rw] signature_text
        #   The text that will appear as the signature on the check in cursive font. If not provided, the check will be printed with 'No signature required'.
        #   @return [String]
        optional :signature_text, String

        class MailingAddress < BaseModel
          # @!attribute [rw] city
          #   The city component of the check's destination address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address component of the check's destination address.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] postal_code
          #   The postal code component of the check's destination address.
          #   @return [String]
          required :postal_code, String

          # @!attribute [rw] state
          #   The US state component of the check's destination address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] line2
          #   The second line of the address component of the check's destination address.
          #   @return [String]
          optional :line2, String

          # @!attribute [rw] name_
          #   The name component of the check's destination address. Defaults to the provided `recipient_name` parameter.
          #   @return [String]
          optional :name_, String
        end

        class ReturnAddress < BaseModel
          # @!attribute [rw] city
          #   The city of the return address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the return address.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] name_
          #   The name of the return address.
          #   @return [String]
          required :name_, String

          # @!attribute [rw] postal_code
          #   The postal code of the return address.
          #   @return [String]
          required :postal_code, String

          # @!attribute [rw] state
          #   The US state of the return address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] line2
          #   The second line of the return address.
          #   @return [String]
          optional :line2, String
        end
      end

      class ThirdParty < BaseModel
        # @!attribute [rw] check_number
        #   The check number you will print on the check. This should not contain leading zeroes. If this is omitted, Increase will generate a check number for you; you should inspect the response and use that check number.
        #   @return [String]
        optional :check_number, String
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

      # The reason why this transfer should be stopped.
      class Reason < Increase::Enum
        # The check could not be delivered.
        MAIL_DELIVERY_FAILED = :mail_delivery_failed

        # The check was not authorized.
        NOT_AUTHORIZED = :not_authorized

        # The check was stopped for another reason.
        UNKNOWN = :unknown
      end
    end
  end
end
