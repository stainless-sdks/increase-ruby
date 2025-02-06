# typed: strong

module Increase
  module Models
    class CheckTransfer < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Increase::Models::CheckTransfer::Approval)) }
      attr_accessor :approval

      sig { returns(T.nilable(String)) }
      attr_accessor :approved_inbound_check_deposit_id

      sig { returns(T.nilable(Increase::Models::CheckTransfer::Cancellation)) }
      attr_accessor :cancellation

      sig { returns(String) }
      attr_accessor :check_number

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy)) }
      attr_accessor :created_by

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(Symbol) }
      attr_accessor :fulfillment_method

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(Increase::Models::CheckTransfer::Mailing)) }
      attr_accessor :mailing

      sig { returns(T.nilable(String)) }
      attr_accessor :pending_transaction_id

      sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck)) }
      attr_accessor :physical_check

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(T.nilable(String)) }
      attr_accessor :source_account_number_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(Increase::Models::CheckTransfer::StopPaymentRequest)) }
      attr_accessor :stop_payment_request

      sig { returns(T.nilable(Increase::Models::CheckTransfer::Submission)) }
      attr_accessor :submission

      sig { returns(T.nilable(Increase::Models::CheckTransfer::ThirdParty)) }
      attr_accessor :third_party

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
      end
      def initialize(
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
        override.returns(
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
        attr_accessor :approved_at

        sig { returns(T.nilable(String)) }
        attr_accessor :approved_by

        sig { params(approved_at: Time, approved_by: T.nilable(String)).void }
        def initialize(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :canceled_at

        sig { returns(T.nilable(String)) }
        attr_accessor :canceled_by

        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).void }
        def initialize(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey)) }
        attr_accessor :api_key

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication)) }
        attr_accessor :oauth_application

        sig { returns(T.nilable(Increase::Models::CheckTransfer::CreatedBy::User)) }
        attr_accessor :user

        sig do
          params(
            api_key: T.nilable(Increase::Models::CheckTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::CheckTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::CheckTransfer::CreatedBy::User)
          ).void
        end
        def initialize(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override.returns(
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
          attr_accessor :description

          sig { params(description: T.nilable(String)).void }
          def initialize(description:)
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class OAuthApplication < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :name

          sig { params(name: String).void }
          def initialize(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :email

          sig { params(email: String).void }
          def initialize(email:)
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class FulfillmentMethod < Increase::Enum
        abstract!

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Mailing < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :image_id

        sig { returns(Time) }
        attr_accessor :mailed_at

        sig { returns(T.nilable(String)) }
        attr_accessor :tracking_number

        sig { params(image_id: T.nilable(String), mailed_at: Time, tracking_number: T.nilable(String)).void }
        def initialize(image_id:, mailed_at:, tracking_number:)
        end

        sig do
          override.returns({image_id: T.nilable(String), mailed_at: Time, tracking_number: T.nilable(String)})
        end
        def to_hash
        end
      end

      class PhysicalCheck < Increase::BaseModel
        sig { returns(Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress) }
        attr_accessor :mailing_address

        sig { returns(T.nilable(String)) }
        attr_accessor :memo

        sig { returns(T.nilable(String)) }
        attr_accessor :note

        sig { returns(String) }
        attr_accessor :recipient_name

        sig { returns(T.nilable(Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress)) }
        attr_accessor :return_address

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :shipping_method

        sig { returns(T.nilable(String)) }
        attr_accessor :signature_text

        sig { returns(T::Array[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate]) }
        attr_accessor :tracking_updates

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
          ).void
        end
        def initialize(
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
          override.returns(
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
          attr_accessor :city

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          sig { returns(T.nilable(String)) }
          attr_accessor :state

          sig do
            params(
              city: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            ).void
          end
          def initialize(city:, line1:, line2:, name:, postal_code:, state:)
          end

          sig do
            override.returns(
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
          attr_accessor :city

          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          sig { returns(T.nilable(String)) }
          attr_accessor :state

          sig do
            params(
              city: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            ).void
          end
          def initialize(city:, line1:, line2:, name:, postal_code:, state:)
          end

          sig do
            override.returns(
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class TrackingUpdate < Increase::BaseModel
          sig { returns(Symbol) }
          attr_accessor :category

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :postal_code

          sig { params(category: Symbol, created_at: Time, postal_code: String).void }
          def initialize(category:, created_at:, postal_code:)
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class StopPaymentRequest < Increase::BaseModel
        sig { returns(Symbol) }
        attr_accessor :reason

        sig { returns(Time) }
        attr_accessor :requested_at

        sig { returns(String) }
        attr_accessor :transfer_id

        sig { returns(Symbol) }
        attr_accessor :type

        sig { params(reason: Symbol, requested_at: Time, transfer_id: String, type: Symbol).void }
        def initialize(reason:, requested_at:, transfer_id:, type:)
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < Increase::Enum
          abstract!

          CHECK_TRANSFER_STOP_PAYMENT_REQUEST = :check_transfer_stop_payment_request

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Submission < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :submitted_at

        sig { params(submitted_at: Time).void }
        def initialize(submitted_at:)
        end

        sig { override.returns({submitted_at: Time}) }
        def to_hash
        end
      end

      class ThirdParty < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :check_number

        sig { params(check_number: T.nilable(String)).void }
        def initialize(check_number:)
        end

        sig { override.returns({check_number: T.nilable(String)}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        CHECK_TRANSFER = :check_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
