# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # check_transfer => {
    #   id: String,
    #   account_id: String,
    #   account_number: String,
    #   amount: Integer,
    #   approval: Increase::Models::CheckTransfer::Approval,
    #   **_
    # }
    # ```
    class CheckTransfer < Increase::BaseModel
      # @!attribute id
      #   The Check transfer's identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The identifier of the Account from which funds will be transferred.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number
      #   The account number printed on the check.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute amount
      #   The transfer amount in USD cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute approval
      #   If your account requires approvals for transfers and the transfer was approved, this will contain details of the approval.
      #
      #   @return [Increase::Models::CheckTransfer::Approval, nil]
      required :approval, -> { Increase::Models::CheckTransfer::Approval }

      # @!attribute approved_inbound_check_deposit_id
      #   If the Check Transfer was successfully deposited, this will contain the identifier of the Inbound Check Deposit object with details of the deposit.
      #
      #   @return [String, nil]
      required :approved_inbound_check_deposit_id, String

      # @!attribute cancellation
      #   If your account requires approvals for transfers and the transfer was not approved, this will contain details of the cancellation.
      #
      #   @return [Increase::Models::CheckTransfer::Cancellation, nil]
      required :cancellation, -> { Increase::Models::CheckTransfer::Cancellation }

      # @!attribute check_number
      #   The check number printed on the check.
      #
      #   @return [String]
      required :check_number, String

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #   What object created the transfer, either via the API or the dashboard.
      #
      #   @return [Increase::Models::CheckTransfer::CreatedBy, nil]
      required :created_by, -> { Increase::Models::CheckTransfer::CreatedBy }

      # @!attribute currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
      #
      #   @return [Symbol, Increase::Models::CheckTransfer::Currency]
      required :currency, enum: -> { Increase::Models::CheckTransfer::Currency }

      # @!attribute fulfillment_method
      #   Whether Increase will print and mail the check or if you will do it yourself.
      #
      #   @return [Symbol, Increase::Models::CheckTransfer::FulfillmentMethod]
      required :fulfillment_method, enum: -> { Increase::Models::CheckTransfer::FulfillmentMethod }

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute mailing
      #   If the check has been mailed by Increase, this will contain details of the shipment.
      #
      #   @return [Increase::Models::CheckTransfer::Mailing, nil]
      required :mailing, -> { Increase::Models::CheckTransfer::Mailing }

      # @!attribute pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending transaction is created when the transfer [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals) by someone else in your organization.
      #
      #   @return [String, nil]
      required :pending_transaction_id, String

      # @!attribute physical_check
      #   Details relating to the physical check that Increase will print and mail. Will be present if and only if `fulfillment_method` is equal to `physical_check`.
      #
      #   @return [Increase::Models::CheckTransfer::PhysicalCheck, nil]
      required :physical_check, -> { Increase::Models::CheckTransfer::PhysicalCheck }

      # @!attribute routing_number
      #   The routing number printed on the check.
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute source_account_number_id
      #   The identifier of the Account Number from which to send the transfer and print on the check.
      #
      #   @return [String, nil]
      required :source_account_number_id, String

      # @!attribute status
      #   The lifecycle status of the transfer.
      #
      #   @return [Symbol, Increase::Models::CheckTransfer::Status]
      required :status, enum: -> { Increase::Models::CheckTransfer::Status }

      # @!attribute stop_payment_request
      #   After a stop-payment is requested on the check, this will contain supplemental details.
      #
      #   @return [Increase::Models::CheckTransfer::StopPaymentRequest, nil]
      required :stop_payment_request, -> { Increase::Models::CheckTransfer::StopPaymentRequest }

      # @!attribute submission
      #   After the transfer is submitted, this will contain supplemental details.
      #
      #   @return [Increase::Models::CheckTransfer::Submission, nil]
      required :submission, -> { Increase::Models::CheckTransfer::Submission }

      # @!attribute third_party
      #   Details relating to the custom fulfillment you will perform. Will be present if and only if `fulfillment_method` is equal to `third_party`.
      #
      #   @return [Increase::Models::CheckTransfer::ThirdParty, nil]
      required :third_party, -> { Increase::Models::CheckTransfer::ThirdParty }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `check_transfer`.
      #
      #   @return [Symbol, Increase::Models::CheckTransfer::Type]
      required :type, enum: -> { Increase::Models::CheckTransfer::Type }

      # @!parse
      #   # Check Transfers move funds from your Increase account by mailing a physical
      #   #   check.
      #   #
      #   # @param id [String] The Check transfer's identifier.
      #   #
      #   # @param account_id [String] The identifier of the Account from which funds will be transferred.
      #   #
      #   # @param account_number [String] The account number printed on the check.
      #   #
      #   # @param amount [Integer] The transfer amount in USD cents.
      #   #
      #   # @param approval [Increase::Models::CheckTransfer::Approval, nil] If your account requires approvals for transfers and the transfer was approved,
      #   #   this will contain details of the approval.
      #   #
      #   # @param approved_inbound_check_deposit_id [String, nil] If the Check Transfer was successfully deposited, this will contain the
      #   #   identifier of the Inbound Check Deposit object with details of the deposit.
      #   #
      #   # @param cancellation [Increase::Models::CheckTransfer::Cancellation, nil] If your account requires approvals for transfers and the transfer was not
      #   #   approved, this will contain details of the cancellation.
      #   #
      #   # @param check_number [String] The check number printed on the check.
      #   #
      #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #   the transfer was created.
      #   #
      #   # @param created_by [Increase::Models::CheckTransfer::CreatedBy, nil] What object created the transfer, either via the API or the dashboard.
      #   #
      #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
      #   #   currency.
      #   #
      #   # @param fulfillment_method [String] Whether Increase will print and mail the check or if you will do it yourself.
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param mailing [Increase::Models::CheckTransfer::Mailing, nil] If the check has been mailed by Increase, this will contain details of the
      #   #   shipment.
      #   #
      #   # @param pending_transaction_id [String, nil] The ID for the pending transaction representing the transfer. A pending
      #   #   transaction is created when the transfer
      #   #   [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   #   by someone else in your organization.
      #   #
      #   # @param physical_check [Increase::Models::CheckTransfer::PhysicalCheck, nil] Details relating to the physical check that Increase will print and mail. Will
      #   #   be present if and only if `fulfillment_method` is equal to `physical_check`.
      #   #
      #   # @param routing_number [String] The routing number printed on the check.
      #   #
      #   # @param source_account_number_id [String, nil] The identifier of the Account Number from which to send the transfer and print
      #   #   on the check.
      #   #
      #   # @param status [String] The lifecycle status of the transfer.
      #   #
      #   # @param stop_payment_request [Increase::Models::CheckTransfer::StopPaymentRequest, nil] After a stop-payment is requested on the check, this will contain supplemental
      #   #   details.
      #   #
      #   # @param submission [Increase::Models::CheckTransfer::Submission, nil] After the transfer is submitted, this will contain supplemental details.
      #   #
      #   # @param third_party [Increase::Models::CheckTransfer::ThirdParty, nil] Details relating to the custom fulfillment you will perform. Will be present if
      #   #   and only if `fulfillment_method` is equal to `third_party`.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `check_transfer`.
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     account_number:,
      #     amount:,
      #     approval:,
      #     approved_inbound_check_deposit_id:,
      #     cancellation:,
      #     check_number:,
      #     created_at:,
      #     created_by:,
      #     currency:,
      #     fulfillment_method:,
      #     idempotency_key:,
      #     mailing:,
      #     pending_transaction_id:,
      #     physical_check:,
      #     routing_number:,
      #     source_account_number_id:,
      #     status:,
      #     stop_payment_request:,
      #     submission:,
      #     third_party:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # approval => {
      #   approved_at: Time,
      #   approved_by: String
      # }
      # ```
      class Approval < Increase::BaseModel
        # @!attribute approved_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was approved.
        #
        #   @return [Time]
        required :approved_at, Time

        # @!attribute approved_by
        #   If the Transfer was approved by a user in the dashboard, the email address of that user.
        #
        #   @return [String, nil]
        required :approved_by, String

        # @!parse
        #   # If your account requires approvals for transfers and the transfer was approved,
        #   #   this will contain details of the approval.
        #   #
        #   # @param approved_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #   the transfer was approved.
        #   #
        #   # @param approved_by [String, nil] If the Transfer was approved by a user in the dashboard, the email address of
        #   #   that user.
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
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Transfer was canceled.
        #
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute canceled_by
        #   If the Transfer was canceled by a user in the dashboard, the email address of that user.
        #
        #   @return [String, nil]
        required :canceled_by, String

        # @!parse
        #   # If your account requires approvals for transfers and the transfer was not
        #   #   approved, this will contain details of the cancellation.
        #   #
        #   # @param canceled_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #   the Transfer was canceled.
        #   #
        #   # @param canceled_by [String, nil] If the Transfer was canceled by a user in the dashboard, the email address of
        #   #   that user.
        #   #
        #   def initialize(canceled_at:, canceled_by:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      # ```ruby
      # created_by => {
      #   api_key: Increase::Models::CheckTransfer::CreatedBy::APIKey,
      #   category: enum: Increase::Models::CheckTransfer::CreatedBy::Category,
      #   oauth_application: Increase::Models::CheckTransfer::CreatedBy::OAuthApplication,
      #   user: Increase::Models::CheckTransfer::CreatedBy::User
      # }
      # ```
      class CreatedBy < Increase::BaseModel
        # @!attribute api_key
        #   If present, details about the API key that created the transfer.
        #
        #   @return [Increase::Models::CheckTransfer::CreatedBy::APIKey, nil]
        required :api_key, -> { Increase::Models::CheckTransfer::CreatedBy::APIKey }

        # @!attribute category
        #   The type of object that created this transfer.
        #
        #   @return [Symbol, Increase::Models::CheckTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::CheckTransfer::CreatedBy::Category }

        # @!attribute oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #
        #   @return [Increase::Models::CheckTransfer::CreatedBy::OAuthApplication, nil]
        required :oauth_application, -> { Increase::Models::CheckTransfer::CreatedBy::OAuthApplication }

        # @!attribute user
        #   If present, details about the User that created the transfer.
        #
        #   @return [Increase::Models::CheckTransfer::CreatedBy::User, nil]
        required :user, -> { Increase::Models::CheckTransfer::CreatedBy::User }

        # @!parse
        #   # What object created the transfer, either via the API or the dashboard.
        #   #
        #   # @param api_key [Increase::Models::CheckTransfer::CreatedBy::APIKey, nil] If present, details about the API key that created the transfer.
        #   #
        #   # @param category [String] The type of object that created this transfer.
        #   #
        #   # @param oauth_application [Increase::Models::CheckTransfer::CreatedBy::OAuthApplication, nil] If present, details about the OAuth Application that created the transfer.
        #   #
        #   # @param user [Increase::Models::CheckTransfer::CreatedBy::User, nil] If present, details about the User that created the transfer.
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
          required :description, String

          # @!parse
          #   # If present, details about the API key that created the transfer.
          #   #
          #   # @param description [String, nil] The description set for the API key when it was created.
          #   #
          #   def initialize(description:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

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
          #   # @param name [String] The name of the OAuth Application.
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
          #   # @param email [String] The email address of the User.
          #   #
          #   def initialize(email:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
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
      end

      # Whether Increase will print and mail the check or if you will do it yourself.
      #
      # @example
      # ```ruby
      # case fulfillment_method
      # in :physical_check
      #   # ...
      # in :third_party
      #   # ...
      # end
      # ```
      class FulfillmentMethod < Increase::Enum
        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party

        finalize!
      end

      # @example
      # ```ruby
      # mailing => {
      #   image_id: String,
      #   mailed_at: Time
      # }
      # ```
      class Mailing < Increase::BaseModel
        # @!attribute image_id
        #   The ID of the file corresponding to an image of the check that was mailed, if available.
        #
        #   @return [String, nil]
        required :image_id, String

        # @!attribute mailed_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check was mailed.
        #
        #   @return [Time]
        required :mailed_at, Time

        # @!parse
        #   # If the check has been mailed by Increase, this will contain details of the
        #   #   shipment.
        #   #
        #   # @param image_id [String, nil] The ID of the file corresponding to an image of the check that was mailed, if
        #   #   available.
        #   #
        #   # @param mailed_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #   the check was mailed.
        #   #
        #   def initialize(image_id:, mailed_at:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      # ```ruby
      # physical_check => {
      #   mailing_address: Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress,
      #   memo: String,
      #   note: String,
      #   recipient_name: String,
      #   return_address: Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress,
      #   **_
      # }
      # ```
      class PhysicalCheck < Increase::BaseModel
        # @!attribute mailing_address
        #   Details for where Increase will mail the check.
        #
        #   @return [Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress]
        required :mailing_address, -> { Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress }

        # @!attribute memo
        #   The descriptor that will be printed on the memo field on the check.
        #
        #   @return [String, nil]
        required :memo, String

        # @!attribute note
        #   The descriptor that will be printed on the letter included with the check.
        #
        #   @return [String, nil]
        required :note, String

        # @!attribute recipient_name
        #   The name that will be printed on the check.
        #
        #   @return [String]
        required :recipient_name, String

        # @!attribute return_address
        #   The return address to be printed on the check.
        #
        #   @return [Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress, nil]
        required :return_address, -> { Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress }

        # @!attribute signature_text
        #   The text that will appear as the signature on the check in cursive font. If blank, the check will be printed with 'No signature required'.
        #
        #   @return [String, nil]
        required :signature_text, String

        # @!attribute tracking_updates
        #   Tracking updates relating to the physical check's delivery.
        #
        #   @return [Array<Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate>]
        required :tracking_updates,
                 -> { Increase::ArrayOf[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate] }

        # @!parse
        #   # Details relating to the physical check that Increase will print and mail. Will
        #   #   be present if and only if `fulfillment_method` is equal to `physical_check`.
        #   #
        #   # @param mailing_address [Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress] Details for where Increase will mail the check.
        #   #
        #   # @param memo [String, nil] The descriptor that will be printed on the memo field on the check.
        #   #
        #   # @param note [String, nil] The descriptor that will be printed on the letter included with the check.
        #   #
        #   # @param recipient_name [String] The name that will be printed on the check.
        #   #
        #   # @param return_address [Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress, nil] The return address to be printed on the check.
        #   #
        #   # @param signature_text [String, nil] The text that will appear as the signature on the check in cursive font. If
        #   #   blank, the check will be printed with 'No signature required'.
        #   #
        #   # @param tracking_updates [Array<Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate>] Tracking updates relating to the physical check's delivery.
        #   #
        #   def initialize(mailing_address:, memo:, note:, recipient_name:, return_address:, signature_text:, tracking_updates:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # mailing_address => {
        #   city: String,
        #   line1: String,
        #   line2: String,
        #   name: String,
        #   postal_code: String
        # }
        # ```
        class MailingAddress < Increase::BaseModel
          # @!attribute city
          #   The city of the check's destination.
          #
          #   @return [String, nil]
          required :city, String

          # @!attribute line1
          #   The street address of the check's destination.
          #
          #   @return [String, nil]
          required :line1, String

          # @!attribute line2
          #   The second line of the address of the check's destination.
          #
          #   @return [String, nil]
          required :line2, String

          # @!attribute name
          #   The name component of the check's mailing address.
          #
          #   @return [String, nil]
          required :name, String

          # @!attribute postal_code
          #   The postal code of the check's destination.
          #
          #   @return [String, nil]
          required :postal_code, String

          # @!attribute state
          #   The state of the check's destination.
          #
          #   @return [String, nil]
          required :state, String

          # @!parse
          #   # Details for where Increase will mail the check.
          #   #
          #   # @param city [String, nil] The city of the check's destination.
          #   #
          #   # @param line1 [String, nil] The street address of the check's destination.
          #   #
          #   # @param line2 [String, nil] The second line of the address of the check's destination.
          #   #
          #   # @param name [String, nil] The name component of the check's mailing address.
          #   #
          #   # @param postal_code [String, nil] The postal code of the check's destination.
          #   #
          #   # @param state [String, nil] The state of the check's destination.
          #   #
          #   def initialize(city:, line1:, line2:, name:, postal_code:, state:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # return_address => {
        #   city: String,
        #   line1: String,
        #   line2: String,
        #   name: String,
        #   postal_code: String
        # }
        # ```
        class ReturnAddress < Increase::BaseModel
          # @!attribute city
          #   The city of the check's destination.
          #
          #   @return [String, nil]
          required :city, String

          # @!attribute line1
          #   The street address of the check's destination.
          #
          #   @return [String, nil]
          required :line1, String

          # @!attribute line2
          #   The second line of the address of the check's destination.
          #
          #   @return [String, nil]
          required :line2, String

          # @!attribute name
          #   The name component of the check's return address.
          #
          #   @return [String, nil]
          required :name, String

          # @!attribute postal_code
          #   The postal code of the check's destination.
          #
          #   @return [String, nil]
          required :postal_code, String

          # @!attribute state
          #   The state of the check's destination.
          #
          #   @return [String, nil]
          required :state, String

          # @!parse
          #   # The return address to be printed on the check.
          #   #
          #   # @param city [String, nil] The city of the check's destination.
          #   #
          #   # @param line1 [String, nil] The street address of the check's destination.
          #   #
          #   # @param line2 [String, nil] The second line of the address of the check's destination.
          #   #
          #   # @param name [String, nil] The name component of the check's return address.
          #   #
          #   # @param postal_code [String, nil] The postal code of the check's destination.
          #   #
          #   # @param state [String, nil] The state of the check's destination.
          #   #
          #   def initialize(city:, line1:, line2:, name:, postal_code:, state:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # tracking_update => {
        #   category: enum: Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category,
        #   created_at: Time,
        #   postal_code: String
        # }
        # ```
        class TrackingUpdate < Increase::BaseModel
          # @!attribute category
          #   The type of tracking event.
          #
          #   @return [Symbol, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category]
          required :category,
                   enum: -> {
                     Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category
                   }

          # @!attribute created_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the tracking event took place.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute postal_code
          #   The postal code where the event took place.
          #
          #   @return [String]
          required :postal_code, String

          # @!parse
          #   # @param category [String] The type of tracking event.
          #   #
          #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   #   the tracking event took place.
          #   #
          #   # @param postal_code [String] The postal code where the event took place.
          #   #
          #   def initialize(category:, created_at:, postal_code:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The type of tracking event.
          #
          # @example
          # ```ruby
          # case category
          # in :in_transit
          #   # ...
          # in :processed_for_delivery
          #   # ...
          # in :delivered
          #   # ...
          # in :returned_to_sender
          #   # ...
          # end
          # ```
          class Category < Increase::Enum
            # The check is in transit.
            IN_TRANSIT = :in_transit

            # The check has been processed for delivery.
            PROCESSED_FOR_DELIVERY = :processed_for_delivery

            # The check has been delivered.
            DELIVERED = :delivered

            # Delivery failed and the check was returned to sender.
            RETURNED_TO_SENDER = :returned_to_sender

            finalize!
          end
        end
      end

      # The lifecycle status of the transfer.
      #
      # @example
      # ```ruby
      # case status
      # in :pending_approval
      #   # ...
      # in :canceled
      #   # ...
      # in :pending_submission
      #   # ...
      # in :requires_attention
      #   # ...
      # in :rejected
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Status < Increase::Enum
        # The transfer is awaiting approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending submission.
        PENDING_SUBMISSION = :pending_submission

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer has been rejected.
        REJECTED = :rejected

        # The check is queued for mailing.
        PENDING_MAILING = :pending_mailing

        # The check has been mailed.
        MAILED = :mailed

        # The check has been deposited.
        DEPOSITED = :deposited

        # A stop-payment was requested for this check.
        STOPPED = :stopped

        # The transfer has been returned.
        RETURNED = :returned

        finalize!
      end

      # @example
      # ```ruby
      # stop_payment_request => {
      #   reason: enum: Increase::Models::CheckTransfer::StopPaymentRequest::Reason,
      #   requested_at: Time,
      #   transfer_id: String,
      #   type: enum: Increase::Models::CheckTransfer::StopPaymentRequest::Type
      # }
      # ```
      class StopPaymentRequest < Increase::BaseModel
        # @!attribute reason
        #   The reason why this transfer was stopped.
        #
        #   @return [Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Reason]
        required :reason, enum: -> { Increase::Models::CheckTransfer::StopPaymentRequest::Reason }

        # @!attribute requested_at
        #   The time the stop-payment was requested.
        #
        #   @return [Time]
        required :requested_at, Time

        # @!attribute transfer_id
        #   The ID of the check transfer that was stopped.
        #
        #   @return [String]
        required :transfer_id, String

        # @!attribute type
        #   A constant representing the object's type. For this resource it will always be `check_transfer_stop_payment_request`.
        #
        #   @return [Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Type]
        required :type, enum: -> { Increase::Models::CheckTransfer::StopPaymentRequest::Type }

        # @!parse
        #   # After a stop-payment is requested on the check, this will contain supplemental
        #   #   details.
        #   #
        #   # @param reason [String] The reason why this transfer was stopped.
        #   #
        #   # @param requested_at [String] The time the stop-payment was requested.
        #   #
        #   # @param transfer_id [String] The ID of the check transfer that was stopped.
        #   #
        #   # @param type [String] A constant representing the object's type. For this resource it will always be
        #   #   `check_transfer_stop_payment_request`.
        #   #
        #   def initialize(reason:, requested_at:, transfer_id:, type:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # The reason why this transfer was stopped.
        #
        # @example
        # ```ruby
        # case reason
        # in :mail_delivery_failed
        #   # ...
        # in :rejected_by_increase
        #   # ...
        # in :not_authorized
        #   # ...
        # in :unknown
        #   # ...
        # end
        # ```
        class Reason < Increase::Enum
          # The check could not be delivered.
          MAIL_DELIVERY_FAILED = :mail_delivery_failed

          # The check was canceled by an Increase operator who will provide details out-of-band.
          REJECTED_BY_INCREASE = :rejected_by_increase

          # The check was not authorized.
          NOT_AUTHORIZED = :not_authorized

          # The check was stopped for another reason.
          UNKNOWN = :unknown

          finalize!
        end

        # A constant representing the object's type. For this resource it will always be `check_transfer_stop_payment_request`.
        #
        # @example
        # ```ruby
        # case type
        # in :check_transfer_stop_payment_request
        #   # ...
        # end
        # ```
        class Type < Increase::Enum
          CHECK_TRANSFER_STOP_PAYMENT_REQUEST = :check_transfer_stop_payment_request

          finalize!
        end
      end

      # @example
      # ```ruby
      # submission => {
      #   submitted_at: Time
      # }
      # ```
      class Submission < Increase::BaseModel
        # @!attribute submitted_at
        #   When this check transfer was submitted to our check printer.
        #
        #   @return [Time]
        required :submitted_at, Time

        # @!parse
        #   # After the transfer is submitted, this will contain supplemental details.
        #   #
        #   # @param submitted_at [String] When this check transfer was submitted to our check printer.
        #   #
        #   def initialize(submitted_at:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      # ```ruby
      # third_party => {
      #   check_number: String
      # }
      # ```
      class ThirdParty < Increase::BaseModel
        # @!attribute check_number
        #   The check number that will be printed on the check.
        #
        #   @return [String, nil]
        required :check_number, String

        # @!parse
        #   # Details relating to the custom fulfillment you will perform. Will be present if
        #   #   and only if `fulfillment_method` is equal to `third_party`.
        #   #
        #   # @param check_number [String, nil] The check number that will be printed on the check.
        #   #
        #   def initialize(check_number:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # A constant representing the object's type. For this resource it will always be `check_transfer`.
      #
      # @example
      # ```ruby
      # case type
      # in :check_transfer
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        CHECK_TRANSFER = :check_transfer

        finalize!
      end
    end
  end
end
