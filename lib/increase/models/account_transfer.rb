# frozen_string_literal: true

module Increase
  module Models
    class AccountTransfer < BaseModel
      # @!attribute [rw] id
      #   The account transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account to which the transfer belongs.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] amount
      #   The transfer amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] approval
      #   If your account requires approvals for transfers and the transfer was approved, this will contain details of the approval.
      #   @return [Increase::Models::UnnamedSchemaRefD68ed2b3782b1efe94323ee7bcde82cc]
      required :approval, -> { Increase::Models::UnnamedSchemaRefD68ed2b3782b1efe94323ee7bcde82cc }

      # @!attribute [rw] cancellation
      #   If your account requires approvals for transfers and the transfer was not approved, this will contain details of the cancellation.
      #   @return [Increase::Models::UnnamedSchemaRef2eb27343161bcb1aa714bd76fe027d77]
      required :cancellation, -> { Increase::Models::UnnamedSchemaRef2eb27343161bcb1aa714bd76fe027d77 }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] created_by
      #   What object created the transfer, either via the API or the dashboard.
      #   @return [Increase::Models::AccountTransfer::CreatedBy]
      required :created_by, -> { Increase::Models::AccountTransfer::CreatedBy }

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] description
      #   The description that will show on the transactions.
      #   @return [String]
      required :description, String

      # @!attribute [rw] destination_account_id
      #   The destination account's identifier.
      #   @return [String]
      required :destination_account_id, String

      # @!attribute [rw] destination_transaction_id
      #   The ID for the transaction receiving the transfer.
      #   @return [String]
      required :destination_transaction_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] network
      #   The transfer's network.
      #   @return [Symbol]
      required :network, Increase::Enum.new(:account)

      # @!attribute [rw] pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending transaction is created when the transfer [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals) by someone else in your organization.
      #   @return [String]
      required :pending_transaction_id, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending_approval, :canceled, :complete)

      # @!attribute [rw] transaction_id
      #   The ID for the transaction funding the transfer.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `account_transfer`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:account_transfer)

      class CreatedBy < BaseModel
        # @!attribute [rw] api_key
        #   If present, details about the API key that created the transfer.
        #   @return [Increase::Models::UnnamedSchemaRef6ff8f32a8ee62a70f72bb8160f984371]
        required :api_key, -> { Increase::Models::UnnamedSchemaRef6ff8f32a8ee62a70f72bb8160f984371 }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol]
        required :category, Increase::Enum.new(:api_key, :oauth_application, :user)

        # @!attribute [rw] oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #   @return [Increase::Models::UnnamedSchemaRef2aa12ad8358299c478e4658f636c9732]
        required :oauth_application, -> { Increase::Models::UnnamedSchemaRef2aa12ad8358299c478e4658f636c9732 }

        # @!attribute [rw] user
        #   If present, details about the User that created the transfer.
        #   @return [Increase::Models::UnnamedSchemaRef5af1efe3d974b3c8bf884988b11ffc95]
        required :user, -> { Increase::Models::UnnamedSchemaRef5af1efe3d974b3c8bf884988b11ffc95 }
      end
    end
  end
end
