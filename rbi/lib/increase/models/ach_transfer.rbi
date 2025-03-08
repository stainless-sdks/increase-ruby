# typed: strong

module Increase
  module Models
    class ACHTransfer < Increase::BaseModel
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

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Acknowledgement)) }
      def acknowledgement
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Acknowledgement))
          .returns(T.nilable(Increase::Models::ACHTransfer::Acknowledgement))
      end
      def acknowledgement=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda)) }
      def addenda
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Addenda))
          .returns(T.nilable(Increase::Models::ACHTransfer::Addenda))
      end
      def addenda=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Approval))
          .returns(T.nilable(Increase::Models::ACHTransfer::Approval))
      end
      def approval=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Cancellation))
          .returns(T.nilable(Increase::Models::ACHTransfer::Cancellation))
      end
      def cancellation=(_)
      end

      sig { returns(T.nilable(String)) }
      def company_descriptive_date
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_descriptive_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def company_discretionary_data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_discretionary_data=(_)
      end

      sig { returns(T.nilable(String)) }
      def company_entry_description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_entry_description=(_)
      end

      sig { returns(T.nilable(String)) }
      def company_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_name=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::CreatedBy))
          .returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy))
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
      def destination_account_holder
      end

      sig { params(_: Symbol).returns(Symbol) }
      def destination_account_holder=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_account_id=(_)
      end

      sig { returns(Symbol) }
      def funding
      end

      sig { params(_: Symbol).returns(Symbol) }
      def funding=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransfer::InboundFundsHold)) }
      def inbound_funds_hold
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::InboundFundsHold))
          .returns(T.nilable(Increase::Models::ACHTransfer::InboundFundsHold))
      end
      def inbound_funds_hold=(_)
      end

      sig { returns(T.nilable(String)) }
      def individual_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def individual_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def individual_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def individual_name=(_)
      end

      sig { returns(Symbol) }
      def network
      end

      sig { params(_: Symbol).returns(Symbol) }
      def network=(_)
      end

      sig { returns(T::Array[Increase::Models::ACHTransfer::NotificationsOfChange]) }
      def notifications_of_change
      end

      sig do
        params(_: T::Array[Increase::Models::ACHTransfer::NotificationsOfChange])
          .returns(T::Array[Increase::Models::ACHTransfer::NotificationsOfChange])
      end
      def notifications_of_change=(_)
      end

      sig { returns(T.nilable(String)) }
      def pending_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pending_transaction_id=(_)
      end

      sig { returns(Increase::Models::ACHTransfer::PreferredEffectiveDate) }
      def preferred_effective_date
      end

      sig do
        params(_: Increase::Models::ACHTransfer::PreferredEffectiveDate)
          .returns(Increase::Models::ACHTransfer::PreferredEffectiveDate)
      end
      def preferred_effective_date=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Return)) }
      def return_
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Return))
          .returns(T.nilable(Increase::Models::ACHTransfer::Return))
      end
      def return_=(_)
      end

      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Settlement)) }
      def settlement
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Settlement))
          .returns(T.nilable(Increase::Models::ACHTransfer::Settlement))
      end
      def settlement=(_)
      end

      sig { returns(Symbol) }
      def standard_entry_class_code
      end

      sig { params(_: Symbol).returns(Symbol) }
      def standard_entry_class_code=(_)
      end

      sig { returns(String) }
      def statement_descriptor
      end

      sig { params(_: String).returns(String) }
      def statement_descriptor=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Submission))
          .returns(T.nilable(Increase::Models::ACHTransfer::Submission))
      end
      def submission=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
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
          acknowledgement: T.nilable(Increase::Models::ACHTransfer::Acknowledgement),
          addenda: T.nilable(Increase::Models::ACHTransfer::Addenda),
          amount: Integer,
          approval: T.nilable(Increase::Models::ACHTransfer::Approval),
          cancellation: T.nilable(Increase::Models::ACHTransfer::Cancellation),
          company_descriptive_date: T.nilable(String),
          company_discretionary_data: T.nilable(String),
          company_entry_description: T.nilable(String),
          company_name: T.nilable(String),
          created_at: Time,
          created_by: T.nilable(Increase::Models::ACHTransfer::CreatedBy),
          currency: Symbol,
          destination_account_holder: Symbol,
          external_account_id: T.nilable(String),
          funding: Symbol,
          idempotency_key: T.nilable(String),
          inbound_funds_hold: T.nilable(Increase::Models::ACHTransfer::InboundFundsHold),
          individual_id: T.nilable(String),
          individual_name: T.nilable(String),
          network: Symbol,
          notifications_of_change: T::Array[Increase::Models::ACHTransfer::NotificationsOfChange],
          pending_transaction_id: T.nilable(String),
          preferred_effective_date: Increase::Models::ACHTransfer::PreferredEffectiveDate,
          return_: T.nilable(Increase::Models::ACHTransfer::Return),
          routing_number: String,
          settlement: T.nilable(Increase::Models::ACHTransfer::Settlement),
          standard_entry_class_code: Symbol,
          statement_descriptor: String,
          status: Symbol,
          submission: T.nilable(Increase::Models::ACHTransfer::Submission),
          transaction_id: T.nilable(String),
          type: Symbol
        )
          .void
      end
      def initialize(
        id:,
        account_id:,
        account_number:,
        acknowledgement:,
        addenda:,
        amount:,
        approval:,
        cancellation:,
        company_descriptive_date:,
        company_discretionary_data:,
        company_entry_description:,
        company_name:,
        created_at:,
        created_by:,
        currency:,
        destination_account_holder:,
        external_account_id:,
        funding:,
        idempotency_key:,
        inbound_funds_hold:,
        individual_id:,
        individual_name:,
        network:,
        notifications_of_change:,
        pending_transaction_id:,
        preferred_effective_date:,
        return_:,
        routing_number:,
        settlement:,
        standard_entry_class_code:,
        statement_descriptor:,
        status:,
        submission:,
        transaction_id:,
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
              acknowledgement: T.nilable(Increase::Models::ACHTransfer::Acknowledgement),
              addenda: T.nilable(Increase::Models::ACHTransfer::Addenda),
              amount: Integer,
              approval: T.nilable(Increase::Models::ACHTransfer::Approval),
              cancellation: T.nilable(Increase::Models::ACHTransfer::Cancellation),
              company_descriptive_date: T.nilable(String),
              company_discretionary_data: T.nilable(String),
              company_entry_description: T.nilable(String),
              company_name: T.nilable(String),
              created_at: Time,
              created_by: T.nilable(Increase::Models::ACHTransfer::CreatedBy),
              currency: Symbol,
              destination_account_holder: Symbol,
              external_account_id: T.nilable(String),
              funding: Symbol,
              idempotency_key: T.nilable(String),
              inbound_funds_hold: T.nilable(Increase::Models::ACHTransfer::InboundFundsHold),
              individual_id: T.nilable(String),
              individual_name: T.nilable(String),
              network: Symbol,
              notifications_of_change: T::Array[Increase::Models::ACHTransfer::NotificationsOfChange],
              pending_transaction_id: T.nilable(String),
              preferred_effective_date: Increase::Models::ACHTransfer::PreferredEffectiveDate,
              return_: T.nilable(Increase::Models::ACHTransfer::Return),
              routing_number: String,
              settlement: T.nilable(Increase::Models::ACHTransfer::Settlement),
              standard_entry_class_code: Symbol,
              statement_descriptor: String,
              status: Symbol,
              submission: T.nilable(Increase::Models::ACHTransfer::Submission),
              transaction_id: T.nilable(String),
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Acknowledgement < Increase::BaseModel
        sig { returns(String) }
        def acknowledged_at
        end

        sig { params(_: String).returns(String) }
        def acknowledged_at=(_)
        end

        sig { params(acknowledged_at: String).void }
        def initialize(acknowledged_at:)
        end

        sig { override.returns({acknowledged_at: String}) }
        def to_hash
        end
      end

      class Addenda < Increase::BaseModel
        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform)) }
        def freeform
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform))
            .returns(T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform))
        end
        def freeform=(_)
        end

        sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)) }
        def payment_order_remittance_advice
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice))
            .returns(T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice))
        end
        def payment_order_remittance_advice=(_)
        end

        sig do
          params(
            category: Symbol,
            freeform: T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform),
            payment_order_remittance_advice: T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)
          )
            .void
        end
        def initialize(category:, freeform:, payment_order_remittance_advice:)
        end

        sig do
          override
            .returns(
              {
                category: Symbol,
                freeform: T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform),
                payment_order_remittance_advice: T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)
              }
            )
        end
        def to_hash
        end

        class Category < Increase::Enum
          abstract!

          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice

          # Unknown addenda type.
          OTHER = :other

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Freeform < Increase::BaseModel
          sig { returns(T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry]) }
          def entries
          end

          sig do
            params(_: T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry])
              .returns(T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry])
          end
          def entries=(_)
          end

          sig { params(entries: T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry]).void }
          def initialize(entries:)
          end

          sig { override.returns({entries: T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry]}) }
          def to_hash
          end

          class Entry < Increase::BaseModel
            sig { returns(String) }
            def payment_related_information
            end

            sig { params(_: String).returns(String) }
            def payment_related_information=(_)
            end

            sig { params(payment_related_information: String).void }
            def initialize(payment_related_information:)
            end

            sig { override.returns({payment_related_information: String}) }
            def to_hash
            end
          end
        end

        class PaymentOrderRemittanceAdvice < Increase::BaseModel
          sig { returns(T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice]) }
          def invoices
          end

          sig do
            params(_: T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice])
              .returns(T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice])
          end
          def invoices=(_)
          end

          sig do
            params(invoices: T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice])
              .void
          end
          def initialize(invoices:)
          end

          sig do
            override
              .returns(
                {invoices: T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice]}
              )
          end
          def to_hash
          end

          class Invoice < Increase::BaseModel
            sig { returns(String) }
            def invoice_number
            end

            sig { params(_: String).returns(String) }
            def invoice_number=(_)
            end

            sig { returns(Integer) }
            def paid_amount
            end

            sig { params(_: Integer).returns(Integer) }
            def paid_amount=(_)
            end

            sig { params(invoice_number: String, paid_amount: Integer).void }
            def initialize(invoice_number:, paid_amount:)
            end

            sig { override.returns({invoice_number: String, paid_amount: Integer}) }
            def to_hash
            end
          end
        end
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

        sig { params(approved_at: Time, approved_by: T.nilable(String)).void }
        def initialize(approved_at:, approved_by:)
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

        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).void }
        def initialize(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey))
            .returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey))
        end
        def api_key=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication))
            .returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::CreatedBy::User))
            .returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        sig do
          params(
            api_key: T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)
          )
            .void
        end
        def initialize(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override
            .returns(
              {
                api_key: T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey),
                category: Symbol,
                oauth_application: T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication),
                user: T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)
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
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(name: String).void }
          def initialize(name:)
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

      class DestinationAccountHolder < Increase::Enum
        abstract!

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Funding < Increase::Enum
        abstract!

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class InboundFundsHold < Increase::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(Time) }
        def automatically_releases_at
        end

        sig { params(_: Time).returns(Time) }
        def automatically_releases_at=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(Symbol) }
        def currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def held_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def held_transaction_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def pending_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def pending_transaction_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def released_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def released_at=(_)
        end

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
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
            amount: Integer,
            automatically_releases_at: Time,
            created_at: Time,
            currency: Symbol,
            held_transaction_id: T.nilable(String),
            pending_transaction_id: T.nilable(String),
            released_at: T.nilable(Time),
            status: Symbol,
            type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          amount:,
          automatically_releases_at:,
          created_at:,
          currency:,
          held_transaction_id:,
          pending_transaction_id:,
          released_at:,
          status:,
          type:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Integer,
                automatically_releases_at: Time,
                created_at: Time,
                currency: Symbol,
                held_transaction_id: T.nilable(String),
                pending_transaction_id: T.nilable(String),
                released_at: T.nilable(Time),
                status: Symbol,
                type: Symbol
              }
            )
        end
        def to_hash
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

        class Status < Increase::Enum
          abstract!

          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < Increase::Enum
          abstract!

          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Network < Increase::Enum
        abstract!

        ACH = :ach

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class NotificationsOfChange < Increase::BaseModel
        sig { returns(Symbol) }
        def change_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def change_code=(_)
        end

        sig { returns(String) }
        def corrected_data
        end

        sig { params(_: String).returns(String) }
        def corrected_data=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { params(change_code: Symbol, corrected_data: String, created_at: Time).void }
        def initialize(change_code:, corrected_data:, created_at:)
        end

        sig { override.returns({change_code: Symbol, corrected_data: String, created_at: Time}) }
        def to_hash
        end

        class ChangeCode < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class PreferredEffectiveDate < Increase::BaseModel
        sig { returns(T.nilable(Date)) }
        def date
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def date=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def settlement_schedule
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def settlement_schedule=(_)
        end

        sig { params(date: T.nilable(Date), settlement_schedule: T.nilable(Symbol)).void }
        def initialize(date:, settlement_schedule:)
        end

        sig { override.returns({date: T.nilable(Date), settlement_schedule: T.nilable(Symbol)}) }
        def to_hash
        end

        class SettlementSchedule < Increase::Enum
          abstract!

          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted.
          # This is necessary, but not sufficient for the transfer to be settled same-day:
          # it must also be submitted before the last same-day cutoff
          # and be less than or equal to $1,000.000.00.
          SAME_DAY = T.let(:same_day, T.nilable(Symbol))

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = T.let(:future_dated, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Return < Increase::BaseModel
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(String) }
        def raw_return_reason_code
        end

        sig { params(_: String).returns(String) }
        def raw_return_reason_code=(_)
        end

        sig { returns(Symbol) }
        def return_reason_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def return_reason_code=(_)
        end

        sig { returns(String) }
        def trace_number
        end

        sig { params(_: String).returns(String) }
        def trace_number=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig { returns(String) }
        def transfer_id
        end

        sig { params(_: String).returns(String) }
        def transfer_id=(_)
        end

        sig do
          params(
            created_at: Time,
            raw_return_reason_code: String,
            return_reason_code: Symbol,
            trace_number: String,
            transaction_id: String,
            transfer_id: String
          )
            .void
        end
        def initialize(
          created_at:,
          raw_return_reason_code:,
          return_reason_code:,
          trace_number:,
          transaction_id:,
          transfer_id:
        )
        end

        sig do
          override
            .returns(
              {
                created_at: Time,
                raw_return_reason_code: String,
                return_reason_code: Symbol,
                trace_number: String,
                transaction_id: String,
                transfer_id: String
              }
            )
        end
        def to_hash
        end

        class ReturnReasonCode < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Settlement < Increase::BaseModel
        sig { returns(Time) }
        def settled_at
        end

        sig { params(_: Time).returns(Time) }
        def settled_at=(_)
        end

        sig { params(settled_at: Time).void }
        def initialize(settled_at:)
        end

        sig { override.returns({settled_at: Time}) }
        def to_hash
        end
      end

      class StandardEntryClassCode < Increase::Enum
        abstract!

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Submission < Increase::BaseModel
        sig { returns(Date) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        sig { returns(Time) }
        def expected_funds_settlement_at
        end

        sig { params(_: Time).returns(Time) }
        def expected_funds_settlement_at=(_)
        end

        sig { returns(Symbol) }
        def expected_settlement_schedule
        end

        sig { params(_: Symbol).returns(Symbol) }
        def expected_settlement_schedule=(_)
        end

        sig { returns(Time) }
        def submitted_at
        end

        sig { params(_: Time).returns(Time) }
        def submitted_at=(_)
        end

        sig { returns(String) }
        def trace_number
        end

        sig { params(_: String).returns(String) }
        def trace_number=(_)
        end

        sig do
          params(
            effective_date: Date,
            expected_funds_settlement_at: Time,
            expected_settlement_schedule: Symbol,
            submitted_at: Time,
            trace_number: String
          )
            .void
        end
        def initialize(
          effective_date:,
          expected_funds_settlement_at:,
          expected_settlement_schedule:,
          submitted_at:,
          trace_number:
        )
        end

        sig do
          override
            .returns(
              {
                effective_date: Date,
                expected_funds_settlement_at: Time,
                expected_settlement_schedule: Symbol,
                submitted_at: Time,
                trace_number: String
              }
            )
        end
        def to_hash
        end

        class ExpectedSettlementSchedule < Increase::Enum
          abstract!

          # The transfer is expected to settle same-day.
          SAME_DAY = :same_day

          # The transfer is expected to settle on a future date.
          FUTURE_DATED = :future_dated

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        ACH_TRANSFER = :ach_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
