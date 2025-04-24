# typed: strong

module Increase
  module Models
    class CheckTransfer < Increase::Internal::Type::BaseModel
      # The Check transfer's identifier.
      sig { returns(String) }
      attr_accessor :id

      # The identifier of the Account from which funds will be transferred.
      sig { returns(String) }
      attr_accessor :account_id

      # The account number printed on the check.
      sig { returns(String) }
      attr_accessor :account_number

      # The transfer amount in USD cents.
      sig { returns(Integer) }
      attr_accessor :amount

      # If your account requires approvals for transfers and the transfer was approved,
      # this will contain details of the approval.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::Approval)) }
      attr_reader :approval

      sig do
        params(approval: T.nilable(T.any(Increase::Models::CheckTransfer::Approval, Increase::Internal::AnyHash)))
          .void
      end
      attr_writer :approval

      # If the Check Transfer was successfully deposited, this will contain the
      # identifier of the Inbound Check Deposit object with details of the deposit.
      sig { returns(T.nilable(String)) }
      attr_accessor :approved_inbound_check_deposit_id

      # If your account requires approvals for transfers and the transfer was not
      # approved, this will contain details of the cancellation.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::Cancellation)) }
      attr_reader :cancellation

      sig do
        params(
          cancellation: T.nilable(T.any(Increase::Models::CheckTransfer::Cancellation, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :cancellation

      # The check number printed on the check.
      sig { returns(String) }
      attr_accessor :check_number

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      # the transfer was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # What object created the transfer, either via the API or the dashboard.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy)) }
      attr_reader :created_by

      sig do
        params(
          created_by: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :created_by

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
      # currency.
      sig { returns(Increase::Models::CheckTransfer::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Whether Increase will print and mail the check or if you will do it yourself.
      sig { returns(Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol) }
      attr_accessor :fulfillment_method

      # The idempotency key you chose for this object. This value is unique across
      # Increase and is used to ensure that a request is only processed once. Learn more
      # about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # If the check has been mailed by Increase, this will contain details of the
      # shipment.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::Mailing)) }
      attr_reader :mailing

      sig do
        params(mailing: T.nilable(T.any(Increase::Models::CheckTransfer::Mailing, Increase::Internal::AnyHash)))
          .void
      end
      attr_writer :mailing

      # The ID for the pending transaction representing the transfer. A pending
      # transaction is created when the transfer
      # [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      # by someone else in your organization.
      sig { returns(T.nilable(String)) }
      attr_accessor :pending_transaction_id

      # Details relating to the physical check that Increase will print and mail. Will
      # be present if and only if `fulfillment_method` is equal to `physical_check`.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck)) }
      attr_reader :physical_check

      sig do
        params(
          physical_check: T.nilable(T.any(Increase::Models::CheckTransfer::PhysicalCheck, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :physical_check

      # The routing number printed on the check.
      sig { returns(String) }
      attr_accessor :routing_number

      # The identifier of the Account Number from which to send the transfer and print
      # on the check.
      sig { returns(T.nilable(String)) }
      attr_accessor :source_account_number_id

      # The lifecycle status of the transfer.
      sig { returns(Increase::Models::CheckTransfer::Status::TaggedSymbol) }
      attr_accessor :status

      # After a stop-payment is requested on the check, this will contain supplemental
      # details.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest)) }
      attr_reader :stop_payment_request

      sig do
        params(
          stop_payment_request: T.nilable(T.any(Increase::Models::CheckTransfer::StopPaymentRequest, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :stop_payment_request

      # After the transfer is submitted, this will contain supplemental details.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::Submission)) }
      attr_reader :submission

      sig do
        params(
          submission: T.nilable(T.any(Increase::Models::CheckTransfer::Submission, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :submission

      # Details relating to the custom fulfillment you will perform. Will be present if
      # and only if `fulfillment_method` is equal to `third_party`.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::ThirdParty)) }
      attr_reader :third_party

      sig do
        params(
          third_party: T.nilable(T.any(Increase::Models::CheckTransfer::ThirdParty, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :third_party

      # A constant representing the object's type. For this resource it will always be
      # `check_transfer`.
      sig { returns(Increase::Models::CheckTransfer::Type::TaggedSymbol) }
      attr_accessor :type

      # Check Transfers move funds from your Increase account by mailing a physical
      # check.
      sig do
        params(
          id: String,
          account_id: String,
          account_number: String,
          amount: Integer,
          approval: T.nilable(T.any(Increase::Models::CheckTransfer::Approval, Increase::Internal::AnyHash)),
          approved_inbound_check_deposit_id: T.nilable(String),
          cancellation: T.nilable(T.any(Increase::Models::CheckTransfer::Cancellation, Increase::Internal::AnyHash)),
          check_number: String,
          created_at: Time,
          created_by: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy, Increase::Internal::AnyHash)),
          currency: Increase::Models::CheckTransfer::Currency::OrSymbol,
          fulfillment_method: Increase::Models::CheckTransfer::FulfillmentMethod::OrSymbol,
          idempotency_key: T.nilable(String),
          mailing: T.nilable(T.any(Increase::Models::CheckTransfer::Mailing, Increase::Internal::AnyHash)),
          pending_transaction_id: T.nilable(String),
          physical_check: T.nilable(T.any(Increase::Models::CheckTransfer::PhysicalCheck, Increase::Internal::AnyHash)),
          routing_number: String,
          source_account_number_id: T.nilable(String),
          status: Increase::Models::CheckTransfer::Status::OrSymbol,
          stop_payment_request: T.nilable(T.any(Increase::Models::CheckTransfer::StopPaymentRequest, Increase::Internal::AnyHash)),
          submission: T.nilable(T.any(Increase::Models::CheckTransfer::Submission, Increase::Internal::AnyHash)),
          third_party: T.nilable(T.any(Increase::Models::CheckTransfer::ThirdParty, Increase::Internal::AnyHash)),
          type: Increase::Models::CheckTransfer::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The Check transfer's identifier.
        id:,
        # The identifier of the Account from which funds will be transferred.
        account_id:,
        # The account number printed on the check.
        account_number:,
        # The transfer amount in USD cents.
        amount:,
        # If your account requires approvals for transfers and the transfer was approved,
        # this will contain details of the approval.
        approval:,
        # If the Check Transfer was successfully deposited, this will contain the
        # identifier of the Inbound Check Deposit object with details of the deposit.
        approved_inbound_check_deposit_id:,
        # If your account requires approvals for transfers and the transfer was not
        # approved, this will contain details of the cancellation.
        cancellation:,
        # The check number printed on the check.
        check_number:,
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        # the transfer was created.
        created_at:,
        # What object created the transfer, either via the API or the dashboard.
        created_by:,
        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
        # currency.
        currency:,
        # Whether Increase will print and mail the check or if you will do it yourself.
        fulfillment_method:,
        # The idempotency key you chose for this object. This value is unique across
        # Increase and is used to ensure that a request is only processed once. Learn more
        # about [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key:,
        # If the check has been mailed by Increase, this will contain details of the
        # shipment.
        mailing:,
        # The ID for the pending transaction representing the transfer. A pending
        # transaction is created when the transfer
        # [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
        # by someone else in your organization.
        pending_transaction_id:,
        # Details relating to the physical check that Increase will print and mail. Will
        # be present if and only if `fulfillment_method` is equal to `physical_check`.
        physical_check:,
        # The routing number printed on the check.
        routing_number:,
        # The identifier of the Account Number from which to send the transfer and print
        # on the check.
        source_account_number_id:,
        # The lifecycle status of the transfer.
        status:,
        # After a stop-payment is requested on the check, this will contain supplemental
        # details.
        stop_payment_request:,
        # After the transfer is submitted, this will contain supplemental details.
        submission:,
        # Details relating to the custom fulfillment you will perform. Will be present if
        # and only if `fulfillment_method` is equal to `third_party`.
        third_party:,
        # A constant representing the object's type. For this resource it will always be
        # `check_transfer`.
        type:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              account_number: String,
              amount: Integer,
              approval: T.nilable(Increase::Models::CheckTransfer::Approval),
              approved_inbound_check_deposit_id: T.nilable(String),
              cancellation: T.nilable(Increase::Models::CheckTransfer::Cancellation),
              check_number: String,
              created_at: Time,
              created_by: T.nilable(Increase::Models::CheckTransfer::CreatedBy),
              currency: Increase::Models::CheckTransfer::Currency::TaggedSymbol,
              fulfillment_method: Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol,
              idempotency_key: T.nilable(String),
              mailing: T.nilable(Increase::Models::CheckTransfer::Mailing),
              pending_transaction_id: T.nilable(String),
              physical_check: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck),
              routing_number: String,
              source_account_number_id: T.nilable(String),
              status: Increase::Models::CheckTransfer::Status::TaggedSymbol,
              stop_payment_request: T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest),
              submission: T.nilable(Increase::Models::CheckTransfer::Submission),
              third_party: T.nilable(Increase::Models::CheckTransfer::ThirdParty),
              type: Increase::Models::CheckTransfer::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Approval < Increase::Internal::Type::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        # the transfer was approved.
        sig { returns(Time) }
        attr_accessor :approved_at

        # If the Transfer was approved by a user in the dashboard, the email address of
        # that user.
        sig { returns(T.nilable(String)) }
        attr_accessor :approved_by

        # If your account requires approvals for transfers and the transfer was approved,
        # this will contain details of the approval.
        sig { params(approved_at: Time, approved_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          # the transfer was approved.
          approved_at:,
          # If the Transfer was approved by a user in the dashboard, the email address of
          # that user.
          approved_by:
        ); end
        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash; end
      end

      class Cancellation < Increase::Internal::Type::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        # the Transfer was canceled.
        sig { returns(Time) }
        attr_accessor :canceled_at

        # If the Transfer was canceled by a user in the dashboard, the email address of
        # that user.
        sig { returns(T.nilable(String)) }
        attr_accessor :canceled_by

        # If your account requires approvals for transfers and the transfer was not
        # approved, this will contain details of the cancellation.
        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          # the Transfer was canceled.
          canceled_at:,
          # If the Transfer was canceled by a user in the dashboard, the email address of
          # that user.
          canceled_by:
        ); end
        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash; end
      end

      class CreatedBy < Increase::Internal::Type::BaseModel
        # If present, details about the API key that created the transfer.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey)) }
        attr_reader :api_key

        sig do
          params(
            api_key: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::APIKey, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :api_key

        # The type of object that created this transfer.
        sig { returns(Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol) }
        attr_accessor :category

        # If present, details about the OAuth Application that created the transfer.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication)) }
        attr_reader :oauth_application

        sig do
          params(
            oauth_application: T.nilable(
              T.any(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :oauth_application

        # If present, details about the User that created the transfer.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::User)) }
        attr_reader :user

        sig do
          params(
            user: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::User, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :user

        # What object created the transfer, either via the API or the dashboard.
        sig do
          params(
            api_key: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::APIKey, Increase::Internal::AnyHash)),
            category: Increase::Models::CheckTransfer::CreatedBy::Category::OrSymbol,
            oauth_application: T.nilable(
              T.any(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication, Increase::Internal::AnyHash)
            ),
            user: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::User, Increase::Internal::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(
          # If present, details about the API key that created the transfer.
          api_key:,
          # The type of object that created this transfer.
          category:,
          # If present, details about the OAuth Application that created the transfer.
          oauth_application:,
          # If present, details about the User that created the transfer.
          user:
        ); end
        sig do
          override
            .returns(
              {
                api_key: T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey),
                category: Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol,
                oauth_application: T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication),
                user: T.nilable(Increase::Models::CheckTransfer::CreatedBy::User)
              }
            )
        end
        def to_hash; end

        class APIKey < Increase::Internal::Type::BaseModel
          # The description set for the API key when it was created.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # If present, details about the API key that created the transfer.
          sig { params(description: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # The description set for the API key when it was created.
            description:
          ); end
          sig { override.returns({description: T.nilable(String)}) }
          def to_hash; end
        end

        # The type of object that created this transfer.
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::CreatedBy::Category) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # An API key. Details will be under the `api_key` object.
          API_KEY = T.let(:api_key, Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol)

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION =
            T.let(:oauth_application, Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol)

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = T.let(:user, Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol]) }
          def self.values; end
        end

        class OAuthApplication < Increase::Internal::Type::BaseModel
          # The name of the OAuth Application.
          sig { returns(String) }
          attr_accessor :name

          # If present, details about the OAuth Application that created the transfer.
          sig { params(name: String).returns(T.attached_class) }
          def self.new(
            # The name of the OAuth Application.
            name:
          ); end
          sig { override.returns({name: String}) }
          def to_hash; end
        end

        class User < Increase::Internal::Type::BaseModel
          # The email address of the User.
          sig { returns(String) }
          attr_accessor :email

          # If present, details about the User that created the transfer.
          sig { params(email: String).returns(T.attached_class) }
          def self.new(
            # The email address of the User.
            email:
          ); end
          sig { override.returns({email: String}) }
          def to_hash; end
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
      # currency.
      module Currency
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::CheckTransfer::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::CheckTransfer::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::CheckTransfer::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::CheckTransfer::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::CheckTransfer::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::CheckTransfer::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CheckTransfer::Currency::TaggedSymbol]) }
        def self.values; end
      end

      # Whether Increase will print and mail the check or if you will do it yourself.
      module FulfillmentMethod
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::FulfillmentMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = T.let(:physical_check, Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol)

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = T.let(:third_party, Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol]) }
        def self.values; end
      end

      class Mailing < Increase::Internal::Type::BaseModel
        # The ID of the file corresponding to an image of the check that was mailed, if
        # available.
        sig { returns(T.nilable(String)) }
        attr_accessor :image_id

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        # the check was mailed.
        sig { returns(Time) }
        attr_accessor :mailed_at

        # The tracking number of the shipment, if available for the shipping method.
        sig { returns(T.nilable(String)) }
        attr_accessor :tracking_number

        # If the check has been mailed by Increase, this will contain details of the
        # shipment.
        sig do
          params(image_id: T.nilable(String), mailed_at: Time, tracking_number: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(
          # The ID of the file corresponding to an image of the check that was mailed, if
          # available.
          image_id:,
          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          # the check was mailed.
          mailed_at:,
          # The tracking number of the shipment, if available for the shipping method.
          tracking_number:
        ); end
        sig do
          override.returns({image_id: T.nilable(String), mailed_at: Time, tracking_number: T.nilable(String)})
        end
        def to_hash; end
      end

      class PhysicalCheck < Increase::Internal::Type::BaseModel
        # The ID of the file for the check attachment.
        sig { returns(T.nilable(String)) }
        attr_accessor :attachment_file_id

        # Details for where Increase will mail the check.
        sig { returns(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress) }
        attr_reader :mailing_address

        sig do
          params(
            mailing_address: T.any(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :mailing_address

        # The descriptor that will be printed on the memo field on the check.
        sig { returns(T.nilable(String)) }
        attr_accessor :memo

        # The descriptor that will be printed on the letter included with the check.
        sig { returns(T.nilable(String)) }
        attr_accessor :note

        # The name that will be printed on the check.
        sig { returns(String) }
        attr_accessor :recipient_name

        # The return address to be printed on the check.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress)) }
        attr_reader :return_address

        sig do
          params(
            return_address: T.nilable(
              T.any(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :return_address

        # The shipping method for the check.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol)) }
        attr_accessor :shipping_method

        # The text that will appear as the signature on the check in cursive font. If
        # blank, the check will be printed with 'No signature required'.
        sig { returns(T.nilable(String)) }
        attr_accessor :signature_text

        # Tracking updates relating to the physical check's delivery.
        sig { returns(T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate]) }
        attr_accessor :tracking_updates

        # Details relating to the physical check that Increase will print and mail. Will
        # be present if and only if `fulfillment_method` is equal to `physical_check`.
        sig do
          params(
            attachment_file_id: T.nilable(String),
            mailing_address: T.any(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress, Increase::Internal::AnyHash),
            memo: T.nilable(String),
            note: T.nilable(String),
            recipient_name: String,
            return_address: T.nilable(
              T.any(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress, Increase::Internal::AnyHash)
            ),
            shipping_method: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::OrSymbol),
            signature_text: T.nilable(String),
            tracking_updates: T::Array[T.any(Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate, Increase::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The ID of the file for the check attachment.
          attachment_file_id:,
          # Details for where Increase will mail the check.
          mailing_address:,
          # The descriptor that will be printed on the memo field on the check.
          memo:,
          # The descriptor that will be printed on the letter included with the check.
          note:,
          # The name that will be printed on the check.
          recipient_name:,
          # The return address to be printed on the check.
          return_address:,
          # The shipping method for the check.
          shipping_method:,
          # The text that will appear as the signature on the check in cursive font. If
          # blank, the check will be printed with 'No signature required'.
          signature_text:,
          # Tracking updates relating to the physical check's delivery.
          tracking_updates:
        ); end
        sig do
          override
            .returns(
              {
                attachment_file_id: T.nilable(String),
                mailing_address: Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress,
                memo: T.nilable(String),
                note: T.nilable(String),
                recipient_name: String,
                return_address: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress),
                shipping_method: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol),
                signature_text: T.nilable(String),
                tracking_updates: T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate]
              }
            )
        end
        def to_hash; end

        class MailingAddress < Increase::Internal::Type::BaseModel
          # The city of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :city

          # The street address of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          # The second line of the address of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # The name component of the check's mailing address.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The postal code of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # The state of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :state

          # Details for where Increase will mail the check.
          sig do
            params(
              city: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The city of the check's destination.
            city:,
            # The street address of the check's destination.
            line1:,
            # The second line of the address of the check's destination.
            line2:,
            # The name component of the check's mailing address.
            name:,
            # The postal code of the check's destination.
            postal_code:,
            # The state of the check's destination.
            state:
          ); end
          sig do
            override
              .returns(
                {
                  city: T.nilable(String),
                  line1: T.nilable(String),
                  line2: T.nilable(String),
                  name: T.nilable(String),
                  postal_code: T.nilable(String),
                  state: T.nilable(String)
                }
              )
          end
          def to_hash; end
        end

        class ReturnAddress < Increase::Internal::Type::BaseModel
          # The city of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :city

          # The street address of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          # The second line of the address of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # The name component of the check's return address.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The postal code of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # The state of the check's destination.
          sig { returns(T.nilable(String)) }
          attr_accessor :state

          # The return address to be printed on the check.
          sig do
            params(
              city: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The city of the check's destination.
            city:,
            # The street address of the check's destination.
            line1:,
            # The second line of the address of the check's destination.
            line2:,
            # The name component of the check's return address.
            name:,
            # The postal code of the check's destination.
            postal_code:,
            # The state of the check's destination.
            state:
          ); end
          sig do
            override
              .returns(
                {
                  city: T.nilable(String),
                  line1: T.nilable(String),
                  line2: T.nilable(String),
                  name: T.nilable(String),
                  postal_code: T.nilable(String),
                  state: T.nilable(String)
                }
              )
          end
          def to_hash; end
        end

        # The shipping method for the check.
        module ShippingMethod
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # USPS First Class
          USPS_FIRST_CLASS =
            T.let(:usps_first_class, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol)

          # FedEx Overnight
          FEDEX_OVERNIGHT =
            T.let(:fedex_overnight, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol]) }
          def self.values; end
        end

        class TrackingUpdate < Increase::Internal::Type::BaseModel
          # The type of tracking event.
          sig { returns(Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol) }
          attr_accessor :category

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          # the tracking event took place.
          sig { returns(Time) }
          attr_accessor :created_at

          # The postal code where the event took place.
          sig { returns(String) }
          attr_accessor :postal_code

          sig do
            params(
              category: Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::OrSymbol,
              created_at: Time,
              postal_code: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The type of tracking event.
            category:,
            # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
            # the tracking event took place.
            created_at:,
            # The postal code where the event took place.
            postal_code:
          ); end
          sig do
            override
              .returns(
                {
                  category: Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol,
                  created_at: Time,
                  postal_code: String
                }
              )
          end
          def to_hash; end

          # The type of tracking event.
          module Category
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            # The check is in transit.
            IN_TRANSIT =
              T.let(:in_transit, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol)

            # The check has been processed for delivery.
            PROCESSED_FOR_DELIVERY =
              T.let(
                :processed_for_delivery,
                Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol
              )

            # The check has been delivered.
            DELIVERED =
              T.let(:delivered, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol)

            # Delivery failed and the check was returned to sender.
            RETURNED_TO_SENDER =
              T.let(
                :returned_to_sender,
                Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end

      # The lifecycle status of the transfer.
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The transfer is awaiting approval.
        PENDING_APPROVAL = T.let(:pending_approval, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # The transfer has been canceled.
        CANCELED = T.let(:canceled, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # The transfer is pending submission.
        PENDING_SUBMISSION = T.let(:pending_submission, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = T.let(:requires_attention, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # The transfer has been rejected.
        REJECTED = T.let(:rejected, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # The check is queued for mailing.
        PENDING_MAILING = T.let(:pending_mailing, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # The check has been mailed.
        MAILED = T.let(:mailed, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # The check has been deposited.
        DEPOSITED = T.let(:deposited, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # A stop-payment was requested for this check.
        STOPPED = T.let(:stopped, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        # The transfer has been returned.
        RETURNED = T.let(:returned, Increase::Models::CheckTransfer::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CheckTransfer::Status::TaggedSymbol]) }
        def self.values; end
      end

      class StopPaymentRequest < Increase::Internal::Type::BaseModel
        # The reason why this transfer was stopped.
        sig { returns(Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol) }
        attr_accessor :reason

        # The time the stop-payment was requested.
        sig { returns(Time) }
        attr_accessor :requested_at

        # The ID of the check transfer that was stopped.
        sig { returns(String) }
        attr_accessor :transfer_id

        # A constant representing the object's type. For this resource it will always be
        # `check_transfer_stop_payment_request`.
        sig { returns(Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol) }
        attr_accessor :type

        # After a stop-payment is requested on the check, this will contain supplemental
        # details.
        sig do
          params(
            reason: Increase::Models::CheckTransfer::StopPaymentRequest::Reason::OrSymbol,
            requested_at: Time,
            transfer_id: String,
            type: Increase::Models::CheckTransfer::StopPaymentRequest::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The reason why this transfer was stopped.
          reason:,
          # The time the stop-payment was requested.
          requested_at:,
          # The ID of the check transfer that was stopped.
          transfer_id:,
          # A constant representing the object's type. For this resource it will always be
          # `check_transfer_stop_payment_request`.
          type:
        ); end
        sig do
          override
            .returns(
              {
                reason: Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol,
                requested_at: Time,
                transfer_id: String,
                type: Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # The reason why this transfer was stopped.
        module Reason
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Reason) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # The check could not be delivered.
          MAIL_DELIVERY_FAILED =
            T.let(:mail_delivery_failed, Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol)

          # The check was canceled by an Increase operator who will provide details out-of-band.
          REJECTED_BY_INCREASE =
            T.let(:rejected_by_increase, Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol)

          # The check was not authorized.
          NOT_AUTHORIZED =
            T.let(:not_authorized, Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol)

          # The check was stopped for another reason.
          UNKNOWN = T.let(:unknown, Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol]) }
          def self.values; end
        end

        # A constant representing the object's type. For this resource it will always be
        # `check_transfer_stop_payment_request`.
        module Type
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHECK_TRANSFER_STOP_PAYMENT_REQUEST =
            T.let(
              :check_transfer_stop_payment_request,
              Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol
            )

          sig { override.returns(T::Array[Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol]) }
          def self.values; end
        end
      end

      class Submission < Increase::Internal::Type::BaseModel
        # Per USPS requirements, Increase will standardize the address to USPS standards
        # and check it against the USPS National Change of Address (NCOA) database before
        # mailing it. This indicates what modifications, if any, were made to the address
        # before printing and mailing the check.
        sig { returns(Increase::Models::CheckTransfer::Submission::AddressCorrectionAction::TaggedSymbol) }
        attr_accessor :address_correction_action

        # The address we submitted to the printer. This is what is physically printed on
        # the check.
        sig { returns(Increase::Models::CheckTransfer::Submission::SubmittedAddress) }
        attr_reader :submitted_address

        sig do
          params(
            submitted_address: T.any(Increase::Models::CheckTransfer::Submission::SubmittedAddress, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :submitted_address

        # When this check transfer was submitted to our check printer.
        sig { returns(Time) }
        attr_accessor :submitted_at

        # After the transfer is submitted, this will contain supplemental details.
        sig do
          params(
            address_correction_action: Increase::Models::CheckTransfer::Submission::AddressCorrectionAction::OrSymbol,
            submitted_address: T.any(Increase::Models::CheckTransfer::Submission::SubmittedAddress, Increase::Internal::AnyHash),
            submitted_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
          # Per USPS requirements, Increase will standardize the address to USPS standards
          # and check it against the USPS National Change of Address (NCOA) database before
          # mailing it. This indicates what modifications, if any, were made to the address
          # before printing and mailing the check.
          address_correction_action:,
          # The address we submitted to the printer. This is what is physically printed on
          # the check.
          submitted_address:,
          # When this check transfer was submitted to our check printer.
          submitted_at:
        ); end
        sig do
          override
            .returns(
              {
                address_correction_action: Increase::Models::CheckTransfer::Submission::AddressCorrectionAction::TaggedSymbol,
                submitted_address: Increase::Models::CheckTransfer::Submission::SubmittedAddress,
                submitted_at: Time
              }
            )
        end
        def to_hash; end

        # Per USPS requirements, Increase will standardize the address to USPS standards
        # and check it against the USPS National Change of Address (NCOA) database before
        # mailing it. This indicates what modifications, if any, were made to the address
        # before printing and mailing the check.
        module AddressCorrectionAction
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::Submission::AddressCorrectionAction) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # No address correction took place.
          NONE = T.let(:none, Increase::Models::CheckTransfer::Submission::AddressCorrectionAction::TaggedSymbol)

          # The address was standardized.
          STANDARDIZATION =
            T.let(
              :standardization,
              Increase::Models::CheckTransfer::Submission::AddressCorrectionAction::TaggedSymbol
            )

          # The address was first standardized and then changed because the recipient moved.
          STANDARDIZATION_WITH_ADDRESS_CHANGE =
            T.let(
              :standardization_with_address_change,
              Increase::Models::CheckTransfer::Submission::AddressCorrectionAction::TaggedSymbol
            )

          # An error occurred while correcting the address. This typically means the USPS could not find that address. The address was not changed.
          ERROR = T.let(:error, Increase::Models::CheckTransfer::Submission::AddressCorrectionAction::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::CheckTransfer::Submission::AddressCorrectionAction::TaggedSymbol])
          end
          def self.values; end
        end

        class SubmittedAddress < Increase::Internal::Type::BaseModel
          # The submitted address city.
          sig { returns(String) }
          attr_accessor :city

          # The submitted address line 1.
          sig { returns(String) }
          attr_accessor :line1

          # The submitted address line 2.
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # The submitted recipient name.
          sig { returns(String) }
          attr_accessor :recipient_name

          # The submitted address state.
          sig { returns(String) }
          attr_accessor :state

          # The submitted address zip.
          sig { returns(String) }
          attr_accessor :zip

          # The address we submitted to the printer. This is what is physically printed on
          # the check.
          sig do
            params(
              city: String,
              line1: String,
              line2: T.nilable(String),
              recipient_name: String,
              state: String,
              zip: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The submitted address city.
            city:,
            # The submitted address line 1.
            line1:,
            # The submitted address line 2.
            line2:,
            # The submitted recipient name.
            recipient_name:,
            # The submitted address state.
            state:,
            # The submitted address zip.
            zip:
          ); end
          sig do
            override
              .returns(
                {
                  city: String,
                  line1: String,
                  line2: T.nilable(String),
                  recipient_name: String,
                  state: String,
                  zip: String
                }
              )
          end
          def to_hash; end
        end
      end

      class ThirdParty < Increase::Internal::Type::BaseModel
        # The name that you will print on the check.
        sig { returns(T.nilable(String)) }
        attr_accessor :recipient_name

        # Details relating to the custom fulfillment you will perform. Will be present if
        # and only if `fulfillment_method` is equal to `third_party`.
        sig { params(recipient_name: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # The name that you will print on the check.
          recipient_name:
        ); end
        sig { override.returns({recipient_name: T.nilable(String)}) }
        def to_hash; end
      end

      # A constant representing the object's type. For this resource it will always be
      # `check_transfer`.
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHECK_TRANSFER = T.let(:check_transfer, Increase::Models::CheckTransfer::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CheckTransfer::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
