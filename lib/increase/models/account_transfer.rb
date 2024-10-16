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
      #   @return [Increase::Models::AccountTransfer::Approval]
      required :approval, -> { Increase::Models::AccountTransfer::Approval }

      # @!attribute [rw] cancellation
      #   If your account requires approvals for transfers and the transfer was not approved, this will contain details of the cancellation.
      #   @return [Increase::Models::AccountTransfer::Cancellation]
      required :cancellation, -> { Increase::Models::AccountTransfer::Cancellation }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] created_by
      #   What object created the transfer, either via the API or the dashboard.
      #   @return [Increase::Models::AccountTransfer::CreatedBy]
      required :created_by, -> { Increase::Models::AccountTransfer::CreatedBy }

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
      #   @return [Symbol, Increase::Models::AccountTransfer::Currency]
      required :currency, enum: -> { Increase::Models::AccountTransfer::Currency }

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
      #   @return [Symbol, Increase::Models::AccountTransfer::Network]
      required :network, enum: -> { Increase::Models::AccountTransfer::Network }

      # @!attribute [rw] pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending transaction is created when the transfer [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals) by someone else in your organization.
      #   @return [String]
      required :pending_transaction_id, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol, Increase::Models::AccountTransfer::Status]
      required :status, enum: -> { Increase::Models::AccountTransfer::Status }

      # @!attribute [rw] transaction_id
      #   The ID for the transaction funding the transfer.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `account_transfer`.
      #   @return [Symbol, Increase::Models::AccountTransfer::Type]
      required :type, enum: -> { Increase::Models::AccountTransfer::Type }

      class Approval < BaseModel
        # @!attribute [rw] approved_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was approved.
        #   @return [Time]
        required :approved_at, Time

        # @!attribute [rw] approved_by
        #   If the Transfer was approved by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :approved_by, String

        # Create a new instance of Approval from a Hash of raw data.
        #
        # @overload initialize(approved_at: nil, approved_by: nil)
        # @param approved_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was approved.
        # @param approved_by [String] If the Transfer was approved by a user in the dashboard, the email address of
        #   that user.
        def initialize(data = {})
          super
        end
      end

      class Cancellation < BaseModel
        # @!attribute [rw] canceled_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Transfer was canceled.
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute [rw] canceled_by
        #   If the Transfer was canceled by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :canceled_by, String

        # Create a new instance of Cancellation from a Hash of raw data.
        #
        # @overload initialize(canceled_at: nil, canceled_by: nil)
        # @param canceled_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Transfer was canceled.
        # @param canceled_by [String] If the Transfer was canceled by a user in the dashboard, the email address of
        #   that user.
        def initialize(data = {})
          super
        end
      end

      class CreatedBy < BaseModel
        # @!attribute [rw] api_key
        #   If present, details about the API key that created the transfer.
        #   @return [Increase::Models::AccountTransfer::CreatedBy::APIKey]
        required :api_key, -> { Increase::Models::AccountTransfer::CreatedBy::APIKey }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol, Increase::Models::AccountTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::AccountTransfer::CreatedBy::Category }

        # @!attribute [rw] oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #   @return [Increase::Models::AccountTransfer::CreatedBy::OAuthApplication]
        required :oauth_application, -> { Increase::Models::AccountTransfer::CreatedBy::OAuthApplication }

        # @!attribute [rw] user
        #   If present, details about the User that created the transfer.
        #   @return [Increase::Models::AccountTransfer::CreatedBy::User]
        required :user, -> { Increase::Models::AccountTransfer::CreatedBy::User }

        class APIKey < BaseModel
          # @!attribute [rw] description
          #   The description set for the API key when it was created.
          #   @return [String]
          required :description, String

          # Create a new instance of APIKey from a Hash of raw data.
          #
          # @overload initialize(description: nil)
          # @param description [String] The description set for the API key when it was created.
          def initialize(data = {})
            super
          end
        end

        # The type of object that created this transfer.
        class Category < Increase::Enum
          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user
        end

        class OAuthApplication < BaseModel
          # @!attribute [rw] name_
          #   The name of the OAuth Application.
          #   @return [String]
          required :name_, String

          # Create a new instance of OAuthApplication from a Hash of raw data.
          #
          # @overload initialize(name: nil)
          # @param name [String] The name of the OAuth Application.
          def initialize(data = {})
            super
          end
        end

        class User < BaseModel
          # @!attribute [rw] email
          #   The email address of the User.
          #   @return [String]
          required :email, String

          # Create a new instance of User from a Hash of raw data.
          #
          # @overload initialize(email: nil)
          # @param email [String] The email address of the User.
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of CreatedBy from a Hash of raw data.
        #
        # @overload initialize(api_key: nil, category: nil, oauth_application: nil, user: nil)
        # @param api_key [Object] If present, details about the API key that created the transfer.
        # @param category [String] The type of object that created this transfer.
        # @param oauth_application [Object] If present, details about the OAuth Application that created the transfer.
        # @param user [Object] If present, details about the User that created the transfer.
        def initialize(data = {})
          super
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
      class Currency < Increase::Enum
        # Canadian Dollar (CAD)
        CAD = :CAD

        # Swiss Franc (CHF)
        CHF = :CHF

        # Euro (EUR)
        EUR = :EUR

        # British Pound (GBP)
        GBP = :GBP

        # Japanese Yen (JPY)
        JPY = :JPY

        # US Dollar (USD)
        USD = :USD
      end

      # The transfer's network.
      class Network < Increase::Enum
        ACCOUNT = :account
      end

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer has been completed.
        COMPLETE = :complete
      end

      # A constant representing the object's type. For this resource it will always be `account_transfer`.
      class Type < Increase::Enum
        ACCOUNT_TRANSFER = :account_transfer
      end

      # Create a new instance of AccountTransfer from a Hash of raw data.
      #
      # @overload initialize(id: nil, account_id: nil, amount: nil, approval: nil, cancellation: nil, created_at: nil, created_by: nil, currency: nil, description: nil, destination_account_id: nil, destination_transaction_id: nil, idempotency_key: nil, network: nil, pending_transaction_id: nil, status: nil, transaction_id: nil, type: nil)
      # @param id [String] The account transfer's identifier.
      # @param account_id [String] The Account to which the transfer belongs.
      # @param amount [Integer] The transfer amount in the minor unit of the destination account currency. For
      #   dollars, for example, this is cents.
      # @param approval [Object] If your account requires approvals for transfers and the transfer was approved,
      #   this will contain details of the approval.
      # @param cancellation [Object] If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the transfer was created.
      # @param created_by [Object] What object created the transfer, either via the API or the dashboard.
      # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
      #   account currency.
      # @param description [String] The description that will show on the transactions.
      # @param destination_account_id [String] The destination account's identifier.
      # @param destination_transaction_id [String] The ID for the transaction receiving the transfer.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param network [String] The transfer's network.
      # @param pending_transaction_id [String] The ID for the pending transaction representing the transfer. A pending
      #   transaction is created when the transfer
      #   [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   by someone else in your organization.
      # @param status [String] The lifecycle status of the transfer.
      # @param transaction_id [String] The ID for the transaction funding the transfer.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `account_transfer`.
      def initialize(data = {})
        super
      end
    end
  end
end
