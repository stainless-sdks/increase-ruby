# typed: strong

module Increase
  module Models
    class CheckTransfer < Increase::BaseModel
      # The Check transfer's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier of the Account from which funds will be transferred.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The account number printed on the check.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # The transfer amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # If your account requires approvals for transfers and the transfer was approved,
      #   this will contain details of the approval.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckTransfer::Approval, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckTransfer::Approval, Increase::Util::AnyHash)))
      end
      def approval=(_)
      end

      # If the Check Transfer was successfully deposited, this will contain the
      #   identifier of the Inbound Check Deposit object with details of the deposit.
      sig { returns(T.nilable(String)) }
      def approved_inbound_check_deposit_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def approved_inbound_check_deposit_id=(_)
      end

      # If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckTransfer::Cancellation, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckTransfer::Cancellation, Increase::Util::AnyHash)))
      end
      def cancellation=(_)
      end

      # The check number printed on the check.
      sig { returns(String) }
      def check_number
      end

      sig { params(_: String).returns(String) }
      def check_number=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the transfer was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # What object created the transfer, either via the API or the dashboard.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy, Increase::Util::AnyHash)))
      end
      def created_by=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
      #   currency.
      sig { returns(Increase::Models::CheckTransfer::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: Increase::Models::CheckTransfer::Currency::TaggedSymbol)
          .returns(Increase::Models::CheckTransfer::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # Whether Increase will print and mail the check or if you will do it yourself.
      sig { returns(Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol) }
      def fulfillment_method
      end

      sig do
        params(_: Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol)
          .returns(Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol)
      end
      def fulfillment_method=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # If the check has been mailed by Increase, this will contain details of the
      #   shipment.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::Mailing)) }
      def mailing
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckTransfer::Mailing, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckTransfer::Mailing, Increase::Util::AnyHash)))
      end
      def mailing=(_)
      end

      # The ID for the pending transaction representing the transfer. A pending
      #   transaction is created when the transfer
      #   [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   by someone else in your organization.
      sig { returns(T.nilable(String)) }
      def pending_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pending_transaction_id=(_)
      end

      # Details relating to the physical check that Increase will print and mail. Will
      #   be present if and only if `fulfillment_method` is equal to `physical_check`.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck)) }
      def physical_check
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckTransfer::PhysicalCheck, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckTransfer::PhysicalCheck, Increase::Util::AnyHash)))
      end
      def physical_check=(_)
      end

      # The routing number printed on the check.
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The identifier of the Account Number from which to send the transfer and print
      #   on the check.
      sig { returns(T.nilable(String)) }
      def source_account_number_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def source_account_number_id=(_)
      end

      # The lifecycle status of the transfer.
      sig { returns(Increase::Models::CheckTransfer::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::CheckTransfer::Status::TaggedSymbol)
          .returns(Increase::Models::CheckTransfer::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # After a stop-payment is requested on the check, this will contain supplemental
      #   details.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest)) }
      def stop_payment_request
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckTransfer::StopPaymentRequest, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckTransfer::StopPaymentRequest, Increase::Util::AnyHash)))
      end
      def stop_payment_request=(_)
      end

      # After the transfer is submitted, this will contain supplemental details.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckTransfer::Submission, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckTransfer::Submission, Increase::Util::AnyHash)))
      end
      def submission=(_)
      end

      # Details relating to the custom fulfillment you will perform. Will be present if
      #   and only if `fulfillment_method` is equal to `third_party`.
      sig { returns(T.nilable(Increase::Models::CheckTransfer::ThirdParty)) }
      def third_party
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckTransfer::ThirdParty, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckTransfer::ThirdParty, Increase::Util::AnyHash)))
      end
      def third_party=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `check_transfer`.
      sig { returns(Increase::Models::CheckTransfer::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::CheckTransfer::Type::TaggedSymbol)
          .returns(Increase::Models::CheckTransfer::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Check Transfers move funds from your Increase account by mailing a physical
      #   check.
      sig do
        params(
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
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        account_number:,
        amount:,
        approval:,
        approved_inbound_check_deposit_id:,
        cancellation:,
        check_number:,
        created_at:,
        created_by:,
        currency:,
        fulfillment_method:,
        idempotency_key:,
        mailing:,
        pending_transaction_id:,
        physical_check:,
        routing_number:,
        source_account_number_id:,
        status:,
        stop_payment_request:,
        submission:,
        third_party:,
        type:
      )
      end

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
      def to_hash
      end

      class Approval < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was approved.
        sig { returns(Time) }
        def approved_at
        end

        sig { params(_: Time).returns(Time) }
        def approved_at=(_)
        end

        # If the Transfer was approved by a user in the dashboard, the email address of
        #   that user.
        sig { returns(T.nilable(String)) }
        def approved_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def approved_by=(_)
        end

        # If your account requires approvals for transfers and the transfer was approved,
        #   this will contain details of the approval.
        sig { params(approved_at: Time, approved_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Transfer was canceled.
        sig { returns(Time) }
        def canceled_at
        end

        sig { params(_: Time).returns(Time) }
        def canceled_at=(_)
        end

        # If the Transfer was canceled by a user in the dashboard, the email address of
        #   that user.
        sig { returns(T.nilable(String)) }
        def canceled_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def canceled_by=(_)
        end

        # If your account requires approvals for transfers and the transfer was not
        #   approved, this will contain details of the cancellation.
        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        # If present, details about the API key that created the transfer.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::APIKey, Increase::Util::AnyHash)))
            .returns(T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::APIKey, Increase::Util::AnyHash)))
        end
        def api_key=(_)
        end

        # The type of object that created this transfer.
        sig { returns(Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol)
            .returns(Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol)
        end
        def category=(_)
        end

        # If present, details about the OAuth Application that created the transfer.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(
            _: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication, Increase::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication, Increase::Util::AnyHash))
            )
        end
        def oauth_application=(_)
        end

        # If present, details about the User that created the transfer.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::User, Increase::Util::AnyHash)))
            .returns(T.nilable(T.any(Increase::Models::CheckTransfer::CreatedBy::User, Increase::Util::AnyHash)))
        end
        def user=(_)
        end

        # What object created the transfer, either via the API or the dashboard.
        sig do
          params(
            api_key: T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey),
            category: Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol,
            oauth_application: T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::CheckTransfer::CreatedBy::User)
          )
            .returns(T.attached_class)
        end
        def self.new(api_key:, category:, oauth_application:, user:)
        end

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
        def to_hash
        end

        class APIKey < Increase::BaseModel
          # The description set for the API key when it was created.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # If present, details about the API key that created the transfer.
          sig { params(description: T.nilable(String)).returns(T.attached_class) }
          def self.new(description:)
          end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash
          end
        end

        # The type of object that created this transfer.
        module Category
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::CreatedBy::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol) }

          # An API key. Details will be under the `api_key` object.
          API_KEY = T.let(:api_key, Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol)

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION =
            T.let(:oauth_application, Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol)

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = T.let(:user, Increase::Models::CheckTransfer::CreatedBy::Category::TaggedSymbol)
        end

        class OAuthApplication < Increase::BaseModel
          # The name of the OAuth Application.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # If present, details about the OAuth Application that created the transfer.
          sig { params(name: String).returns(T.attached_class) }
          def self.new(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          # The email address of the User.
          sig { returns(String) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          # If present, details about the User that created the transfer.
          sig { params(email: String).returns(T.attached_class) }
          def self.new(email:)
          end

          sig { override.returns({email: String}) }
          def to_hash
          end
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
      #   currency.
      module Currency
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::Currency::TaggedSymbol) }

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
      end

      # Whether Increase will print and mail the check or if you will do it yourself.
      module FulfillmentMethod
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::FulfillmentMethod) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol) }

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = T.let(:physical_check, Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol)

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = T.let(:third_party, Increase::Models::CheckTransfer::FulfillmentMethod::TaggedSymbol)
      end

      class Mailing < Increase::BaseModel
        # The ID of the file corresponding to an image of the check that was mailed, if
        #   available.
        sig { returns(T.nilable(String)) }
        def image_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def image_id=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the check was mailed.
        sig { returns(Time) }
        def mailed_at
        end

        sig { params(_: Time).returns(Time) }
        def mailed_at=(_)
        end

        # The tracking number of the shipment, if available for the shipping method.
        sig { returns(T.nilable(String)) }
        def tracking_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tracking_number=(_)
        end

        # If the check has been mailed by Increase, this will contain details of the
        #   shipment.
        sig do
          params(image_id: T.nilable(String), mailed_at: Time, tracking_number: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(image_id:, mailed_at:, tracking_number:)
        end

        sig do
          override.returns({image_id: T.nilable(String), mailed_at: Time, tracking_number: T.nilable(String)})
        end
        def to_hash
        end
      end

      class PhysicalCheck < Increase::BaseModel
        # Details for where Increase will mail the check.
        sig { returns(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress) }
        def mailing_address
        end

        sig do
          params(_: T.any(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress, Increase::Util::AnyHash))
        end
        def mailing_address=(_)
        end

        # The descriptor that will be printed on the memo field on the check.
        sig { returns(T.nilable(String)) }
        def memo
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def memo=(_)
        end

        # The descriptor that will be printed on the letter included with the check.
        sig { returns(T.nilable(String)) }
        def note
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def note=(_)
        end

        # The name that will be printed on the check.
        sig { returns(String) }
        def recipient_name
        end

        sig { params(_: String).returns(String) }
        def recipient_name=(_)
        end

        # The return address to be printed on the check.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress)) }
        def return_address
        end

        sig do
          params(
            _: T.nilable(T.any(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress, Increase::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress, Increase::Util::AnyHash))
            )
        end
        def return_address=(_)
        end

        # The shipping method for the check.
        sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol)) }
        def shipping_method
        end

        sig do
          params(_: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol))
            .returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol))
        end
        def shipping_method=(_)
        end

        # The text that will appear as the signature on the check in cursive font. If
        #   blank, the check will be printed with 'No signature required'.
        sig { returns(T.nilable(String)) }
        def signature_text
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def signature_text=(_)
        end

        # Tracking updates relating to the physical check's delivery.
        sig { returns(T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate]) }
        def tracking_updates
        end

        sig do
          params(_: T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate])
            .returns(T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate])
        end
        def tracking_updates=(_)
        end

        # Details relating to the physical check that Increase will print and mail. Will
        #   be present if and only if `fulfillment_method` is equal to `physical_check`.
        sig do
          params(
            mailing_address: Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress,
            memo: T.nilable(String),
            note: T.nilable(String),
            recipient_name: String,
            return_address: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress),
            shipping_method: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol),
            signature_text: T.nilable(String),
            tracking_updates: T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate]
          )
            .returns(T.attached_class)
        end
        def self.new(
          mailing_address:,
          memo:,
          note:,
          recipient_name:,
          return_address:,
          shipping_method:,
          signature_text:,
          tracking_updates:
        )
        end

        sig do
          override
            .returns(
              {
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
        def to_hash
        end

        class MailingAddress < Increase::BaseModel
          # The city of the check's destination.
          sig { returns(T.nilable(String)) }
          def city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_)
          end

          # The street address of the check's destination.
          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          # The second line of the address of the check's destination.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # The name component of the check's mailing address.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          # The postal code of the check's destination.
          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          # The state of the check's destination.
          sig { returns(T.nilable(String)) }
          def state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_)
          end

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
          def self.new(city:, line1:, line2:, name:, postal_code:, state:)
          end

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
          def to_hash
          end
        end

        class ReturnAddress < Increase::BaseModel
          # The city of the check's destination.
          sig { returns(T.nilable(String)) }
          def city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_)
          end

          # The street address of the check's destination.
          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          # The second line of the address of the check's destination.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # The name component of the check's return address.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          # The postal code of the check's destination.
          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          # The state of the check's destination.
          sig { returns(T.nilable(String)) }
          def state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_)
          end

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
          def self.new(city:, line1:, line2:, name:, postal_code:, state:)
          end

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
          def to_hash
          end
        end

        # The shipping method for the check.
        module ShippingMethod
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol) }

          # USPS First Class
          USPS_FIRST_CLASS =
            T.let(:usps_first_class, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol)

          # FedEx Overnight
          FEDEX_OVERNIGHT =
            T.let(:fedex_overnight, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod::TaggedSymbol)
        end

        class TrackingUpdate < Increase::BaseModel
          # The type of tracking event.
          sig { returns(Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol) }
          def category
          end

          sig do
            params(_: Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol)
              .returns(Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol)
          end
          def category=(_)
          end

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the tracking event took place.
          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          # The postal code where the event took place.
          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          sig do
            params(
              category: Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol,
              created_at: Time,
              postal_code: String
            )
              .returns(T.attached_class)
          end
          def self.new(category:, created_at:, postal_code:)
          end

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
          def to_hash
          end

          # The type of tracking event.
          module Category
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category::TaggedSymbol) }

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
          end
        end
      end

      # The lifecycle status of the transfer.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::Status::TaggedSymbol) }

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
      end

      class StopPaymentRequest < Increase::BaseModel
        # The reason why this transfer was stopped.
        sig { returns(Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol) }
        def reason
        end

        sig do
          params(_: Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol)
            .returns(Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol)
        end
        def reason=(_)
        end

        # The time the stop-payment was requested.
        sig { returns(Time) }
        def requested_at
        end

        sig { params(_: Time).returns(Time) }
        def requested_at=(_)
        end

        # The ID of the check transfer that was stopped.
        sig { returns(String) }
        def transfer_id
        end

        sig { params(_: String).returns(String) }
        def transfer_id=(_)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `check_transfer_stop_payment_request`.
        sig { returns(Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol)
            .returns(Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol)
        end
        def type=(_)
        end

        # After a stop-payment is requested on the check, this will contain supplemental
        #   details.
        sig do
          params(
            reason: Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol,
            requested_at: Time,
            transfer_id: String,
            type: Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(reason:, requested_at:, transfer_id:, type:)
        end

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
        def to_hash
        end

        # The reason why this transfer was stopped.
        module Reason
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Reason::TaggedSymbol) }

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
        end

        # A constant representing the object's type. For this resource it will always be
        #   `check_transfer_stop_payment_request`.
        module Type
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol) }

          CHECK_TRANSFER_STOP_PAYMENT_REQUEST =
            T.let(
              :check_transfer_stop_payment_request,
              Increase::Models::CheckTransfer::StopPaymentRequest::Type::TaggedSymbol
            )
        end
      end

      class Submission < Increase::BaseModel
        # When this check transfer was submitted to our check printer.
        sig { returns(Time) }
        def submitted_at
        end

        sig { params(_: Time).returns(Time) }
        def submitted_at=(_)
        end

        # After the transfer is submitted, this will contain supplemental details.
        sig { params(submitted_at: Time).returns(T.attached_class) }
        def self.new(submitted_at:)
        end

        sig { override.returns({submitted_at: Time}) }
        def to_hash
        end
      end

      class ThirdParty < Increase::BaseModel
        # The check number that will be printed on the check.
        sig { returns(T.nilable(String)) }
        def check_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def check_number=(_)
        end

        # Details relating to the custom fulfillment you will perform. Will be present if
        #   and only if `fulfillment_method` is equal to `third_party`.
        sig { params(check_number: T.nilable(String)).returns(T.attached_class) }
        def self.new(check_number:)
        end

        sig { override.returns({check_number: T.nilable(String)}) }
        def to_hash
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `check_transfer`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransfer::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CheckTransfer::Type::TaggedSymbol) }

        CHECK_TRANSFER = T.let(:check_transfer, Increase::Models::CheckTransfer::Type::TaggedSymbol)
      end
    end
  end
end
