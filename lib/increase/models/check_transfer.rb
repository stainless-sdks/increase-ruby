# frozen_string_literal: true

module Increase
  module Models
    class CheckTransfer < BaseModel
      # @!attribute [rw] id
      #   The Check transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier of the Account from which funds will be transferred.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number
      #   The account number printed on the check.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] amount
      #   The transfer amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] approval
      #   If your account requires approvals for transfers and the transfer was approved, this will contain details of the approval.
      #   @return [Increase::Models::CheckTransfer::Approval]
      required :approval, -> { Increase::Models::CheckTransfer::Approval }

      # @!attribute [rw] approved_inbound_check_deposit_id
      #   If the Check Transfer was successfully deposited, this will contain the identifier of the Inbound Check Deposit object with details of the deposit.
      #   @return [String]
      required :approved_inbound_check_deposit_id, String

      # @!attribute [rw] cancellation
      #   If your account requires approvals for transfers and the transfer was not approved, this will contain details of the cancellation.
      #   @return [Increase::Models::CheckTransfer::Cancellation]
      required :cancellation, -> { Increase::Models::CheckTransfer::Cancellation }

      # @!attribute [rw] check_number
      #   The check number printed on the check.
      #   @return [String]
      required :check_number, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] created_by
      #   What object created the transfer, either via the API or the dashboard.
      #   @return [Increase::Models::CheckTransfer::CreatedBy]
      required :created_by, -> { Increase::Models::CheckTransfer::CreatedBy }

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
      #   @return [Symbol, Increase::Models::CheckTransfer::Currency]
      required :currency, enum: -> { Increase::Models::CheckTransfer::Currency }

      # @!attribute [rw] fulfillment_method
      #   Whether Increase will print and mail the check or if you will do it yourself.
      #   @return [Symbol, Increase::Models::CheckTransfer::FulfillmentMethod]
      required :fulfillment_method, enum: -> { Increase::Models::CheckTransfer::FulfillmentMethod }

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] mailing
      #   If the check has been mailed by Increase, this will contain details of the shipment.
      #   @return [Increase::Models::CheckTransfer::Mailing]
      required :mailing, -> { Increase::Models::CheckTransfer::Mailing }

      # @!attribute [rw] pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending transaction is created when the transfer [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals) by someone else in your organization.
      #   @return [String]
      required :pending_transaction_id, String

      # @!attribute [rw] physical_check
      #   Details relating to the physical check that Increase will print and mail. Will be present if and only if `fulfillment_method` is equal to `physical_check`.
      #   @return [Increase::Models::CheckTransfer::PhysicalCheck]
      required :physical_check, -> { Increase::Models::CheckTransfer::PhysicalCheck }

      # @!attribute [rw] routing_number
      #   The routing number printed on the check.
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] source_account_number_id
      #   The identifier of the Account Number from which to send the transfer and print on the check.
      #   @return [String]
      required :source_account_number_id, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol, Increase::Models::CheckTransfer::Status]
      required :status, enum: -> { Increase::Models::CheckTransfer::Status }

      # @!attribute [rw] stop_payment_request
      #   After a stop-payment is requested on the check, this will contain supplemental details.
      #   @return [Increase::Models::CheckTransfer::StopPaymentRequest]
      required :stop_payment_request, -> { Increase::Models::CheckTransfer::StopPaymentRequest }

      # @!attribute [rw] submission
      #   After the transfer is submitted, this will contain supplemental details.
      #   @return [Increase::Models::CheckTransfer::Submission]
      required :submission, -> { Increase::Models::CheckTransfer::Submission }

      # @!attribute [rw] third_party
      #   Details relating to the custom fulfillment you will perform. Will be present if and only if `fulfillment_method` is equal to `third_party`.
      #   @return [Increase::Models::CheckTransfer::ThirdParty]
      required :third_party, -> { Increase::Models::CheckTransfer::ThirdParty }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `check_transfer`.
      #   @return [Symbol, Increase::Models::CheckTransfer::Type]
      required :type, enum: -> { Increase::Models::CheckTransfer::Type }

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
        #   @return [Increase::Models::CheckTransfer::CreatedBy::APIKey]
        required :api_key, -> { Increase::Models::CheckTransfer::CreatedBy::APIKey }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol, Increase::Models::CheckTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::CheckTransfer::CreatedBy::Category }

        # @!attribute [rw] oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #   @return [Increase::Models::CheckTransfer::CreatedBy::OAuthApplication]
        required :oauth_application, -> { Increase::Models::CheckTransfer::CreatedBy::OAuthApplication }

        # @!attribute [rw] user
        #   If present, details about the User that created the transfer.
        #   @return [Increase::Models::CheckTransfer::CreatedBy::User]
        required :user, -> { Increase::Models::CheckTransfer::CreatedBy::User }

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

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
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

      # Whether Increase will print and mail the check or if you will do it yourself.
      class FulfillmentMethod < Increase::Enum
        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party
      end

      class Mailing < BaseModel
        # @!attribute [rw] image_id
        #   The ID of the file corresponding to an image of the check that was mailed, if available.
        #   @return [String]
        required :image_id, String

        # @!attribute [rw] mailed_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check was mailed.
        #   @return [Time]
        required :mailed_at, Time

        # Create a new instance of Mailing from a Hash of raw data.
        #
        # @overload initialize(image_id: nil, mailed_at: nil)
        # @param image_id [String] The ID of the file corresponding to an image of the check that was mailed, if
        #   available.
        # @param mailed_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the check was mailed.
        def initialize(data = {})
          super
        end
      end

      class PhysicalCheck < BaseModel
        # @!attribute [rw] mailing_address
        #   Details for where Increase will mail the check.
        #   @return [Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress]
        required :mailing_address, -> { Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress }

        # @!attribute [rw] memo
        #   The descriptor that will be printed on the memo field on the check.
        #   @return [String]
        required :memo, String

        # @!attribute [rw] note
        #   The descriptor that will be printed on the letter included with the check.
        #   @return [String]
        required :note, String

        # @!attribute [rw] recipient_name
        #   The name that will be printed on the check.
        #   @return [String]
        required :recipient_name, String

        # @!attribute [rw] return_address
        #   The return address to be printed on the check.
        #   @return [Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress]
        required :return_address, -> { Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress }

        # @!attribute [rw] signature_text
        #   The text that will appear as the signature on the check in cursive font. If blank, the check will be printed with 'No signature required'.
        #   @return [String]
        required :signature_text, String

        # @!attribute [rw] tracking_updates
        #   Tracking updates relating to the physical check's delivery.
        #   @return [Array<Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate>]
        required :tracking_updates,
                 Increase::ArrayOf.new(-> { Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate })

        class MailingAddress < BaseModel
          # @!attribute [rw] city
          #   The city of the check's destination.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The street address of the check's destination.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] line2
          #   The second line of the address of the check's destination.
          #   @return [String]
          required :line2, String

          # @!attribute [rw] name_
          #   The name component of the check's mailing address.
          #   @return [String]
          required :name_, String

          # @!attribute [rw] postal_code
          #   The postal code of the check's destination.
          #   @return [String]
          required :postal_code, String

          # @!attribute [rw] state
          #   The state of the check's destination.
          #   @return [String]
          required :state, String

          # Create a new instance of MailingAddress from a Hash of raw data.
          #
          # @overload initialize(city: nil, line1: nil, line2: nil, name: nil, postal_code: nil, state: nil)
          # @param city [String] The city of the check's destination.
          # @param line1 [String] The street address of the check's destination.
          # @param line2 [String] The second line of the address of the check's destination.
          # @param name [String] The name component of the check's mailing address.
          # @param postal_code [String] The postal code of the check's destination.
          # @param state [String] The state of the check's destination.
          def initialize(data = {})
            super
          end
        end

        class ReturnAddress < BaseModel
          # @!attribute [rw] city
          #   The city of the check's destination.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The street address of the check's destination.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] line2
          #   The second line of the address of the check's destination.
          #   @return [String]
          required :line2, String

          # @!attribute [rw] name_
          #   The name component of the check's return address.
          #   @return [String]
          required :name_, String

          # @!attribute [rw] postal_code
          #   The postal code of the check's destination.
          #   @return [String]
          required :postal_code, String

          # @!attribute [rw] state
          #   The state of the check's destination.
          #   @return [String]
          required :state, String

          # Create a new instance of ReturnAddress from a Hash of raw data.
          #
          # @overload initialize(city: nil, line1: nil, line2: nil, name: nil, postal_code: nil, state: nil)
          # @param city [String] The city of the check's destination.
          # @param line1 [String] The street address of the check's destination.
          # @param line2 [String] The second line of the address of the check's destination.
          # @param name [String] The name component of the check's return address.
          # @param postal_code [String] The postal code of the check's destination.
          # @param state [String] The state of the check's destination.
          def initialize(data = {})
            super
          end
        end

        class TrackingUpdate < BaseModel
          # @!attribute [rw] category
          #   The type of tracking event.
          #   @return [Symbol, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category]
          required :category,
                   enum: lambda {
                     Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category
                   }

          # @!attribute [rw] created_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the tracking event took place.
          #   @return [Time]
          required :created_at, Time

          # The type of tracking event.
          class Category < Increase::Enum
            # The check is in transit.
            IN_TRANSIT = :in_transit

            # The check has been processed for delivery.
            PROCESSED_FOR_DELIVERY = :processed_for_delivery

            # The check has been delivered.
            DELIVERED = :delivered

            # Delivery failed and the check was returned to sender.
            RETURNED_TO_SENDER = :returned_to_sender
          end

          # Create a new instance of TrackingUpdate from a Hash of raw data.
          #
          # @overload initialize(category: nil, created_at: nil)
          # @param category [String] The type of tracking event.
          # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the tracking event took place.
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of PhysicalCheck from a Hash of raw data.
        #
        # @overload initialize(mailing_address: nil, memo: nil, note: nil, recipient_name: nil, return_address: nil, signature_text: nil, tracking_updates: nil)
        # @param mailing_address [Object] Details for where Increase will mail the check.
        # @param memo [String] The descriptor that will be printed on the memo field on the check.
        # @param note [String] The descriptor that will be printed on the letter included with the check.
        # @param recipient_name [String] The name that will be printed on the check.
        # @param return_address [Object] The return address to be printed on the check.
        # @param signature_text [String] The text that will appear as the signature on the check in cursive font. If
        #   blank, the check will be printed with 'No signature required'.
        # @param tracking_updates [Array<Object>] Tracking updates relating to the physical check's delivery.
        def initialize(data = {})
          super
        end
      end

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        # The transfer is awaiting approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer is pending submission.
        PENDING_SUBMISSION = :pending_submission

        # The check is queued for mailing.
        PENDING_MAILING = :pending_mailing

        # The check has been mailed.
        MAILED = :mailed

        # The transfer has been canceled.
        CANCELED = :canceled

        # The check has been deposited.
        DEPOSITED = :deposited

        # A stop-payment was requested for this check.
        STOPPED = :stopped

        # The transfer has been rejected.
        REJECTED = :rejected

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer has been returned.
        RETURNED = :returned
      end

      class StopPaymentRequest < BaseModel
        # @!attribute [rw] reason
        #   The reason why this transfer was stopped.
        #   @return [Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Reason]
        required :reason, enum: -> { Increase::Models::CheckTransfer::StopPaymentRequest::Reason }

        # @!attribute [rw] requested_at
        #   The time the stop-payment was requested.
        #   @return [Time]
        required :requested_at, Time

        # @!attribute [rw] transfer_id
        #   The ID of the check transfer that was stopped.
        #   @return [String]
        required :transfer_id, String

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `check_transfer_stop_payment_request`.
        #   @return [Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Type]
        required :type, enum: -> { Increase::Models::CheckTransfer::StopPaymentRequest::Type }

        # The reason why this transfer was stopped.
        class Reason < Increase::Enum
          # The check could not be delivered.
          MAIL_DELIVERY_FAILED = :mail_delivery_failed

          # The check was canceled by an Increase operator who will provide details out-of-band.
          REJECTED_BY_INCREASE = :rejected_by_increase

          # The check was not authorized.
          NOT_AUTHORIZED = :not_authorized

          # The check was stopped for another reason.
          UNKNOWN = :unknown
        end

        # A constant representing the object's type. For this resource it will always be `check_transfer_stop_payment_request`.
        class Type < Increase::Enum
          CHECK_TRANSFER_STOP_PAYMENT_REQUEST = :check_transfer_stop_payment_request
        end

        # Create a new instance of StopPaymentRequest from a Hash of raw data.
        #
        # @overload initialize(reason: nil, requested_at: nil, transfer_id: nil, type: nil)
        # @param reason [String] The reason why this transfer was stopped.
        # @param requested_at [String] The time the stop-payment was requested.
        # @param transfer_id [String] The ID of the check transfer that was stopped.
        # @param type [String] A constant representing the object's type. For this resource it will always be
        #   `check_transfer_stop_payment_request`.
        def initialize(data = {})
          super
        end
      end

      class Submission < BaseModel
        # @!attribute [rw] submitted_at
        #   When this check transfer was submitted to our check printer.
        #   @return [Time]
        required :submitted_at, Time

        # Create a new instance of Submission from a Hash of raw data.
        #
        # @overload initialize(submitted_at: nil)
        # @param submitted_at [String] When this check transfer was submitted to our check printer.
        def initialize(data = {})
          super
        end
      end

      class ThirdParty < BaseModel
        # @!attribute [rw] check_number
        #   The check number that will be printed on the check.
        #   @return [String]
        required :check_number, String

        # Create a new instance of ThirdParty from a Hash of raw data.
        #
        # @overload initialize(check_number: nil)
        # @param check_number [String] The check number that will be printed on the check.
        def initialize(data = {})
          super
        end
      end

      # A constant representing the object's type. For this resource it will always be `check_transfer`.
      class Type < Increase::Enum
        CHECK_TRANSFER = :check_transfer
      end

      # Create a new instance of CheckTransfer from a Hash of raw data.
      #
      # @overload initialize(id: nil, account_id: nil, account_number: nil, amount: nil, approval: nil, approved_inbound_check_deposit_id: nil, cancellation: nil, check_number: nil, created_at: nil, created_by: nil, currency: nil, fulfillment_method: nil, idempotency_key: nil, mailing: nil, pending_transaction_id: nil, physical_check: nil, routing_number: nil, source_account_number_id: nil, status: nil, stop_payment_request: nil, submission: nil, third_party: nil, type: nil)
      # @param id [String] The Check transfer's identifier.
      # @param account_id [String] The identifier of the Account from which funds will be transferred.
      # @param account_number [String] The account number printed on the check.
      # @param amount [Integer] The transfer amount in USD cents.
      # @param approval [Object] If your account requires approvals for transfers and the transfer was approved,
      #   this will contain details of the approval.
      # @param approved_inbound_check_deposit_id [String] If the Check Transfer was successfully deposited, this will contain the
      #   identifier of the Inbound Check Deposit object with details of the deposit.
      # @param cancellation [Object] If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      # @param check_number [String] The check number printed on the check.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the transfer was created.
      # @param created_by [Object] What object created the transfer, either via the API or the dashboard.
      # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
      #   currency.
      # @param fulfillment_method [String] Whether Increase will print and mail the check or if you will do it yourself.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param mailing [Object] If the check has been mailed by Increase, this will contain details of the
      #   shipment.
      # @param pending_transaction_id [String] The ID for the pending transaction representing the transfer. A pending
      #   transaction is created when the transfer
      #   [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   by someone else in your organization.
      # @param physical_check [Object] Details relating to the physical check that Increase will print and mail. Will
      #   be present if and only if `fulfillment_method` is equal to `physical_check`.
      # @param routing_number [String] The routing number printed on the check.
      # @param source_account_number_id [String] The identifier of the Account Number from which to send the transfer and print
      #   on the check.
      # @param status [String] The lifecycle status of the transfer.
      # @param stop_payment_request [Object] After a stop-payment is requested on the check, this will contain supplemental
      #   details.
      # @param submission [Object] After the transfer is submitted, this will contain supplemental details.
      # @param third_party [Object] Details relating to the custom fulfillment you will perform. Will be present if
      #   and only if `fulfillment_method` is equal to `third_party`.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `check_transfer`.
      def initialize(data = {})
        super
      end
    end
  end
end
