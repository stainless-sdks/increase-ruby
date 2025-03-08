# typed: strong

module Increase
  module Models
    class CheckTransfer < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckTransfer::Approval))
          .returns(T.nilable(Increase::Models::CheckTransfer::Approval))
      end
      def approval=(_)
      end

      sig { returns(T.nilable(String)) }
      def approved_inbound_check_deposit_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def approved_inbound_check_deposit_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckTransfer::Cancellation))
          .returns(T.nilable(Increase::Models::CheckTransfer::Cancellation))
      end
      def cancellation=(_)
      end

      sig { returns(String) }
      def check_number
      end

      sig { params(_: String).returns(String) }
      def check_number=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckTransfer::CreatedBy))
          .returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy))
      end
      def created_by=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(Symbol) }
      def fulfillment_method
      end

      sig { params(_: Symbol).returns(Symbol) }
      def fulfillment_method=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransfer::Mailing)) }
      def mailing
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckTransfer::Mailing))
          .returns(T.nilable(Increase::Models::CheckTransfer::Mailing))
      end
      def mailing=(_)
      end

      sig { returns(T.nilable(String)) }
      def pending_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pending_transaction_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck)) }
      def physical_check
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck))
          .returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck))
      end
      def physical_check=(_)
      end

      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def source_account_number_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def source_account_number_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest)) }
      def stop_payment_request
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest))
          .returns(T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest))
      end
      def stop_payment_request=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransfer::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckTransfer::Submission))
          .returns(T.nilable(Increase::Models::CheckTransfer::Submission))
      end
      def submission=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransfer::ThirdParty)) }
      def third_party
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckTransfer::ThirdParty))
          .returns(T.nilable(Increase::Models::CheckTransfer::ThirdParty))
      end
      def third_party=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
            currency: Symbol,
            fulfillment_method: Symbol,
            idempotency_key: T.nilable(String),
            mailing: T.nilable(Increase::Models::CheckTransfer::Mailing),
            pending_transaction_id: T.nilable(String),
            physical_check: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck),
            routing_number: String,
            source_account_number_id: T.nilable(String),
            status: Symbol,
            stop_payment_request: T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest),
            submission: T.nilable(Increase::Models::CheckTransfer::Submission),
            third_party: T.nilable(Increase::Models::CheckTransfer::ThirdParty),
            type: Symbol
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
              currency: Symbol,
              fulfillment_method: Symbol,
              idempotency_key: T.nilable(String),
              mailing: T.nilable(Increase::Models::CheckTransfer::Mailing),
              pending_transaction_id: T.nilable(String),
              physical_check: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck),
              routing_number: String,
              source_account_number_id: T.nilable(String),
              status: Symbol,
              stop_payment_request: T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest),
              submission: T.nilable(Increase::Models::CheckTransfer::Submission),
              third_party: T.nilable(Increase::Models::CheckTransfer::ThirdParty),
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Approval < Increase::BaseModel
        sig { returns(Time) }
        def approved_at
        end

        sig { params(_: Time).returns(Time) }
        def approved_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def approved_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def approved_by=(_)
        end

        sig { params(approved_at: Time, approved_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        sig { returns(Time) }
        def canceled_at
        end

        sig { params(_: Time).returns(Time) }
        def canceled_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def canceled_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def canceled_by=(_)
        end

        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey))
            .returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey))
        end
        def api_key=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication))
            .returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::CheckTransfer::CreatedBy::User))
            .returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        sig do
          params(
              api_key: T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey),
              category: Symbol,
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
                category: Symbol,
                oauth_application: T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication),
                user: T.nilable(Increase::Models::CheckTransfer::CreatedBy::User)
              }
            )
        end
        def to_hash
        end

        class APIKey < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig { params(description: T.nilable(String)).returns(T.attached_class) }
          def self.new(description:)
          end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash
          end
        end

        class Category < Increase::Enum
          abstract!

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class OAuthApplication < Increase::BaseModel
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(name: String).returns(T.attached_class) }
          def self.new(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          sig { returns(String) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          sig { params(email: String).returns(T.attached_class) }
          def self.new(email:)
          end

          sig { override.returns({email: String}) }
          def to_hash
          end
        end
      end

      class Currency < Increase::Enum
        abstract!

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class FulfillmentMethod < Increase::Enum
        abstract!

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Mailing < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        def image_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def image_id=(_)
        end

        sig { returns(Time) }
        def mailed_at
        end

        sig { params(_: Time).returns(Time) }
        def mailed_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def tracking_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tracking_number=(_)
        end

        sig do
          params(image_id: T.nilable(String), mailed_at: Time, tracking_number: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(image_id:, mailed_at:, tracking_number:)
        end

        sig { override.returns({image_id: T.nilable(String), mailed_at: Time, tracking_number: T.nilable(String)}) }
        def to_hash
        end
      end

      class PhysicalCheck < Increase::BaseModel
        sig { returns(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress) }
        def mailing_address
        end

        sig do
          params(_: Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress)
            .returns(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress)
        end
        def mailing_address=(_)
        end

        sig { returns(T.nilable(String)) }
        def memo
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def memo=(_)
        end

        sig { returns(T.nilable(String)) }
        def note
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def note=(_)
        end

        sig { returns(String) }
        def recipient_name
        end

        sig { params(_: String).returns(String) }
        def recipient_name=(_)
        end

        sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress)) }
        def return_address
        end

        sig do
          params(_: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress))
            .returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress))
        end
        def return_address=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def shipping_method
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def shipping_method=(_)
        end

        sig { returns(T.nilable(String)) }
        def signature_text
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def signature_text=(_)
        end

        sig { returns(T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate]) }
        def tracking_updates
        end

        sig do
          params(_: T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate])
            .returns(T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate])
        end
        def tracking_updates=(_)
        end

        sig do
          params(
              mailing_address: Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress,
              memo: T.nilable(String),
              note: T.nilable(String),
              recipient_name: String,
              return_address: T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress),
              shipping_method: T.nilable(Symbol),
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
                shipping_method: T.nilable(Symbol),
                signature_text: T.nilable(String),
                tracking_updates: T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate]
              }
            )
        end
        def to_hash
        end

        class MailingAddress < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          def city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_)
          end

          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_)
          end

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
          sig { returns(T.nilable(String)) }
          def city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_)
          end

          sig { returns(T.nilable(String)) }
          def line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_)
          end

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

        class ShippingMethod < Increase::Enum
          abstract!

          # USPS First Class
          USPS_FIRST_CLASS = T.let(:usps_first_class, T.nilable(Symbol))

          # FedEx Overnight
          FEDEX_OVERNIGHT = T.let(:fedex_overnight, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class TrackingUpdate < Increase::BaseModel
          sig { returns(Symbol) }
          def category
          end

          sig { params(_: Symbol).returns(Symbol) }
          def category=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          sig { params(category: Symbol, created_at: Time, postal_code: String).returns(T.attached_class) }
          def self.new(category:, created_at:, postal_code:)
          end

          sig { override.returns({category: Symbol, created_at: Time, postal_code: String}) }
          def to_hash
          end

          class Category < Increase::Enum
            abstract!

            # The check is in transit.
            IN_TRANSIT = :in_transit

            # The check has been processed for delivery.
            PROCESSED_FOR_DELIVERY = :processed_for_delivery

            # The check has been delivered.
            DELIVERED = :delivered

            # Delivery failed and the check was returned to sender.
            RETURNED_TO_SENDER = :returned_to_sender

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end

      class Status < Increase::Enum
        abstract!

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class StopPaymentRequest < Increase::BaseModel
        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        sig { returns(Time) }
        def requested_at
        end

        sig { params(_: Time).returns(Time) }
        def requested_at=(_)
        end

        sig { returns(String) }
        def transfer_id
        end

        sig { params(_: String).returns(String) }
        def transfer_id=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { params(reason: Symbol, requested_at: Time, transfer_id: String, type: Symbol).returns(T.attached_class) }
        def self.new(reason:, requested_at:, transfer_id:, type:)
        end

        sig { override.returns({reason: Symbol, requested_at: Time, transfer_id: String, type: Symbol}) }
        def to_hash
        end

        class Reason < Increase::Enum
          abstract!

          # The check could not be delivered.
          MAIL_DELIVERY_FAILED = :mail_delivery_failed

          # The check was canceled by an Increase operator who will provide details out-of-band.
          REJECTED_BY_INCREASE = :rejected_by_increase

          # The check was not authorized.
          NOT_AUTHORIZED = :not_authorized

          # The check was stopped for another reason.
          UNKNOWN = :unknown

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Type < Increase::Enum
          abstract!

          CHECK_TRANSFER_STOP_PAYMENT_REQUEST = :check_transfer_stop_payment_request

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class Submission < Increase::BaseModel
        sig { returns(Time) }
        def submitted_at
        end

        sig { params(_: Time).returns(Time) }
        def submitted_at=(_)
        end

        sig { params(submitted_at: Time).returns(T.attached_class) }
        def self.new(submitted_at:)
        end

        sig { override.returns({submitted_at: Time}) }
        def to_hash
        end
      end

      class ThirdParty < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        def check_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def check_number=(_)
        end

        sig { params(check_number: T.nilable(String)).returns(T.attached_class) }
        def self.new(check_number:)
        end

        sig { override.returns({check_number: T.nilable(String)}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        CHECK_TRANSFER = :check_transfer

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
