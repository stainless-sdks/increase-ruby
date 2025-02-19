# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # ach_transfer => {
    #   id: String,
    #   account_id: String,
    #   account_number: String,
    #   acknowledgement: Increase::Models::ACHTransfer::Acknowledgement,
    #   addenda: Increase::Models::ACHTransfer::Addenda,
    #   **_
    # }
    # ```
    class ACHTransfer < Increase::BaseModel
      # @!attribute id
      #   The ACH transfer's identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The Account to which the transfer belongs.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number
      #   The destination account number.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute acknowledgement
      #   After the transfer is acknowledged by FedACH, this will contain supplemental
      #     details. The Federal Reserve sends an acknowledgement message for each file that
      #     Increase submits.
      #
      #   @return [Increase::Models::ACHTransfer::Acknowledgement, nil]
      required :acknowledgement, -> { Increase::Models::ACHTransfer::Acknowledgement }, nil?: true

      # @!attribute addenda
      #   Additional information that will be sent to the recipient.
      #
      #   @return [Increase::Models::ACHTransfer::Addenda, nil]
      required :addenda, -> { Increase::Models::ACHTransfer::Addenda }, nil?: true

      # @!attribute amount
      #   The transfer amount in USD cents. A positive amount indicates a credit transfer
      #     pushing funds to the receiving account. A negative amount indicates a debit
      #     transfer pulling funds from the receiving account.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute approval
      #   If your account requires approvals for transfers and the transfer was approved,
      #     this will contain details of the approval.
      #
      #   @return [Increase::Models::ACHTransfer::Approval, nil]
      required :approval, -> { Increase::Models::ACHTransfer::Approval }, nil?: true

      # @!attribute cancellation
      #   If your account requires approvals for transfers and the transfer was not
      #     approved, this will contain details of the cancellation.
      #
      #   @return [Increase::Models::ACHTransfer::Cancellation, nil]
      required :cancellation, -> { Increase::Models::ACHTransfer::Cancellation }, nil?: true

      # @!attribute company_descriptive_date
      #   The description of the date of the transfer.
      #
      #   @return [String, nil]
      required :company_descriptive_date, String, nil?: true

      # @!attribute company_discretionary_data
      #   The data you chose to associate with the transfer.
      #
      #   @return [String, nil]
      required :company_discretionary_data, String, nil?: true

      # @!attribute company_entry_description
      #   The description of the transfer you set to be shown to the recipient.
      #
      #   @return [String, nil]
      required :company_entry_description, String, nil?: true

      # @!attribute company_name
      #   The name by which the recipient knows you.
      #
      #   @return [String, nil]
      required :company_name, String, nil?: true

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #     the transfer was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #   What object created the transfer, either via the API or the dashboard.
      #
      #   @return [Increase::Models::ACHTransfer::CreatedBy, nil]
      required :created_by, -> { Increase::Models::ACHTransfer::CreatedBy }, nil?: true

      # @!attribute currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #     currency. For ACH transfers this is always equal to `usd`.
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Currency]
      required :currency, enum: -> { Increase::Models::ACHTransfer::Currency }

      # @!attribute destination_account_holder
      #   The type of entity that owns the account to which the ACH Transfer is being
      #     sent.
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::DestinationAccountHolder]
      required :destination_account_holder, enum: -> { Increase::Models::ACHTransfer::DestinationAccountHolder }

      # @!attribute external_account_id
      #   The identifier of the External Account the transfer was made to, if any.
      #
      #   @return [String, nil]
      required :external_account_id, String, nil?: true

      # @!attribute funding
      #   The type of the account to which the transfer will be sent.
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Funding]
      required :funding, enum: -> { Increase::Models::ACHTransfer::Funding }

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute inbound_funds_hold
      #   Increase will sometimes hold the funds for ACH debit transfers. If funds are
      #     held, this sub-object will contain details of the hold.
      #
      #   @return [Increase::Models::ACHTransfer::InboundFundsHold, nil]
      required :inbound_funds_hold, -> { Increase::Models::ACHTransfer::InboundFundsHold }, nil?: true

      # @!attribute individual_id
      #   Your identifier for the transfer recipient.
      #
      #   @return [String, nil]
      required :individual_id, String, nil?: true

      # @!attribute individual_name
      #   The name of the transfer recipient. This value is information and not verified
      #     by the recipient's bank.
      #
      #   @return [String, nil]
      required :individual_name, String, nil?: true

      # @!attribute network
      #   The transfer's network.
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Network]
      required :network, enum: -> { Increase::Models::ACHTransfer::Network }

      # @!attribute notifications_of_change
      #   If the receiving bank accepts the transfer but notifies that future transfers
      #     should use different details, this will contain those details.
      #
      #   @return [Array<Increase::Models::ACHTransfer::NotificationsOfChange>]
      required :notifications_of_change,
               -> { Increase::ArrayOf[Increase::Models::ACHTransfer::NotificationsOfChange] }

      # @!attribute pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending
      #     transaction is created when the transfer
      #     [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #     by someone else in your organization.
      #
      #   @return [String, nil]
      required :pending_transaction_id, String, nil?: true

      # @!attribute preferred_effective_date
      #   Configuration for how the effective date of the transfer will be set. This
      #     determines same-day vs future-dated settlement timing. If not set, defaults to a
      #     `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
      #     must be set.
      #
      #   @return [Increase::Models::ACHTransfer::PreferredEffectiveDate]
      required :preferred_effective_date, -> { Increase::Models::ACHTransfer::PreferredEffectiveDate }

      # @!attribute return_
      #   If your transfer is returned, this will contain details of the return.
      #
      #   @return [Increase::Models::ACHTransfer::Return, nil]
      required :return_, -> { Increase::Models::ACHTransfer::Return }, api_name: :return, nil?: true

      # @!attribute routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute settlement
      #   A subhash containing information about when and how the transfer settled at the
      #     Federal Reserve.
      #
      #   @return [Increase::Models::ACHTransfer::Settlement, nil]
      required :settlement, -> { Increase::Models::ACHTransfer::Settlement }, nil?: true

      # @!attribute standard_entry_class_code
      #   The Standard Entry Class (SEC) code to use for the transfer.
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::StandardEntryClassCode]
      required :standard_entry_class_code, enum: -> { Increase::Models::ACHTransfer::StandardEntryClassCode }

      # @!attribute statement_descriptor
      #   The descriptor that will show on the recipient's bank statement.
      #
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute status
      #   The lifecycle status of the transfer.
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Status]
      required :status, enum: -> { Increase::Models::ACHTransfer::Status }

      # @!attribute submission
      #   After the transfer is submitted to FedACH, this will contain supplemental
      #     details. Increase batches transfers and submits a file to the Federal Reserve
      #     roughly every 30 minutes. The Federal Reserve processes ACH transfers during
      #     weekdays according to their
      #     [posted schedule](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
      #
      #   @return [Increase::Models::ACHTransfer::Submission, nil]
      required :submission, -> { Increase::Models::ACHTransfer::Submission }, nil?: true

      # @!attribute transaction_id
      #   The ID for the transaction funding the transfer.
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `ach_transfer`.
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Type]
      required :type, enum: -> { Increase::Models::ACHTransfer::Type }

      # @!parse
      #   # ACH transfers move funds between your Increase account and any other account
      #   #   accessible by the Automated Clearing House (ACH).
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param account_number [String]
      #   # @param acknowledgement [Increase::Models::ACHTransfer::Acknowledgement, nil]
      #   # @param addenda [Increase::Models::ACHTransfer::Addenda, nil]
      #   # @param amount [Integer]
      #   # @param approval [Increase::Models::ACHTransfer::Approval, nil]
      #   # @param cancellation [Increase::Models::ACHTransfer::Cancellation, nil]
      #   # @param company_descriptive_date [String, nil]
      #   # @param company_discretionary_data [String, nil]
      #   # @param company_entry_description [String, nil]
      #   # @param company_name [String, nil]
      #   # @param created_at [Time]
      #   # @param created_by [Increase::Models::ACHTransfer::CreatedBy, nil]
      #   # @param currency [Symbol, Increase::Models::ACHTransfer::Currency]
      #   # @param destination_account_holder [Symbol, Increase::Models::ACHTransfer::DestinationAccountHolder]
      #   # @param external_account_id [String, nil]
      #   # @param funding [Symbol, Increase::Models::ACHTransfer::Funding]
      #   # @param idempotency_key [String, nil]
      #   # @param inbound_funds_hold [Increase::Models::ACHTransfer::InboundFundsHold, nil]
      #   # @param individual_id [String, nil]
      #   # @param individual_name [String, nil]
      #   # @param network [Symbol, Increase::Models::ACHTransfer::Network]
      #   # @param notifications_of_change [Array<Increase::Models::ACHTransfer::NotificationsOfChange>]
      #   # @param pending_transaction_id [String, nil]
      #   # @param preferred_effective_date [Increase::Models::ACHTransfer::PreferredEffectiveDate]
      #   # @param return_ [Increase::Models::ACHTransfer::Return, nil]
      #   # @param routing_number [String]
      #   # @param settlement [Increase::Models::ACHTransfer::Settlement, nil]
      #   # @param standard_entry_class_code [Symbol, Increase::Models::ACHTransfer::StandardEntryClassCode]
      #   # @param statement_descriptor [String]
      #   # @param status [Symbol, Increase::Models::ACHTransfer::Status]
      #   # @param submission [Increase::Models::ACHTransfer::Submission, nil]
      #   # @param transaction_id [String, nil]
      #   # @param type [Symbol, Increase::Models::ACHTransfer::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     account_number:,
      #     acknowledgement:,
      #     addenda:,
      #     amount:,
      #     approval:,
      #     cancellation:,
      #     company_descriptive_date:,
      #     company_discretionary_data:,
      #     company_entry_description:,
      #     company_name:,
      #     created_at:,
      #     created_by:,
      #     currency:,
      #     destination_account_holder:,
      #     external_account_id:,
      #     funding:,
      #     idempotency_key:,
      #     inbound_funds_hold:,
      #     individual_id:,
      #     individual_name:,
      #     network:,
      #     notifications_of_change:,
      #     pending_transaction_id:,
      #     preferred_effective_date:,
      #     return_:,
      #     routing_number:,
      #     settlement:,
      #     standard_entry_class_code:,
      #     statement_descriptor:,
      #     status:,
      #     submission:,
      #     transaction_id:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # acknowledgement => {
      #   acknowledged_at: String
      # }
      # ```
      class Acknowledgement < Increase::BaseModel
        # @!attribute acknowledged_at
        #   When the Federal Reserve acknowledged the submitted file containing this
        #     transfer.
        #
        #   @return [String]
        required :acknowledged_at, String

        # @!parse
        #   # After the transfer is acknowledged by FedACH, this will contain supplemental
        #   #   details. The Federal Reserve sends an acknowledgement message for each file that
        #   #   Increase submits.
        #   #
        #   # @param acknowledged_at [String]
        #   #
        #   def initialize(acknowledged_at:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      # ```ruby
      # addenda => {
      #   category: Increase::Models::ACHTransfer::Addenda::Category,
      #   freeform: Increase::Models::ACHTransfer::Addenda::Freeform,
      #   payment_order_remittance_advice: Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice
      # }
      # ```
      class Addenda < Increase::BaseModel
        # @!attribute category
        #   The type of the resource. We may add additional possible values for this enum
        #     over time; your application should be able to handle such additions gracefully.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::Addenda::Category]
        required :category, enum: -> { Increase::Models::ACHTransfer::Addenda::Category }

        # @!attribute freeform
        #   Unstructured `payment_related_information` passed through with the transfer.
        #
        #   @return [Increase::Models::ACHTransfer::Addenda::Freeform, nil]
        required :freeform, -> { Increase::Models::ACHTransfer::Addenda::Freeform }, nil?: true

        # @!attribute payment_order_remittance_advice
        #   Structured ASC X12 820 remittance advice records. Please reach out to
        #     [support@increase.com](mailto:support@increase.com) for more information.
        #
        #   @return [Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice, nil]
        required :payment_order_remittance_advice,
                 -> { Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice },
                 nil?: true

        # @!parse
        #   # Additional information that will be sent to the recipient.
        #   #
        #   # @param category [Symbol, Increase::Models::ACHTransfer::Addenda::Category]
        #   # @param freeform [Increase::Models::ACHTransfer::Addenda::Freeform, nil]
        #   # @param payment_order_remittance_advice [Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice, nil]
        #   #
        #   def initialize(category:, freeform:, payment_order_remittance_advice:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        #
        # @example
        # ```ruby
        # case category
        # in :freeform
        #   # ...
        # in :payment_order_remittance_advice
        #   # ...
        # in :other
        #   # ...
        # end
        # ```
        class Category < Increase::Enum
          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice

          # Unknown addenda type.
          OTHER = :other

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @example
        # ```ruby
        # freeform => {
        #   entries: -> { Increase::ArrayOf[Increase::Models::ACHTransfer::Addenda::Freeform::Entry] === _1 }
        # }
        # ```
        class Freeform < Increase::BaseModel
          # @!attribute entries
          #   Each entry represents an addendum sent with the transfer.
          #
          #   @return [Array<Increase::Models::ACHTransfer::Addenda::Freeform::Entry>]
          required :entries, -> { Increase::ArrayOf[Increase::Models::ACHTransfer::Addenda::Freeform::Entry] }

          # @!parse
          #   # Unstructured `payment_related_information` passed through with the transfer.
          #   #
          #   # @param entries [Array<Increase::Models::ACHTransfer::Addenda::Freeform::Entry>]
          #   #
          #   def initialize(entries:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # entry => {
          #   payment_related_information: String
          # }
          # ```
          class Entry < Increase::BaseModel
            # @!attribute payment_related_information
            #   The payment related information passed in the addendum.
            #
            #   @return [String]
            required :payment_related_information, String

            # @!parse
            #   # @param payment_related_information [String]
            #   #
            #   def initialize(payment_related_information:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end
        end

        # @example
        # ```ruby
        # payment_order_remittance_advice => {
        #   invoices: -> { Increase::ArrayOf[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice] === _1 }
        # }
        # ```
        class PaymentOrderRemittanceAdvice < Increase::BaseModel
          # @!attribute invoices
          #   ASC X12 RMR records for this specific transfer.
          #
          #   @return [Array<Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          required :invoices,
                   -> { Increase::ArrayOf[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice] }

          # @!parse
          #   # Structured ASC X12 820 remittance advice records. Please reach out to
          #   #   [support@increase.com](mailto:support@increase.com) for more information.
          #   #
          #   # @param invoices [Array<Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          #   #
          #   def initialize(invoices:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # invoice => {
          #   invoice_number: String,
          #   paid_amount: Integer
          # }
          # ```
          class Invoice < Increase::BaseModel
            # @!attribute invoice_number
            #   The invoice number for this reference, determined in advance with the receiver.
            #
            #   @return [String]
            required :invoice_number, String

            # @!attribute paid_amount
            #   The amount that was paid for this invoice in the minor unit of its currency. For
            #     dollars, for example, this is cents.
            #
            #   @return [Integer]
            required :paid_amount, Integer

            # @!parse
            #   # @param invoice_number [String]
            #   # @param paid_amount [Integer]
            #   #
            #   def initialize(invoice_number:, paid_amount:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end
        end
      end

      # @example
      # ```ruby
      # approval => {
      #   approved_at: Time,
      #   approved_by: String
      # }
      # ```
      class Approval < Increase::BaseModel
        # @!attribute approved_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #     the transfer was approved.
        #
        #   @return [Time]
        required :approved_at, Time

        # @!attribute approved_by
        #   If the Transfer was approved by a user in the dashboard, the email address of
        #     that user.
        #
        #   @return [String, nil]
        required :approved_by, String, nil?: true

        # @!parse
        #   # If your account requires approvals for transfers and the transfer was approved,
        #   #   this will contain details of the approval.
        #   #
        #   # @param approved_at [Time]
        #   # @param approved_by [String, nil]
        #   #
        #   def initialize(approved_at:, approved_by:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      # ```ruby
      # cancellation => {
      #   canceled_at: Time,
      #   canceled_by: String
      # }
      # ```
      class Cancellation < Increase::BaseModel
        # @!attribute canceled_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #     the Transfer was canceled.
        #
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute canceled_by
        #   If the Transfer was canceled by a user in the dashboard, the email address of
        #     that user.
        #
        #   @return [String, nil]
        required :canceled_by, String, nil?: true

        # @!parse
        #   # If your account requires approvals for transfers and the transfer was not
        #   #   approved, this will contain details of the cancellation.
        #   #
        #   # @param canceled_at [Time]
        #   # @param canceled_by [String, nil]
        #   #
        #   def initialize(canceled_at:, canceled_by:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      # ```ruby
      # created_by => {
      #   api_key: Increase::Models::ACHTransfer::CreatedBy::APIKey,
      #   category: Increase::Models::ACHTransfer::CreatedBy::Category,
      #   oauth_application: Increase::Models::ACHTransfer::CreatedBy::OAuthApplication,
      #   user: Increase::Models::ACHTransfer::CreatedBy::User
      # }
      # ```
      class CreatedBy < Increase::BaseModel
        # @!attribute api_key
        #   If present, details about the API key that created the transfer.
        #
        #   @return [Increase::Models::ACHTransfer::CreatedBy::APIKey, nil]
        required :api_key, -> { Increase::Models::ACHTransfer::CreatedBy::APIKey }, nil?: true

        # @!attribute category
        #   The type of object that created this transfer.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::ACHTransfer::CreatedBy::Category }

        # @!attribute oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #
        #   @return [Increase::Models::ACHTransfer::CreatedBy::OAuthApplication, nil]
        required :oauth_application, -> { Increase::Models::ACHTransfer::CreatedBy::OAuthApplication }, nil?: true

        # @!attribute user
        #   If present, details about the User that created the transfer.
        #
        #   @return [Increase::Models::ACHTransfer::CreatedBy::User, nil]
        required :user, -> { Increase::Models::ACHTransfer::CreatedBy::User }, nil?: true

        # @!parse
        #   # What object created the transfer, either via the API or the dashboard.
        #   #
        #   # @param api_key [Increase::Models::ACHTransfer::CreatedBy::APIKey, nil]
        #   # @param category [Symbol, Increase::Models::ACHTransfer::CreatedBy::Category]
        #   # @param oauth_application [Increase::Models::ACHTransfer::CreatedBy::OAuthApplication, nil]
        #   # @param user [Increase::Models::ACHTransfer::CreatedBy::User, nil]
        #   #
        #   def initialize(api_key:, category:, oauth_application:, user:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # api_key => {
        #   description: String
        # }
        # ```
        class APIKey < Increase::BaseModel
          # @!attribute description
          #   The description set for the API key when it was created.
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!parse
          #   # If present, details about the API key that created the transfer.
          #   #
          #   # @param description [String, nil]
          #   #
          #   def initialize(description:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @abstract
        #
        # The type of object that created this transfer.
        #
        # @example
        # ```ruby
        # case category
        # in :api_key
        #   # ...
        # in :oauth_application
        #   # ...
        # in :user
        #   # ...
        # end
        # ```
        class Category < Increase::Enum
          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @example
        # ```ruby
        # oauth_application => {
        #   name: String
        # }
        # ```
        class OAuthApplication < Increase::BaseModel
          # @!attribute name
          #   The name of the OAuth Application.
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # If present, details about the OAuth Application that created the transfer.
          #   #
          #   # @param name [String]
          #   #
          #   def initialize(name:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # user => {
        #   email: String
        # }
        # ```
        class User < Increase::BaseModel
          # @!attribute email
          #   The email address of the User.
          #
          #   @return [String]
          required :email, String

          # @!parse
          #   # If present, details about the User that created the transfer.
          #   #
          #   # @param email [String]
          #   #
          #   def initialize(email:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # @abstract
      #
      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For ACH transfers this is always equal to `usd`.
      #
      # @example
      # ```ruby
      # case currency
      # in :CAD
      #   # ...
      # in :CHF
      #   # ...
      # in :EUR
      #   # ...
      # in :GBP
      #   # ...
      # in :JPY
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # The type of entity that owns the account to which the ACH Transfer is being
      #   sent.
      #
      # @example
      # ```ruby
      # case destination_account_holder
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # in :unknown
      #   # ...
      # end
      # ```
      class DestinationAccountHolder < Increase::Enum
        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # The type of the account to which the transfer will be sent.
      #
      # @example
      # ```ruby
      # case funding
      # in :checking
      #   # ...
      # in :savings
      #   # ...
      # end
      # ```
      class Funding < Increase::Enum
        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @example
      # ```ruby
      # inbound_funds_hold => {
      #   id: String,
      #   amount: Integer,
      #   automatically_releases_at: Time,
      #   created_at: Time,
      #   currency: Increase::Models::ACHTransfer::InboundFundsHold::Currency,
      #   **_
      # }
      # ```
      class InboundFundsHold < Increase::BaseModel
        # @!attribute id
        #   The Inbound Funds Hold identifier.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The held amount in the minor unit of the account's currency. For dollars, for
        #     example, this is cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute automatically_releases_at
        #   When the hold will be released automatically. Certain conditions may cause it to
        #     be released before this time.
        #
        #   @return [Time]
        required :automatically_releases_at, Time

        # @!attribute created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold
        #     was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #     currency.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Currency]
        required :currency, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Currency }

        # @!attribute held_transaction_id
        #   The ID of the Transaction for which funds were held.
        #
        #   @return [String, nil]
        required :held_transaction_id, String, nil?: true

        # @!attribute pending_transaction_id
        #   The ID of the Pending Transaction representing the held funds.
        #
        #   @return [String, nil]
        required :pending_transaction_id, String, nil?: true

        # @!attribute released_at
        #   When the hold was released (if it has been released).
        #
        #   @return [Time, nil]
        required :released_at, Time, nil?: true

        # @!attribute status
        #   The status of the hold.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Status]
        required :status, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Status }

        # @!attribute type
        #   A constant representing the object's type. For this resource it will always be
        #     `inbound_funds_hold`.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Type]
        required :type, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Type }

        # @!parse
        #   # Increase will sometimes hold the funds for ACH debit transfers. If funds are
        #   #   held, this sub-object will contain details of the hold.
        #   #
        #   # @param id [String]
        #   # @param amount [Integer]
        #   # @param automatically_releases_at [Time]
        #   # @param created_at [Time]
        #   # @param currency [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Currency]
        #   # @param held_transaction_id [String, nil]
        #   # @param pending_transaction_id [String, nil]
        #   # @param released_at [Time, nil]
        #   # @param status [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Status]
        #   # @param type [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Type]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     automatically_releases_at:,
        #     created_at:,
        #     currency:,
        #     held_transaction_id:,
        #     pending_transaction_id:,
        #     released_at:,
        #     status:,
        #     type:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #   currency.
        #
        # @example
        # ```ruby
        # case currency
        # in :CAD
        #   # ...
        # in :CHF
        #   # ...
        # in :EUR
        #   # ...
        # in :GBP
        #   # ...
        # in :JPY
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # The status of the hold.
        #
        # @example
        # ```ruby
        # case status
        # in :held
        #   # ...
        # in :complete
        #   # ...
        # end
        # ```
        class Status < Increase::Enum
          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        #
        # @example
        # ```ruby
        # case type
        # in :inbound_funds_hold
        #   # ...
        # end
        # ```
        class Type < Increase::Enum
          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @abstract
      #
      # The transfer's network.
      #
      # @example
      # ```ruby
      # case network
      # in :ach
      #   # ...
      # end
      # ```
      class Network < Increase::Enum
        ACH = :ach

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @example
      # ```ruby
      # notifications_of_change => {
      #   change_code: Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode,
      #   corrected_data: String,
      #   created_at: Time
      # }
      # ```
      class NotificationsOfChange < Increase::BaseModel
        # @!attribute change_code
        #   The required type of change that is being signaled by the receiving financial
        #     institution.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode]
        required :change_code, enum: -> { Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode }

        # @!attribute corrected_data
        #   The corrected data that should be used in future ACHs to this account. This may
        #     contain the suggested new account number or routing number. When the
        #     `change_code` is `incorrect_transaction_code`, this field contains an integer.
        #     Numbers starting with a 2 encourage changing the `funding` parameter to
        #     checking; numbers starting with a 3 encourage changing to savings.
        #
        #   @return [String]
        required :corrected_data, String

        # @!attribute created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #     the notification occurred.
        #
        #   @return [Time]
        required :created_at, Time

        # @!parse
        #   # @param change_code [Symbol, Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode]
        #   # @param corrected_data [String]
        #   # @param created_at [Time]
        #   #
        #   def initialize(change_code:, corrected_data:, created_at:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # The required type of change that is being signaled by the receiving financial
        #   institution.
        #
        # @example
        # ```ruby
        # case change_code
        # in :incorrect_account_number
        #   # ...
        # in :incorrect_routing_number
        #   # ...
        # in :incorrect_routing_number_and_account_number
        #   # ...
        # in :incorrect_transaction_code
        #   # ...
        # in :incorrect_account_number_and_transaction_code
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # preferred_effective_date => {
      #   date: Date,
      #   settlement_schedule: Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule
      # }
      # ```
      class PreferredEffectiveDate < Increase::BaseModel
        # @!attribute date
        #   A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to
        #     use as the effective date when submitting this transfer.
        #
        #   @return [Date, nil]
        required :date, Date, nil?: true

        # @!attribute settlement_schedule
        #   A schedule by which Increase will choose an effective date for the transfer.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule, nil]
        required :settlement_schedule,
                 enum: -> { Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule },
                 nil?: true

        # @!parse
        #   # Configuration for how the effective date of the transfer will be set. This
        #   #   determines same-day vs future-dated settlement timing. If not set, defaults to a
        #   #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
        #   #   must be set.
        #   #
        #   # @param date [Date, nil]
        #   # @param settlement_schedule [Symbol, Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule, nil]
        #   #
        #   def initialize(date:, settlement_schedule:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # A schedule by which Increase will choose an effective date for the transfer.
        #
        # @example
        # ```ruby
        # case settlement_schedule
        # in :same_day
        #   # ...
        # in :future_dated
        #   # ...
        # end
        # ```
        class SettlementSchedule < Increase::Enum
          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted.
          # This is necessary, but not sufficient for the transfer to be settled same-day:
          # it must also be submitted before the last same-day cutoff
          # and be less than or equal to $1,000.000.00.
          SAME_DAY = :same_day

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = :future_dated

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # return => {
      #   created_at: Time,
      #   raw_return_reason_code: String,
      #   return_reason_code: Increase::Models::ACHTransfer::Return::ReturnReasonCode,
      #   trace_number: String,
      #   transaction_id: String
      # }
      # ```
      class Return < Increase::BaseModel
        # @!attribute created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #     the transfer was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute raw_return_reason_code
        #   The three character ACH return code, in the range R01 to R85.
        #
        #   @return [String]
        required :raw_return_reason_code, String

        # @!attribute return_reason_code
        #   Why the ACH Transfer was returned. This reason code is sent by the receiving
        #     bank back to Increase.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::Return::ReturnReasonCode]
        required :return_reason_code, enum: -> { Increase::Models::ACHTransfer::Return::ReturnReasonCode }

        # @!attribute trace_number
        #   A 15 digit number that was generated by the bank that initiated the return. The
        #     trace number of the return is different than that of the original transfer. ACH
        #     trace numbers are not unique, but along with the amount and date this number can
        #     be used to identify the ACH return at the bank that initiated it.
        #
        #   @return [String]
        required :trace_number, String

        # @!attribute transaction_id
        #   The identifier of the Transaction associated with this return.
        #
        #   @return [String]
        required :transaction_id, String

        # @!attribute transfer_id
        #   The identifier of the ACH Transfer associated with this return.
        #
        #   @return [String]
        required :transfer_id, String

        # @!parse
        #   # If your transfer is returned, this will contain details of the return.
        #   #
        #   # @param created_at [Time]
        #   # @param raw_return_reason_code [String]
        #   # @param return_reason_code [Symbol, Increase::Models::ACHTransfer::Return::ReturnReasonCode]
        #   # @param trace_number [String]
        #   # @param transaction_id [String]
        #   # @param transfer_id [String]
        #   #
        #   def initialize(
        #     created_at:,
        #     raw_return_reason_code:,
        #     return_reason_code:,
        #     trace_number:,
        #     transaction_id:,
        #     transfer_id:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # Why the ACH Transfer was returned. This reason code is sent by the receiving
        #   bank back to Increase.
        #
        # @example
        # ```ruby
        # case return_reason_code
        # in :insufficient_fund
        #   # ...
        # in :no_account
        #   # ...
        # in :account_closed
        #   # ...
        # in :invalid_account_number_structure
        #   # ...
        # in :account_frozen_entry_returned_per_ofac_instruction
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # settlement => {
      #   settled_at: Time
      # }
      # ```
      class Settlement < Increase::BaseModel
        # @!attribute settled_at
        #   When the funds for this transfer have settled at the destination bank at the
        #     Federal Reserve.
        #
        #   @return [Time]
        required :settled_at, Time

        # @!parse
        #   # A subhash containing information about when and how the transfer settled at the
        #   #   Federal Reserve.
        #   #
        #   # @param settled_at [Time]
        #   #
        #   def initialize(settled_at:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @abstract
      #
      # The Standard Entry Class (SEC) code to use for the transfer.
      #
      # @example
      # ```ruby
      # case standard_entry_class_code
      # in :corporate_credit_or_debit
      #   # ...
      # in :corporate_trade_exchange
      #   # ...
      # in :prearranged_payments_and_deposit
      #   # ...
      # in :internet_initiated
      #   # ...
      # end
      # ```
      class StandardEntryClassCode < Increase::Enum
        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # The lifecycle status of the transfer.
      #
      # @example
      # ```ruby
      # case status
      # in :pending_approval
      #   # ...
      # in :pending_transfer_session_confirmation
      #   # ...
      # in :canceled
      #   # ...
      # in :pending_submission
      #   # ...
      # in :pending_reviewing
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Status < Increase::Enum
        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer belongs to a Transfer Session that is pending confirmation.
        PENDING_TRANSFER_SESSION_CONFIRMATION = :pending_transfer_session_confirmation

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending submission to the Federal Reserve.
        PENDING_SUBMISSION = :pending_submission

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer has been rejected.
        REJECTED = :rejected

        # The transfer is complete.
        SUBMITTED = :submitted

        # The transfer has been returned.
        RETURNED = :returned

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @example
      # ```ruby
      # submission => {
      #   effective_date: Date,
      #   expected_funds_settlement_at: Time,
      #   expected_settlement_schedule: Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule,
      #   submitted_at: Time,
      #   trace_number: String
      # }
      # ```
      class Submission < Increase::BaseModel
        # @!attribute effective_date
        #   The ACH transfer's effective date as sent to the Federal Reserve. If a specific
        #     date was configured using `preferred_effective_date`, this will match that
        #     value. Otherwise, it will be the date selected (following the specified
        #     settlement schedule) at the time the transfer was submitted.
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute expected_funds_settlement_at
        #   When the transfer is expected to settle in the recipient's account. Credits may
        #     be available sooner, at the receiving banks discretion. The FedACH schedule is
        #     published
        #     [here](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
        #
        #   @return [Time]
        required :expected_funds_settlement_at, Time

        # @!attribute expected_settlement_schedule
        #   The settlement schedule the transfer is expected to follow. This expectation
        #     takes into account the `effective_date`, `submitted_at`, and the amount of the
        #     transfer.
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule]
        required :expected_settlement_schedule,
                 enum: -> { Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule }

        # @!attribute submitted_at
        #   When the ACH transfer was sent to FedACH.
        #
        #   @return [Time]
        required :submitted_at, Time

        # @!attribute trace_number
        #   A 15 digit number recorded in the Nacha file and transmitted to the receiving
        #     bank. Along with the amount, date, and originating routing number, this can be
        #     used to identify the ACH transfer at the receiving bank. ACH trace numbers are
        #     not unique, but are
        #     [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
        #
        #   @return [String]
        required :trace_number, String

        # @!parse
        #   # After the transfer is submitted to FedACH, this will contain supplemental
        #   #   details. Increase batches transfers and submits a file to the Federal Reserve
        #   #   roughly every 30 minutes. The Federal Reserve processes ACH transfers during
        #   #   weekdays according to their
        #   #   [posted schedule](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
        #   #
        #   # @param effective_date [Date]
        #   # @param expected_funds_settlement_at [Time]
        #   # @param expected_settlement_schedule [Symbol, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule]
        #   # @param submitted_at [Time]
        #   # @param trace_number [String]
        #   #
        #   def initialize(
        #     effective_date:,
        #     expected_funds_settlement_at:,
        #     expected_settlement_schedule:,
        #     submitted_at:,
        #     trace_number:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # The settlement schedule the transfer is expected to follow. This expectation
        #   takes into account the `effective_date`, `submitted_at`, and the amount of the
        #   transfer.
        #
        # @example
        # ```ruby
        # case expected_settlement_schedule
        # in :same_day
        #   # ...
        # in :future_dated
        #   # ...
        # end
        # ```
        class ExpectedSettlementSchedule < Increase::Enum
          # The transfer is expected to settle same-day.
          SAME_DAY = :same_day

          # The transfer is expected to settle on a future date.
          FUTURE_DATED = :future_dated

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `ach_transfer`.
      #
      # @example
      # ```ruby
      # case type
      # in :ach_transfer
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        ACH_TRANSFER = :ach_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
