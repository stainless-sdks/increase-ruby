# typed: strong

module Increase
  module Resources
    class CheckTransfers
      # Create a Check Transfer
      sig do
        params(
          account_id: String,
          amount: Integer,
          fulfillment_method: Symbol,
          source_account_number_id: String,
          physical_check: Increase::Models::CheckTransferCreateParams::PhysicalCheck,
          require_approval: T::Boolean,
          third_party: Increase::Models::CheckTransferCreateParams::ThirdParty,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def create(
        # The identifier for the account that will send the transfer.
        account_id:,
        # The transfer amount in USD cents.
        amount:,
        # Whether Increase will print and mail the check or if you will do it yourself.
        fulfillment_method:,
        # The identifier of the Account Number from which to send the transfer and print
        #   on the check.
        source_account_number_id:,
        # Details relating to the physical check that Increase will print and mail. This
        #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
        #   included if any other `fulfillment_method` is provided.
        physical_check: nil,
        # Whether the transfer requires explicit approval via the dashboard or API.
        require_approval: nil,
        # Details relating to the custom fulfillment you will perform. This is required if
        #   `fulfillment_method` is equal to `third_party`. It must not be included if any
        #   other `fulfillment_method` is provided.
        third_party: nil,
        request_options: {}
      )
      end

      # Retrieve a Check Transfer
      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def retrieve(
        # The identifier of the Check Transfer.
        check_transfer_id,
        request_options: {}
      )
      end

      # List Check Transfers
      sig do
        params(
          account_id: String,
          created_at: Increase::Models::CheckTransferListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::CheckTransferListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::CheckTransfer])
      end
      def list(
        # Filter Check Transfers to those that originated from the specified Account.
        account_id: nil,
        created_at: nil,
        # Return the page of entries after this one.
        cursor: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
        #   that object. This value is unique across Increase and is used to ensure that a
        #   request is only processed once. Learn more about
        #   [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        #   objects.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      # Approve a Check Transfer
      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def approve(
        # The identifier of the Check Transfer to approve.
        check_transfer_id,
        request_options: {}
      )
      end

      # Cancel a pending Check Transfer
      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def cancel(
        # The identifier of the pending Check Transfer to cancel.
        check_transfer_id,
        request_options: {}
      )
      end

      # Request a stop payment on a Check Transfer
      sig do
        params(
          check_transfer_id: String,
          reason: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def stop_payment(
        # The identifier of the Check Transfer.
        check_transfer_id,
        # The reason why this transfer should be stopped.
        reason: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
