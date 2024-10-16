# frozen_string_literal: true

module Increase
  module Models
    class ACHTransfer < BaseModel
      # @!attribute [rw] id
      #   The ACH transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account to which the transfer belongs.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number
      #   The destination account number.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] acknowledgement
      #   After the transfer is acknowledged by FedACH, this will contain supplemental details. The Federal Reserve sends an acknowledgement message for each file that Increase submits.
      #   @return [Increase::Models::ACHTransfer::Acknowledgement]
      required :acknowledgement, -> { Increase::Models::ACHTransfer::Acknowledgement }

      # @!attribute [rw] addenda
      #   Additional information that will be sent to the recipient.
      #   @return [Increase::Models::ACHTransfer::Addenda]
      required :addenda, -> { Increase::Models::ACHTransfer::Addenda }

      # @!attribute [rw] amount
      #   The transfer amount in USD cents. A positive amount indicates a credit transfer pushing funds to the receiving account. A negative amount indicates a debit transfer pulling funds from the receiving account.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] approval
      #   If your account requires approvals for transfers and the transfer was approved, this will contain details of the approval.
      #   @return [Increase::Models::ACHTransfer::Approval]
      required :approval, -> { Increase::Models::ACHTransfer::Approval }

      # @!attribute [rw] cancellation
      #   If your account requires approvals for transfers and the transfer was not approved, this will contain details of the cancellation.
      #   @return [Increase::Models::ACHTransfer::Cancellation]
      required :cancellation, -> { Increase::Models::ACHTransfer::Cancellation }

      # @!attribute [rw] company_descriptive_date
      #   The description of the date of the transfer.
      #   @return [String]
      required :company_descriptive_date, String

      # @!attribute [rw] company_discretionary_data
      #   The data you chose to associate with the transfer.
      #   @return [String]
      required :company_discretionary_data, String

      # @!attribute [rw] company_entry_description
      #   The description of the transfer you set to be shown to the recipient.
      #   @return [String]
      required :company_entry_description, String

      # @!attribute [rw] company_name
      #   The name by which the recipient knows you.
      #   @return [String]
      required :company_name, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] created_by
      #   What object created the transfer, either via the API or the dashboard.
      #   @return [Increase::Models::ACHTransfer::CreatedBy]
      required :created_by, -> { Increase::Models::ACHTransfer::CreatedBy }

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For ACH transfers this is always equal to `usd`.
      #   @return [Symbol, Increase::Models::ACHTransfer::Currency]
      required :currency, enum: -> { Increase::Models::ACHTransfer::Currency }

      # @!attribute [rw] destination_account_holder
      #   The type of entity that owns the account to which the ACH Transfer is being sent.
      #   @return [Symbol, Increase::Models::ACHTransfer::DestinationAccountHolder]
      required :destination_account_holder,
               enum: lambda {
                 Increase::Models::ACHTransfer::DestinationAccountHolder
               }

      # @!attribute [rw] external_account_id
      #   The identifier of the External Account the transfer was made to, if any.
      #   @return [String]
      required :external_account_id, String

      # @!attribute [rw] funding
      #   The type of the account to which the transfer will be sent.
      #   @return [Symbol, Increase::Models::ACHTransfer::Funding]
      required :funding, enum: -> { Increase::Models::ACHTransfer::Funding }

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] inbound_funds_hold
      #   Increase will sometimes hold the funds for ACH debit transfers. If funds are held, this sub-object will contain details of the hold.
      #   @return [Increase::Models::ACHTransfer::InboundFundsHold]
      required :inbound_funds_hold, -> { Increase::Models::ACHTransfer::InboundFundsHold }

      # @!attribute [rw] individual_id
      #   Your identifier for the transfer recipient.
      #   @return [String]
      required :individual_id, String

      # @!attribute [rw] individual_name
      #   The name of the transfer recipient. This value is information and not verified by the recipient's bank.
      #   @return [String]
      required :individual_name, String

      # @!attribute [rw] network
      #   The transfer's network.
      #   @return [Symbol, Increase::Models::ACHTransfer::Network]
      required :network, enum: -> { Increase::Models::ACHTransfer::Network }

      # @!attribute [rw] notifications_of_change
      #   If the receiving bank accepts the transfer but notifies that future transfers should use different details, this will contain those details.
      #   @return [Array<Increase::Models::ACHTransfer::NotificationsOfChange>]
      required :notifications_of_change,
               Increase::ArrayOf.new(-> { Increase::Models::ACHTransfer::NotificationsOfChange })

      # @!attribute [rw] pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending transaction is created when the transfer [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals) by someone else in your organization.
      #   @return [String]
      required :pending_transaction_id, String

      # @!attribute [rw] preferred_effective_date
      #   Configuration for how the effective date of the transfer will be set. This determines same-day vs future-dated settlement timing. If not set, defaults to a `settlement_schedule` of `same_day`. If set, exactly one of the child attributes must be set.
      #   @return [Increase::Models::ACHTransfer::PreferredEffectiveDate]
      required :preferred_effective_date, -> { Increase::Models::ACHTransfer::PreferredEffectiveDate }

      # @!attribute [rw] return_
      #   If your transfer is returned, this will contain details of the return.
      #   @return [Increase::Models::ACHTransfer::Return]
      required :return_, -> { Increase::Models::ACHTransfer::Return }

      # @!attribute [rw] routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] settlement
      #   A subhash containing information about when and how the transfer settled at the Federal Reserve.
      #   @return [Increase::Models::ACHTransfer::Settlement]
      required :settlement, -> { Increase::Models::ACHTransfer::Settlement }

      # @!attribute [rw] standard_entry_class_code
      #   The Standard Entry Class (SEC) code to use for the transfer.
      #   @return [Symbol, Increase::Models::ACHTransfer::StandardEntryClassCode]
      required :standard_entry_class_code, enum: -> { Increase::Models::ACHTransfer::StandardEntryClassCode }

      # @!attribute [rw] statement_descriptor
      #   The descriptor that will show on the recipient's bank statement.
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol, Increase::Models::ACHTransfer::Status]
      required :status, enum: -> { Increase::Models::ACHTransfer::Status }

      # @!attribute [rw] submission
      #   After the transfer is submitted to FedACH, this will contain supplemental details. Increase batches transfers and submits a file to the Federal Reserve roughly every 30 minutes. The Federal Reserve processes ACH transfers during weekdays according to their [posted schedule](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
      #   @return [Increase::Models::ACHTransfer::Submission]
      required :submission, -> { Increase::Models::ACHTransfer::Submission }

      # @!attribute [rw] transaction_id
      #   The ID for the transaction funding the transfer.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `ach_transfer`.
      #   @return [Symbol, Increase::Models::ACHTransfer::Type]
      required :type, enum: -> { Increase::Models::ACHTransfer::Type }

      class Acknowledgement < BaseModel
        # @!attribute [rw] acknowledged_at
        #   When the Federal Reserve acknowledged the submitted file containing this transfer.
        #   @return [String]
        required :acknowledged_at, String

        # @!parse
        #   # Create a new instance of Acknowledgement from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :acknowledged_at When the Federal Reserve acknowledged the submitted file containing this
        #   #     transfer.
        #   def initialize(data = {}) = super
      end

      class Addenda < BaseModel
        # @!attribute [rw] category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #   @return [Symbol, Increase::Models::ACHTransfer::Addenda::Category]
        required :category, enum: -> { Increase::Models::ACHTransfer::Addenda::Category }

        # @!attribute [rw] freeform
        #   Unstructured `payment_related_information` passed through with the transfer.
        #   @return [Increase::Models::ACHTransfer::Addenda::Freeform]
        required :freeform, -> { Increase::Models::ACHTransfer::Addenda::Freeform }

        # @!attribute [rw] payment_order_remittance_advice
        #   Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
        #   @return [Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice]
        required :payment_order_remittance_advice,
                 -> { Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice }

        # The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        class Category < Increase::Enum
          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice

          # Unknown addenda type.
          OTHER = :other
        end

        class Freeform < BaseModel
          # @!attribute [rw] entries
          #   Each entry represents an addendum sent with the transfer.
          #   @return [Array<Increase::Models::ACHTransfer::Addenda::Freeform::Entry>]
          required :entries,
                   Increase::ArrayOf.new(
                     lambda {
                       Increase::Models::ACHTransfer::Addenda::Freeform::Entry
                     }
                   )

          class Entry < BaseModel
            # @!attribute [rw] payment_related_information
            #   The payment related information passed in the addendum.
            #   @return [String]
            required :payment_related_information, String

            # @!parse
            #   # Create a new instance of Entry from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :payment_related_information The payment related information passed in the addendum.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Freeform from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Array<Object>] :entries Each entry represents an addendum sent with the transfer.
          #   def initialize(data = {}) = super
        end

        class PaymentOrderRemittanceAdvice < BaseModel
          # @!attribute [rw] invoices
          #   ASC X12 RMR records for this specific transfer.
          #   @return [Array<Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          required :invoices,
                   Increase::ArrayOf.new(
                     lambda {
                       Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice
                     }
                   )

          class Invoice < BaseModel
            # @!attribute [rw] invoice_number
            #   The invoice number for this reference, determined in advance with the receiver.
            #   @return [String]
            required :invoice_number, String

            # @!attribute [rw] paid_amount
            #   The amount that was paid for this invoice in the minor unit of its currency. For dollars, for example, this is cents.
            #   @return [Integer]
            required :paid_amount, Integer

            # @!parse
            #   # Create a new instance of Invoice from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :invoice_number The invoice number for this reference, determined in advance with the receiver.
            #   #   @option data [Integer] :paid_amount The amount that was paid for this invoice in the minor unit of its currency. For
            #   #     dollars, for example, this is cents.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of PaymentOrderRemittanceAdvice from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Array<Object>] :invoices ASC X12 RMR records for this specific transfer.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Addenda from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :category The type of the resource. We may add additional possible values for this enum
        #   #     over time; your application should be able to handle such additions gracefully.
        #   #   @option data [Object] :freeform Unstructured `payment_related_information` passed through with the transfer.
        #   #   @option data [Object] :payment_order_remittance_advice Structured ASC X12 820 remittance advice records. Please reach out to
        #   #     [support@increase.com](mailto:support@increase.com) for more information.
        #   def initialize(data = {}) = super
      end

      class Approval < BaseModel
        # @!attribute [rw] approved_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was approved.
        #   @return [Time]
        required :approved_at, Time

        # @!attribute [rw] approved_by
        #   If the Transfer was approved by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :approved_by, String

        # @!parse
        #   # Create a new instance of Approval from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :approved_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the transfer was approved.
        #   #   @option data [String] :approved_by If the Transfer was approved by a user in the dashboard, the email address of
        #   #     that user.
        #   def initialize(data = {}) = super
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

        # @!parse
        #   # Create a new instance of Cancellation from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :canceled_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the Transfer was canceled.
        #   #   @option data [String] :canceled_by If the Transfer was canceled by a user in the dashboard, the email address of
        #   #     that user.
        #   def initialize(data = {}) = super
      end

      class CreatedBy < BaseModel
        # @!attribute [rw] api_key
        #   If present, details about the API key that created the transfer.
        #   @return [Increase::Models::ACHTransfer::CreatedBy::APIKey]
        required :api_key, -> { Increase::Models::ACHTransfer::CreatedBy::APIKey }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol, Increase::Models::ACHTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::ACHTransfer::CreatedBy::Category }

        # @!attribute [rw] oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #   @return [Increase::Models::ACHTransfer::CreatedBy::OAuthApplication]
        required :oauth_application, -> { Increase::Models::ACHTransfer::CreatedBy::OAuthApplication }

        # @!attribute [rw] user
        #   If present, details about the User that created the transfer.
        #   @return [Increase::Models::ACHTransfer::CreatedBy::User]
        required :user, -> { Increase::Models::ACHTransfer::CreatedBy::User }

        class APIKey < BaseModel
          # @!attribute [rw] description
          #   The description set for the API key when it was created.
          #   @return [String]
          required :description, String

          # @!parse
          #   # Create a new instance of APIKey from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :description The description set for the API key when it was created.
          #   def initialize(data = {}) = super
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

          # @!parse
          #   # Create a new instance of OAuthApplication from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :name The name of the OAuth Application.
          #   def initialize(data = {}) = super
        end

        class User < BaseModel
          # @!attribute [rw] email
          #   The email address of the User.
          #   @return [String]
          required :email, String

          # @!parse
          #   # Create a new instance of User from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :email The email address of the User.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of CreatedBy from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :api_key If present, details about the API key that created the transfer.
        #   #   @option data [String] :category The type of object that created this transfer.
        #   #   @option data [Object] :oauth_application If present, details about the OAuth Application that created the transfer.
        #   #   @option data [Object] :user If present, details about the User that created the transfer.
        #   def initialize(data = {}) = super
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For ACH transfers this is always equal to `usd`.
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

      # The type of entity that owns the account to which the ACH Transfer is being sent.
      class DestinationAccountHolder < Increase::Enum
        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown
      end

      # The type of the account to which the transfer will be sent.
      class Funding < Increase::Enum
        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings
      end

      class InboundFundsHold < BaseModel
        # @!attribute [rw] id
        #   The Inbound Funds Hold identifier.
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   The held amount in the minor unit of the account's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] automatically_releases_at
        #   When the hold will be released automatically. Certain conditions may cause it to be released before this time.
        #   @return [Time]
        required :automatically_releases_at, Time

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold was created.
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Currency]
        required :currency, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Currency }

        # @!attribute [rw] held_transaction_id
        #   The ID of the Transaction for which funds were held.
        #   @return [String]
        required :held_transaction_id, String

        # @!attribute [rw] pending_transaction_id
        #   The ID of the Pending Transaction representing the held funds.
        #   @return [String]
        required :pending_transaction_id, String

        # @!attribute [rw] released_at
        #   When the hold was released (if it has been released).
        #   @return [Time]
        required :released_at, Time

        # @!attribute [rw] status
        #   The status of the hold.
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Status]
        required :status, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Status }

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Type]
        required :type, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Type }

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
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

        # The status of the hold.
        class Status < Increase::Enum
          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete
        end

        # A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
        class Type < Increase::Enum
          INBOUND_FUNDS_HOLD = :inbound_funds_hold
        end

        # @!parse
        #   # Create a new instance of InboundFundsHold from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id The Inbound Funds Hold identifier.
        #   #   @option data [Integer] :amount The held amount in the minor unit of the account's currency. For dollars, for
        #   #     example, this is cents.
        #   #   @option data [String] :automatically_releases_at When the hold will be released automatically. Certain conditions may cause it to
        #   #     be released before this time.
        #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold
        #   #     was created.
        #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #   #     currency.
        #   #   @option data [String] :held_transaction_id The ID of the Transaction for which funds were held.
        #   #   @option data [String] :pending_transaction_id The ID of the Pending Transaction representing the held funds.
        #   #   @option data [String] :released_at When the hold was released (if it has been released).
        #   #   @option data [String] :status The status of the hold.
        #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
        #   #     `inbound_funds_hold`.
        #   def initialize(data = {}) = super
      end

      # The transfer's network.
      class Network < Increase::Enum
        ACH = :ach
      end

      class NotificationsOfChange < BaseModel
        # @!attribute [rw] change_code
        #   The required type of change that is being signaled by the receiving financial institution.
        #   @return [Symbol, Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode]
        required :change_code, enum: -> { Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode }

        # @!attribute [rw] corrected_data
        #   The corrected data that should be used in future ACHs to this account. This may contain the suggested new account number or routing number. When the `change_code` is `incorrect_transaction_code`, this field contains an integer. Numbers starting with a 2 encourage changing the `funding` parameter to checking; numbers starting with a 3 encourage changing to savings.
        #   @return [String]
        required :corrected_data, String

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the notification occurred.
        #   @return [Time]
        required :created_at, Time

        # The required type of change that is being signaled by the receiving financial institution.
        class ChangeCode < Increase::Enum
          # The account number was incorrect.
          INCORRECT_ACCOUNT_NUMBER = :incorrect_account_number

          # The routing number was incorrect.
          INCORRECT_ROUTING_NUMBER = :incorrect_routing_number

          # Both the routing number and the account number were incorrect.
          INCORRECT_ROUTING_NUMBER_AND_ACCOUNT_NUMBER = :incorrect_routing_number_and_account_number

          # The transaction code was incorrect. Try changing the `funding` parameter from checking to savings or vice-versa.
          INCORRECT_TRANSACTION_CODE = :incorrect_transaction_code

          # The account number and the transaction code were incorrect.
          INCORRECT_ACCOUNT_NUMBER_AND_TRANSACTION_CODE = :incorrect_account_number_and_transaction_code

          # The routing number, account number, and transaction code were incorrect.
          INCORRECT_ROUTING_NUMBER_ACCOUNT_NUMBER_AND_TRANSACTION_CODE = :incorrect_routing_number_account_number_and_transaction_code

          # The receiving depository financial institution identification was incorrect.
          INCORRECT_RECEIVING_DEPOSITORY_FINANCIAL_INSTITUTION_IDENTIFICATION = :incorrect_receiving_depository_financial_institution_identification

          # The individual identification number was incorrect.
          INCORRECT_INDIVIDUAL_IDENTIFICATION_NUMBER = :incorrect_individual_identification_number

          # The addenda had an incorrect format.
          ADDENDA_FORMAT_ERROR = :addenda_format_error

          # The standard entry class code was incorrect for an outbound international payment.
          INCORRECT_STANDARD_ENTRY_CLASS_CODE_FOR_OUTBOUND_INTERNATIONAL_PAYMENT = :incorrect_standard_entry_class_code_for_outbound_international_payment

          # The notification of change was misrouted.
          MISROUTED_NOTIFICATION_OF_CHANGE = :misrouted_notification_of_change

          # The trace number was incorrect.
          INCORRECT_TRACE_NUMBER = :incorrect_trace_number

          # The company identification number was incorrect.
          INCORRECT_COMPANY_IDENTIFICATION_NUMBER = :incorrect_company_identification_number

          # The individual identification number or identification number was incorrect.
          INCORRECT_IDENTIFICATION_NUMBER = :incorrect_identification_number

          # The corrected data was incorrectly formatted.
          INCORRECTLY_FORMATTED_CORRECTED_DATA = :incorrectly_formatted_corrected_data

          # The discretionary data was incorrect.
          INCORRECT_DISCRETIONARY_DATA = :incorrect_discretionary_data

          # The routing number was not from the original entry detail record.
          ROUTING_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD = :routing_number_not_from_original_entry_detail_record

          # The depository financial institution account number was not from the original entry detail record.
          DEPOSITORY_FINANCIAL_INSTITUTION_ACCOUNT_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD = :depository_financial_institution_account_number_not_from_original_entry_detail_record

          # The transaction code was incorrect, initiated by the originating depository financial institution.
          INCORRECT_TRANSACTION_CODE_BY_ORIGINATING_DEPOSITORY_FINANCIAL_INSTITUTION = :incorrect_transaction_code_by_originating_depository_financial_institution
        end

        # @!parse
        #   # Create a new instance of NotificationsOfChange from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :change_code The required type of change that is being signaled by the receiving financial
        #   #     institution.
        #   #   @option data [String] :corrected_data The corrected data that should be used in future ACHs to this account. This may
        #   #     contain the suggested new account number or routing number. When the
        #   #     `change_code` is `incorrect_transaction_code`, this field contains an integer.
        #   #     Numbers starting with a 2 encourage changing the `funding` parameter to
        #   #     checking; numbers starting with a 3 encourage changing to savings.
        #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the notification occurred.
        #   def initialize(data = {}) = super
      end

      class PreferredEffectiveDate < BaseModel
        # @!attribute [rw] date
        #   A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to use as the effective date when submitting this transfer.
        #   @return [Date]
        required :date, Date

        # @!attribute [rw] settlement_schedule
        #   A schedule by which Increase will choose an effective date for the transfer.
        #   @return [Symbol, Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule]
        required :settlement_schedule,
                 enum: -> { Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule }

        # A schedule by which Increase will choose an effective date for the transfer.
        class SettlementSchedule < Increase::Enum
          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted.
          # This is necessary, but not sufficient for the transfer to be settled same-day:
          # it must also be submitted before the last same-day cutoff
          # and be less than or equal to $1,000.000.00.
          #
          SAME_DAY = :same_day

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = :future_dated
        end

        # @!parse
        #   # Create a new instance of PreferredEffectiveDate from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :date A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to
        #   #     use as the effective date when submitting this transfer.
        #   #   @option data [String] :settlement_schedule A schedule by which Increase will choose an effective date for the transfer.
        #   def initialize(data = {}) = super
      end

      class Return < BaseModel
        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] raw_return_reason_code
        #   The three character ACH return code, in the range R01 to R85.
        #   @return [String]
        required :raw_return_reason_code, String

        # @!attribute [rw] return_reason_code
        #   Why the ACH Transfer was returned. This reason code is sent by the receiving bank back to Increase.
        #   @return [Symbol, Increase::Models::ACHTransfer::Return::ReturnReasonCode]
        required :return_reason_code, enum: -> { Increase::Models::ACHTransfer::Return::ReturnReasonCode }

        # @!attribute [rw] trace_number
        #   A 15 digit number that was generated by the bank that initiated the return. The trace number of the return is different than that of the original transfer. ACH trace numbers are not unique, but along with the amount and date this number can be used to identify the ACH return at the bank that initiated it.
        #   @return [String]
        required :trace_number, String

        # @!attribute [rw] transaction_id
        #   The identifier of the Transaction associated with this return.
        #   @return [String]
        required :transaction_id, String

        # @!attribute [rw] transfer_id
        #   The identifier of the ACH Transfer associated with this return.
        #   @return [String]
        required :transfer_id, String

        # Why the ACH Transfer was returned. This reason code is sent by the receiving bank back to Increase.
        class ReturnReasonCode < Increase::Enum
          # Code R01. Insufficient funds in the receiving account. Sometimes abbreviated to NSF.
          INSUFFICIENT_FUND = :insufficient_fund

          # Code R03. The account does not exist or the receiving bank was unable to locate it.
          NO_ACCOUNT = :no_account

          # Code R02. The account is closed at the receiving bank.
          ACCOUNT_CLOSED = :account_closed

          # Code R04. The account number is invalid at the receiving bank.
          INVALID_ACCOUNT_NUMBER_STRUCTURE = :invalid_account_number_structure

          # Code R16. The account at the receiving bank was frozen per the Office of Foreign Assets Control.
          ACCOUNT_FROZEN_ENTRY_RETURNED_PER_OFAC_INSTRUCTION = :account_frozen_entry_returned_per_ofac_instruction

          # Code R23. The receiving bank account refused a credit transfer.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

          # Code R05. The receiving bank rejected because of an incorrect Standard Entry Class code.
          UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE = :unauthorized_debit_to_consumer_account_using_corporate_sec_code

          # Code R29. The corporate customer at the receiving bank reversed the transfer.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

          # Code R08. The receiving bank stopped payment on this transfer.
          PAYMENT_STOPPED = :payment_stopped

          # Code R20. The receiving bank account does not perform transfers.
          NON_TRANSACTION_ACCOUNT = :non_transaction_account

          # Code R09. The receiving bank account does not have enough available balance for the transfer.
          UNCOLLECTED_FUNDS = :uncollected_funds

          # Code R28. The routing number is incorrect.
          ROUTING_NUMBER_CHECK_DIGIT_ERROR = :routing_number_check_digit_error

          # Code R10. The customer at the receiving bank reversed the transfer.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE = :customer_advised_unauthorized_improper_ineligible_or_incomplete

          # Code R19. The amount field is incorrect or too large.
          AMOUNT_FIELD_ERROR = :amount_field_error

          # Code R07. The customer at the receiving institution informed their bank that they have revoked authorization for a previously authorized transfer.
          AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

          # Code R13. The routing number is invalid.
          INVALID_ACH_ROUTING_NUMBER = :invalid_ach_routing_number

          # Code R17. The receiving bank is unable to process a field in the transfer.
          FILE_RECORD_EDIT_CRITERIA = :file_record_edit_criteria

          # Code R45. The individual name field was invalid.
          ENR_INVALID_INDIVIDUAL_NAME = :enr_invalid_individual_name

          # Code R06. The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
          RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

          # Code R34. The receiving bank's regulatory supervisor has limited their participation in the ACH network.
          LIMITED_PARTICIPATION_DFI = :limited_participation_dfi

          # Code R85. The outbound international ACH transfer was incorrect.
          INCORRECTLY_CODED_OUTBOUND_INTERNATIONAL_PAYMENT = :incorrectly_coded_outbound_international_payment

          # Code R12. A rare return reason. The account was sold to another bank.
          ACCOUNT_SOLD_TO_ANOTHER_DFI = :account_sold_to_another_dfi

          # Code R25. The addenda record is incorrect or missing.
          ADDENDA_ERROR = :addenda_error

          # Code R15. A rare return reason. The account holder is deceased.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

          # Code R11. A rare return reason. The customer authorized some payment to the sender, but this payment was not in error.
          CUSTOMER_ADVISED_NOT_WITHIN_AUTHORIZATION_TERMS = :customer_advised_not_within_authorization_terms

          # Code R74. A rare return reason. Sent in response to a return that was returned with code `field_error`. The latest return should include the corrected field(s).
          CORRECTED_RETURN = :corrected_return

          # Code R24. A rare return reason. The receiving bank received an exact duplicate entry with the same trace number and amount.
          DUPLICATE_ENTRY = :duplicate_entry

          # Code R67. A rare return reason. The return this message refers to was a duplicate.
          DUPLICATE_RETURN = :duplicate_return

          # Code R47. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_DUPLICATE_ENROLLMENT = :enr_duplicate_enrollment

          # Code R43. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_DFI_ACCOUNT_NUMBER = :enr_invalid_dfi_account_number

          # Code R44. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_INDIVIDUAL_ID_NUMBER = :enr_invalid_individual_id_number

          # Code R46. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_REPRESENTATIVE_PAYEE_INDICATOR = :enr_invalid_representative_payee_indicator

          # Code R41. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_TRANSACTION_CODE = :enr_invalid_transaction_code

          # Code R40. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_RETURN_OF_ENR_ENTRY = :enr_return_of_enr_entry

          # Code R42. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_ROUTING_NUMBER_CHECK_DIGIT_ERROR = :enr_routing_number_check_digit_error

          # Code R84. A rare return reason. The International ACH Transfer cannot be processed by the gateway.
          ENTRY_NOT_PROCESSED_BY_GATEWAY = :entry_not_processed_by_gateway

          # Code R69. A rare return reason. One or more of the fields in the ACH were malformed.
          FIELD_ERROR = :field_error

          # Code R83. A rare return reason. The Foreign receiving bank was unable to settle this ACH transfer.
          FOREIGN_RECEIVING_DFI_UNABLE_TO_SETTLE = :foreign_receiving_dfi_unable_to_settle

          # Code R80. A rare return reason. The International ACH Transfer is malformed.
          IAT_ENTRY_CODING_ERROR = :iat_entry_coding_error

          # Code R18. A rare return reason. The ACH has an improper effective entry date field.
          IMPROPER_EFFECTIVE_ENTRY_DATE = :improper_effective_entry_date

          # Code R39. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          IMPROPER_SOURCE_DOCUMENT_SOURCE_DOCUMENT_PRESENTED = :improper_source_document_source_document_presented

          # Code R21. A rare return reason. The Company ID field of the ACH was invalid.
          INVALID_COMPANY_ID = :invalid_company_id

          # Code R82. A rare return reason. The foreign receiving bank identifier for an International ACH Transfer was invalid.
          INVALID_FOREIGN_RECEIVING_DFI_IDENTIFICATION = :invalid_foreign_receiving_dfi_identification

          # Code R22. A rare return reason. The Individual ID number field of the ACH was invalid.
          INVALID_INDIVIDUAL_ID_NUMBER = :invalid_individual_id_number

          # Code R53. A rare return reason. Both the Represented Check ("RCK") entry and the original check were presented to the bank.
          ITEM_AND_RCK_ENTRY_PRESENTED_FOR_PAYMENT = :item_and_rck_entry_presented_for_payment

          # Code R51. A rare return reason. The Represented Check ("RCK") entry is ineligible.
          ITEM_RELATED_TO_RCK_ENTRY_IS_INELIGIBLE = :item_related_to_rck_entry_is_ineligible

          # Code R26. A rare return reason. The ACH is missing a required field.
          MANDATORY_FIELD_ERROR = :mandatory_field_error

          # Code R71. A rare return reason. The receiving bank does not recognize the routing number in a dishonored return entry.
          MISROUTED_DISHONORED_RETURN = :misrouted_dishonored_return

          # Code R61. A rare return reason. The receiving bank does not recognize the routing number in a return entry.
          MISROUTED_RETURN = :misrouted_return

          # Code R76. A rare return reason. Sent in response to a return, the bank does not find the errors alleged by the returning bank.
          NO_ERRORS_FOUND = :no_errors_found

          # Code R77. A rare return reason. The receiving bank does not accept the return of the erroneous debit. The funds are not available at the receiving bank.
          NON_ACCEPTANCE_OF_R62_DISHONORED_RETURN = :non_acceptance_of_r62_dishonored_return

          # Code R81. A rare return reason. The receiving bank does not accept International ACH Transfers.
          NON_PARTICIPANT_IN_IAT_PROGRAM = :non_participant_in_iat_program

          # Code R31. A rare return reason. A return that has been agreed to be accepted by the receiving bank, despite falling outside of the usual return timeframe.
          PERMISSIBLE_RETURN_ENTRY = :permissible_return_entry

          # Code R70. A rare return reason. The receiving bank had not approved this return.
          PERMISSIBLE_RETURN_ENTRY_NOT_ACCEPTED = :permissible_return_entry_not_accepted

          # Code R32. A rare return reason. The receiving bank could not settle this transaction.
          RDFI_NON_SETTLEMENT = :rdfi_non_settlement

          # Code R30. A rare return reason. The receiving bank does not accept Check Truncation ACH transfers.
          RDFI_PARTICIPANT_IN_CHECK_TRUNCATION_PROGRAM = :rdfi_participant_in_check_truncation_program

          # Code R14. A rare return reason. The payee is deceased.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY = :representative_payee_deceased_or_unable_to_continue_in_that_capacity

          # Code R75. A rare return reason. The originating bank disputes that an earlier `duplicate_entry` return was actually a duplicate.
          RETURN_NOT_A_DUPLICATE = :return_not_a_duplicate

          # Code R62. A rare return reason. The originating financial institution made a mistake and this return corrects it.
          RETURN_OF_ERRONEOUS_OR_REVERSING_DEBIT = :return_of_erroneous_or_reversing_debit

          # Code R36. A rare return reason. Return of a malformed credit entry.
          RETURN_OF_IMPROPER_CREDIT_ENTRY = :return_of_improper_credit_entry

          # Code R35. A rare return reason. Return of a malformed debit entry.
          RETURN_OF_IMPROPER_DEBIT_ENTRY = :return_of_improper_debit_entry

          # Code R33. A rare return reason. Return of a Destroyed Check ("XKC") entry.
          RETURN_OF_XCK_ENTRY = :return_of_xck_entry

          # Code R37. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          SOURCE_DOCUMENT_PRESENTED_FOR_PAYMENT = :source_document_presented_for_payment

          # Code R50. A rare return reason. State law prevents the bank from accepting the Represented Check ("RCK") entry.
          STATE_LAW_AFFECTING_RCK_ACCEPTANCE = :state_law_affecting_rck_acceptance

          # Code R52. A rare return reason. A stop payment was issued on a Represented Check ("RCK") entry.
          STOP_PAYMENT_ON_ITEM_RELATED_TO_RCK_ENTRY = :stop_payment_on_item_related_to_rck_entry

          # Code R38. A rare return reason. The source attached to the ACH, usually an ACH check conversion, includes a stop payment.
          STOP_PAYMENT_ON_SOURCE_DOCUMENT = :stop_payment_on_source_document

          # Code R73. A rare return reason. The bank receiving an `untimely_return` believes it was on time.
          TIMELY_ORIGINAL_RETURN = :timely_original_return

          # Code R27. A rare return reason. An ACH return's trace number does not match an originated ACH.
          TRACE_NUMBER_ERROR = :trace_number_error

          # Code R72. A rare return reason. The dishonored return was sent too late.
          UNTIMELY_DISHONORED_RETURN = :untimely_dishonored_return

          # Code R68. A rare return reason. The return was sent too late.
          UNTIMELY_RETURN = :untimely_return
        end

        # @!parse
        #   # Create a new instance of Return from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the transfer was created.
        #   #   @option data [String] :raw_return_reason_code The three character ACH return code, in the range R01 to R85.
        #   #   @option data [String] :return_reason_code Why the ACH Transfer was returned. This reason code is sent by the receiving
        #   #     bank back to Increase.
        #   #   @option data [String] :trace_number A 15 digit number that was generated by the bank that initiated the return. The
        #   #     trace number of the return is different than that of the original transfer. ACH
        #   #     trace numbers are not unique, but along with the amount and date this number can
        #   #     be used to identify the ACH return at the bank that initiated it.
        #   #   @option data [String] :transaction_id The identifier of the Transaction associated with this return.
        #   #   @option data [String] :transfer_id The identifier of the ACH Transfer associated with this return.
        #   def initialize(data = {}) = super
      end

      class Settlement < BaseModel
        # @!attribute [rw] settled_at
        #   When the funds for this transfer have settled at the destination bank at the Federal Reserve.
        #   @return [Time]
        required :settled_at, Time

        # @!parse
        #   # Create a new instance of Settlement from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :settled_at When the funds for this transfer have settled at the destination bank at the
        #   #     Federal Reserve.
        #   def initialize(data = {}) = super
      end

      # The Standard Entry Class (SEC) code to use for the transfer.
      class StandardEntryClassCode < Increase::Enum
        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated
      end

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer belongs to a Transfer Session that is pending confirmation.
        PENDING_TRANSFER_SESSION_CONFIRMATION = :pending_transfer_session_confirmation

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer is pending submission to the Federal Reserve.
        PENDING_SUBMISSION = :pending_submission

        # The transfer is complete.
        SUBMITTED = :submitted

        # The transfer has been returned.
        RETURNED = :returned

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer has been rejected.
        REJECTED = :rejected
      end

      class Submission < BaseModel
        # @!attribute [rw] effective_date
        #   The ACH transfer's effective date as sent to the Federal Reserve. If a specific date was configured using `preferred_effective_date`, this will match that value. Otherwise, it will be the date selected (following the specified settlement schedule) at the time the transfer was submitted.
        #   @return [Date]
        required :effective_date, Date

        # @!attribute [rw] expected_funds_settlement_at
        #   When the transfer is expected to settle in the recipient's account. Credits may be available sooner, at the receiving banks discretion. The FedACH schedule is published [here](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
        #   @return [Time]
        required :expected_funds_settlement_at, Time

        # @!attribute [rw] expected_settlement_schedule
        #   The settlement schedule the transfer is expected to follow. This expectation takes into account the `effective_date`, `submitted_at`, and the amount of the transfer.
        #   @return [Symbol, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule]
        required :expected_settlement_schedule,
                 enum: -> { Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule }

        # @!attribute [rw] submitted_at
        #   When the ACH transfer was sent to FedACH.
        #   @return [Time]
        required :submitted_at, Time

        # @!attribute [rw] trace_number
        #   A 15 digit number recorded in the Nacha file and transmitted to the receiving bank. Along with the amount, date, and originating routing number, this can be used to identify the ACH transfer at the receiving bank. ACH trace numbers are not unique, but are [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
        #   @return [String]
        required :trace_number, String

        # The settlement schedule the transfer is expected to follow. This expectation takes into account the `effective_date`, `submitted_at`, and the amount of the transfer.
        class ExpectedSettlementSchedule < Increase::Enum
          # The transfer is expected to settle same-day.
          SAME_DAY = :same_day

          # The transfer is expected to settle on a future date.
          FUTURE_DATED = :future_dated
        end

        # @!parse
        #   # Create a new instance of Submission from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :effective_date The ACH transfer's effective date as sent to the Federal Reserve. If a specific
        #   #     date was configured using `preferred_effective_date`, this will match that
        #   #     value. Otherwise, it will be the date selected (following the specified
        #   #     settlement schedule) at the time the transfer was submitted.
        #   #   @option data [String] :expected_funds_settlement_at When the transfer is expected to settle in the recipient's account. Credits may
        #   #     be available sooner, at the receiving banks discretion. The FedACH schedule is
        #   #     published
        #   #     [here](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
        #   #   @option data [String] :expected_settlement_schedule The settlement schedule the transfer is expected to follow. This expectation
        #   #     takes into account the `effective_date`, `submitted_at`, and the amount of the
        #   #     transfer.
        #   #   @option data [String] :submitted_at When the ACH transfer was sent to FedACH.
        #   #   @option data [String] :trace_number A 15 digit number recorded in the Nacha file and transmitted to the receiving
        #   #     bank. Along with the amount, date, and originating routing number, this can be
        #   #     used to identify the ACH transfer at the receiving bank. ACH trace numbers are
        #   #     not unique, but are
        #   #     [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
        #   def initialize(data = {}) = super
      end

      # A constant representing the object's type. For this resource it will always be `ach_transfer`.
      class Type < Increase::Enum
        ACH_TRANSFER = :ach_transfer
      end

      # @!parse
      #   # Create a new instance of ACHTransfer from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The ACH transfer's identifier.
      #   #   @option data [String] :account_id The Account to which the transfer belongs.
      #   #   @option data [String] :account_number The destination account number.
      #   #   @option data [Object] :acknowledgement After the transfer is acknowledged by FedACH, this will contain supplemental
      #   #     details. The Federal Reserve sends an acknowledgement message for each file that
      #   #     Increase submits.
      #   #   @option data [Object] :addenda Additional information that will be sent to the recipient.
      #   #   @option data [Integer] :amount The transfer amount in USD cents. A positive amount indicates a credit transfer
      #   #     pushing funds to the receiving account. A negative amount indicates a debit
      #   #     transfer pulling funds from the receiving account.
      #   #   @option data [Object] :approval If your account requires approvals for transfers and the transfer was approved,
      #   #     this will contain details of the approval.
      #   #   @option data [Object] :cancellation If your account requires approvals for transfers and the transfer was not
      #   #     approved, this will contain details of the cancellation.
      #   #   @option data [String] :company_descriptive_date The description of the date of the transfer.
      #   #   @option data [String] :company_discretionary_data The data you chose to associate with the transfer.
      #   #   @option data [String] :company_entry_description The description of the transfer you set to be shown to the recipient.
      #   #   @option data [String] :company_name The name by which the recipient knows you.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #     the transfer was created.
      #   #   @option data [Object] :created_by What object created the transfer, either via the API or the dashboard.
      #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   #     currency. For ACH transfers this is always equal to `usd`.
      #   #   @option data [String] :destination_account_holder The type of entity that owns the account to which the ACH Transfer is being
      #   #     sent.
      #   #   @option data [String] :external_account_id The identifier of the External Account the transfer was made to, if any.
      #   #   @option data [String] :funding The type of the account to which the transfer will be sent.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [Object] :inbound_funds_hold Increase will sometimes hold the funds for ACH debit transfers. If funds are
      #   #     held, this sub-object will contain details of the hold.
      #   #   @option data [String] :individual_id Your identifier for the transfer recipient.
      #   #   @option data [String] :individual_name The name of the transfer recipient. This value is information and not verified
      #   #     by the recipient's bank.
      #   #   @option data [String] :network The transfer's network.
      #   #   @option data [Array<Object>] :notifications_of_change If the receiving bank accepts the transfer but notifies that future transfers
      #   #     should use different details, this will contain those details.
      #   #   @option data [String] :pending_transaction_id The ID for the pending transaction representing the transfer. A pending
      #   #     transaction is created when the transfer
      #   #     [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   #     by someone else in your organization.
      #   #   @option data [Object] :preferred_effective_date Configuration for how the effective date of the transfer will be set. This
      #   #     determines same-day vs future-dated settlement timing. If not set, defaults to a
      #   #     `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
      #   #     must be set.
      #   #   @option data [Object] :return If your transfer is returned, this will contain details of the return.
      #   #   @option data [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   #   @option data [Object] :settlement A subhash containing information about when and how the transfer settled at the
      #   #     Federal Reserve.
      #   #   @option data [String] :standard_entry_class_code The Standard Entry Class (SEC) code to use for the transfer.
      #   #   @option data [String] :statement_descriptor The descriptor that will show on the recipient's bank statement.
      #   #   @option data [String] :status The lifecycle status of the transfer.
      #   #   @option data [Object] :submission After the transfer is submitted to FedACH, this will contain supplemental
      #   #     details. Increase batches transfers and submits a file to the Federal Reserve
      #   #     roughly every 30 minutes. The Federal Reserve processes ACH transfers during
      #   #     weekdays according to their
      #   #     [posted schedule](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
      #   #   @option data [String] :transaction_id The ID for the transaction funding the transfer.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `ach_transfer`.
      #   def initialize(data = {}) = super
    end
  end
end
