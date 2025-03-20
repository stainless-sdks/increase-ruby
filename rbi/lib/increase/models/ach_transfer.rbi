# typed: strong

module Increase
  module Models
    class ACHTransfer < Increase::BaseModel
      # The ACH transfer's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The Account to which the transfer belongs.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The destination account number.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # After the transfer is acknowledged by FedACH, this will contain supplemental
      #   details. The Federal Reserve sends an acknowledgement message for each file that
      #   Increase submits.
      sig { returns(T.nilable(Increase::Models::ACHTransfer::Acknowledgement)) }
      def acknowledgement
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Acknowledgement))
          .returns(T.nilable(Increase::Models::ACHTransfer::Acknowledgement))
      end
      def acknowledgement=(_)
      end

      # Additional information that will be sent to the recipient.
      sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda)) }
      def addenda
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Addenda))
          .returns(T.nilable(Increase::Models::ACHTransfer::Addenda))
      end
      def addenda=(_)
      end

      # The transfer amount in USD cents. A positive amount indicates a credit transfer
      #   pushing funds to the receiving account. A negative amount indicates a debit
      #   transfer pulling funds from the receiving account.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # If your account requires approvals for transfers and the transfer was approved,
      #   this will contain details of the approval.
      sig { returns(T.nilable(Increase::Models::ACHTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Approval))
          .returns(T.nilable(Increase::Models::ACHTransfer::Approval))
      end
      def approval=(_)
      end

      # If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      sig { returns(T.nilable(Increase::Models::ACHTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Cancellation))
          .returns(T.nilable(Increase::Models::ACHTransfer::Cancellation))
      end
      def cancellation=(_)
      end

      # The description of the date of the transfer.
      sig { returns(T.nilable(String)) }
      def company_descriptive_date
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_descriptive_date=(_)
      end

      # The data you chose to associate with the transfer.
      sig { returns(T.nilable(String)) }
      def company_discretionary_data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_discretionary_data=(_)
      end

      # The description of the transfer you set to be shown to the recipient.
      sig { returns(T.nilable(String)) }
      def company_entry_description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_entry_description=(_)
      end

      # The name by which the recipient knows you.
      sig { returns(T.nilable(String)) }
      def company_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_name=(_)
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
      sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::CreatedBy))
          .returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy))
      end
      def created_by=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For ACH transfers this is always equal to `usd`.
      sig { returns(Increase::Models::ACHTransfer::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: Increase::Models::ACHTransfer::Currency::TaggedSymbol)
          .returns(Increase::Models::ACHTransfer::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # The type of entity that owns the account to which the ACH Transfer is being
      #   sent.
      sig { returns(Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol) }
      def destination_account_holder
      end

      sig do
        params(_: Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol)
          .returns(Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol)
      end
      def destination_account_holder=(_)
      end

      # The identifier of the External Account the transfer was made to, if any.
      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_account_id=(_)
      end

      # The type of the account to which the transfer will be sent.
      sig { returns(Increase::Models::ACHTransfer::Funding::TaggedSymbol) }
      def funding
      end

      sig do
        params(_: Increase::Models::ACHTransfer::Funding::TaggedSymbol)
          .returns(Increase::Models::ACHTransfer::Funding::TaggedSymbol)
      end
      def funding=(_)
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

      # Increase will sometimes hold the funds for ACH debit transfers. If funds are
      #   held, this sub-object will contain details of the hold.
      sig { returns(T.nilable(Increase::Models::ACHTransfer::InboundFundsHold)) }
      def inbound_funds_hold
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::InboundFundsHold))
          .returns(T.nilable(Increase::Models::ACHTransfer::InboundFundsHold))
      end
      def inbound_funds_hold=(_)
      end

      # Your identifier for the transfer recipient.
      sig { returns(T.nilable(String)) }
      def individual_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def individual_id=(_)
      end

      # The name of the transfer recipient. This value is information and not verified
      #   by the recipient's bank.
      sig { returns(T.nilable(String)) }
      def individual_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def individual_name=(_)
      end

      # The transfer's network.
      sig { returns(Increase::Models::ACHTransfer::Network::TaggedSymbol) }
      def network
      end

      sig do
        params(_: Increase::Models::ACHTransfer::Network::TaggedSymbol)
          .returns(Increase::Models::ACHTransfer::Network::TaggedSymbol)
      end
      def network=(_)
      end

      # If the receiving bank accepts the transfer but notifies that future transfers
      #   should use different details, this will contain those details.
      sig { returns(T::Array[Increase::Models::ACHTransfer::NotificationsOfChange]) }
      def notifications_of_change
      end

      sig do
        params(_: T::Array[Increase::Models::ACHTransfer::NotificationsOfChange])
          .returns(T::Array[Increase::Models::ACHTransfer::NotificationsOfChange])
      end
      def notifications_of_change=(_)
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

      # Configuration for how the effective date of the transfer will be set. This
      #   determines same-day vs future-dated settlement timing. If not set, defaults to a
      #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
      #   must be set.
      sig { returns(Increase::Models::ACHTransfer::PreferredEffectiveDate) }
      def preferred_effective_date
      end

      sig do
        params(_: Increase::Models::ACHTransfer::PreferredEffectiveDate)
          .returns(Increase::Models::ACHTransfer::PreferredEffectiveDate)
      end
      def preferred_effective_date=(_)
      end

      # If your transfer is returned, this will contain details of the return.
      sig { returns(T.nilable(Increase::Models::ACHTransfer::Return)) }
      def return_
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Return))
          .returns(T.nilable(Increase::Models::ACHTransfer::Return))
      end
      def return_=(_)
      end

      # The American Bankers' Association (ABA) Routing Transit Number (RTN).
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # A subhash containing information about when and how the transfer settled at the
      #   Federal Reserve.
      sig { returns(T.nilable(Increase::Models::ACHTransfer::Settlement)) }
      def settlement
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Settlement))
          .returns(T.nilable(Increase::Models::ACHTransfer::Settlement))
      end
      def settlement=(_)
      end

      # The Standard Entry Class (SEC) code to use for the transfer.
      sig { returns(Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol) }
      def standard_entry_class_code
      end

      sig do
        params(_: Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol)
          .returns(Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol)
      end
      def standard_entry_class_code=(_)
      end

      # The descriptor that will show on the recipient's bank statement.
      sig { returns(String) }
      def statement_descriptor
      end

      sig { params(_: String).returns(String) }
      def statement_descriptor=(_)
      end

      # The lifecycle status of the transfer.
      sig { returns(Increase::Models::ACHTransfer::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::ACHTransfer::Status::TaggedSymbol)
          .returns(Increase::Models::ACHTransfer::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # After the transfer is submitted to FedACH, this will contain supplemental
      #   details. Increase batches transfers and submits a file to the Federal Reserve
      #   roughly every 30 minutes. The Federal Reserve processes ACH transfers during
      #   weekdays according to their
      #   [posted schedule](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
      sig { returns(T.nilable(Increase::Models::ACHTransfer::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHTransfer::Submission))
          .returns(T.nilable(Increase::Models::ACHTransfer::Submission))
      end
      def submission=(_)
      end

      # The ID for the transaction funding the transfer.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `ach_transfer`.
      sig { returns(Increase::Models::ACHTransfer::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::ACHTransfer::Type::TaggedSymbol)
          .returns(Increase::Models::ACHTransfer::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # ACH transfers move funds between your Increase account and any other account
      #   accessible by the Automated Clearing House (ACH).
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
          currency: Increase::Models::ACHTransfer::Currency::TaggedSymbol,
          destination_account_holder: Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol,
          external_account_id: T.nilable(String),
          funding: Increase::Models::ACHTransfer::Funding::TaggedSymbol,
          idempotency_key: T.nilable(String),
          inbound_funds_hold: T.nilable(Increase::Models::ACHTransfer::InboundFundsHold),
          individual_id: T.nilable(String),
          individual_name: T.nilable(String),
          network: Increase::Models::ACHTransfer::Network::TaggedSymbol,
          notifications_of_change: T::Array[Increase::Models::ACHTransfer::NotificationsOfChange],
          pending_transaction_id: T.nilable(String),
          preferred_effective_date: Increase::Models::ACHTransfer::PreferredEffectiveDate,
          return_: T.nilable(Increase::Models::ACHTransfer::Return),
          routing_number: String,
          settlement: T.nilable(Increase::Models::ACHTransfer::Settlement),
          standard_entry_class_code: Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol,
          statement_descriptor: String,
          status: Increase::Models::ACHTransfer::Status::TaggedSymbol,
          submission: T.nilable(Increase::Models::ACHTransfer::Submission),
          transaction_id: T.nilable(String),
          type: Increase::Models::ACHTransfer::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              currency: Increase::Models::ACHTransfer::Currency::TaggedSymbol,
              destination_account_holder: Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol,
              external_account_id: T.nilable(String),
              funding: Increase::Models::ACHTransfer::Funding::TaggedSymbol,
              idempotency_key: T.nilable(String),
              inbound_funds_hold: T.nilable(Increase::Models::ACHTransfer::InboundFundsHold),
              individual_id: T.nilable(String),
              individual_name: T.nilable(String),
              network: Increase::Models::ACHTransfer::Network::TaggedSymbol,
              notifications_of_change: T::Array[Increase::Models::ACHTransfer::NotificationsOfChange],
              pending_transaction_id: T.nilable(String),
              preferred_effective_date: Increase::Models::ACHTransfer::PreferredEffectiveDate,
              return_: T.nilable(Increase::Models::ACHTransfer::Return),
              routing_number: String,
              settlement: T.nilable(Increase::Models::ACHTransfer::Settlement),
              standard_entry_class_code: Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol,
              statement_descriptor: String,
              status: Increase::Models::ACHTransfer::Status::TaggedSymbol,
              submission: T.nilable(Increase::Models::ACHTransfer::Submission),
              transaction_id: T.nilable(String),
              type: Increase::Models::ACHTransfer::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Acknowledgement < Increase::BaseModel
        # When the Federal Reserve acknowledged the submitted file containing this
        #   transfer.
        sig { returns(String) }
        def acknowledged_at
        end

        sig { params(_: String).returns(String) }
        def acknowledged_at=(_)
        end

        # After the transfer is acknowledged by FedACH, this will contain supplemental
        #   details. The Federal Reserve sends an acknowledgement message for each file that
        #   Increase submits.
        sig { params(acknowledged_at: String).returns(T.attached_class) }
        def self.new(acknowledged_at:)
        end

        sig { override.returns({acknowledged_at: String}) }
        def to_hash
        end
      end

      class Addenda < Increase::BaseModel
        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        sig { returns(Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol)
            .returns(Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol)
        end
        def category=(_)
        end

        # Unstructured `payment_related_information` passed through with the transfer.
        sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform)) }
        def freeform
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform))
            .returns(T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform))
        end
        def freeform=(_)
        end

        # Structured ASC X12 820 remittance advice records. Please reach out to
        #   [support@increase.com](mailto:support@increase.com) for more information.
        sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)) }
        def payment_order_remittance_advice
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice))
            .returns(T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice))
        end
        def payment_order_remittance_advice=(_)
        end

        # Additional information that will be sent to the recipient.
        sig do
          params(
            category: Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol,
            freeform: T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform),
            payment_order_remittance_advice: T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)
          )
            .returns(T.attached_class)
        end
        def self.new(category:, freeform:, payment_order_remittance_advice:)
        end

        sig do
          override
            .returns(
              {
                category: Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol,
                freeform: T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform),
                payment_order_remittance_advice: T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)
              }
            )
        end
        def to_hash
        end

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        module Category
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::Addenda::Category) }
          OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol) }

          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = T.let(:freeform, Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol)

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE =
            T.let(:payment_order_remittance_advice, Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol)

          # Unknown addenda type.
          OTHER = T.let(:other, Increase::Models::ACHTransfer::Addenda::Category::TaggedSymbol)
        end

        class Freeform < Increase::BaseModel
          # Each entry represents an addendum sent with the transfer.
          sig { returns(T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry]) }
          def entries
          end

          sig do
            params(_: T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry])
              .returns(T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry])
          end
          def entries=(_)
          end

          # Unstructured `payment_related_information` passed through with the transfer.
          sig do
            params(entries: T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry])
              .returns(T.attached_class)
          end
          def self.new(entries:)
          end

          sig { override.returns({entries: T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry]}) }
          def to_hash
          end

          class Entry < Increase::BaseModel
            # The payment related information passed in the addendum.
            sig { returns(String) }
            def payment_related_information
            end

            sig { params(_: String).returns(String) }
            def payment_related_information=(_)
            end

            sig { params(payment_related_information: String).returns(T.attached_class) }
            def self.new(payment_related_information:)
            end

            sig { override.returns({payment_related_information: String}) }
            def to_hash
            end
          end
        end

        class PaymentOrderRemittanceAdvice < Increase::BaseModel
          # ASC X12 RMR records for this specific transfer.
          sig { returns(T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice]) }
          def invoices
          end

          sig do
            params(_: T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice])
              .returns(T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice])
          end
          def invoices=(_)
          end

          # Structured ASC X12 820 remittance advice records. Please reach out to
          #   [support@increase.com](mailto:support@increase.com) for more information.
          sig do
            params(invoices: T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice])
              .returns(T.attached_class)
          end
          def self.new(invoices:)
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
            # The invoice number for this reference, determined in advance with the receiver.
            sig { returns(String) }
            def invoice_number
            end

            sig { params(_: String).returns(String) }
            def invoice_number=(_)
            end

            # The amount that was paid for this invoice in the minor unit of its currency. For
            #   dollars, for example, this is cents.
            sig { returns(Integer) }
            def paid_amount
            end

            sig { params(_: Integer).returns(Integer) }
            def paid_amount=(_)
            end

            sig { params(invoice_number: String, paid_amount: Integer).returns(T.attached_class) }
            def self.new(invoice_number:, paid_amount:)
            end

            sig { override.returns({invoice_number: String, paid_amount: Integer}) }
            def to_hash
            end
          end
        end
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
        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey))
            .returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey))
        end
        def api_key=(_)
        end

        # The type of object that created this transfer.
        sig { returns(Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol)
            .returns(Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol)
        end
        def category=(_)
        end

        # If present, details about the OAuth Application that created the transfer.
        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication))
            .returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        # If present, details about the User that created the transfer.
        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::ACHTransfer::CreatedBy::User))
            .returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        # What object created the transfer, either via the API or the dashboard.
        sig do
          params(
            api_key: T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey),
            category: Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol,
            oauth_application: T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)
          )
            .returns(T.attached_class)
        end
        def self.new(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override
            .returns(
              {
                api_key: T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey),
                category: Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol,
                oauth_application: T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication),
                user: T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)
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

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::CreatedBy::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol) }

          # An API key. Details will be under the `api_key` object.
          API_KEY = T.let(:api_key, Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol)

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION =
            T.let(:oauth_application, Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol)

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = T.let(:user, Increase::Models::ACHTransfer::CreatedBy::Category::TaggedSymbol)
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

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For ACH transfers this is always equal to `usd`.
      module Currency
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::ACHTransfer::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::ACHTransfer::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::ACHTransfer::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::ACHTransfer::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::ACHTransfer::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::ACHTransfer::Currency::TaggedSymbol)
      end

      # The type of entity that owns the account to which the ACH Transfer is being
      #   sent.
      module DestinationAccountHolder
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::DestinationAccountHolder) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol) }

        # The External Account is owned by a business.
        BUSINESS = T.let(:business, Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL = T.let(:individual, Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol)

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = T.let(:unknown, Increase::Models::ACHTransfer::DestinationAccountHolder::TaggedSymbol)
      end

      # The type of the account to which the transfer will be sent.
      module Funding
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::Funding) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::Funding::TaggedSymbol) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::Models::ACHTransfer::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::Models::ACHTransfer::Funding::TaggedSymbol)
      end

      class InboundFundsHold < Increase::BaseModel
        # The Inbound Funds Hold identifier.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The held amount in the minor unit of the account's currency. For dollars, for
        #   example, this is cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # When the hold will be released automatically. Certain conditions may cause it to
        #   be released before this time.
        sig { returns(Time) }
        def automatically_releases_at
        end

        sig { params(_: Time).returns(Time) }
        def automatically_releases_at=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold
        #   was created.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #   currency.
        sig { returns(Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol) }
        def currency
        end

        sig do
          params(_: Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol)
            .returns(Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol)
        end
        def currency=(_)
        end

        # The ID of the Transaction for which funds were held.
        sig { returns(T.nilable(String)) }
        def held_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def held_transaction_id=(_)
        end

        # The ID of the Pending Transaction representing the held funds.
        sig { returns(T.nilable(String)) }
        def pending_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def pending_transaction_id=(_)
        end

        # When the hold was released (if it has been released).
        sig { returns(T.nilable(Time)) }
        def released_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def released_at=(_)
        end

        # The status of the hold.
        sig { returns(Increase::Models::ACHTransfer::InboundFundsHold::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: Increase::Models::ACHTransfer::InboundFundsHold::Status::TaggedSymbol)
            .returns(Increase::Models::ACHTransfer::InboundFundsHold::Status::TaggedSymbol)
        end
        def status=(_)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        sig { returns(Increase::Models::ACHTransfer::InboundFundsHold::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Increase::Models::ACHTransfer::InboundFundsHold::Type::TaggedSymbol)
            .returns(Increase::Models::ACHTransfer::InboundFundsHold::Type::TaggedSymbol)
        end
        def type=(_)
        end

        # Increase will sometimes hold the funds for ACH debit transfers. If funds are
        #   held, this sub-object will contain details of the hold.
        sig do
          params(
            id: String,
            amount: Integer,
            automatically_releases_at: Time,
            created_at: Time,
            currency: Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol,
            held_transaction_id: T.nilable(String),
            pending_transaction_id: T.nilable(String),
            released_at: T.nilable(Time),
            status: Increase::Models::ACHTransfer::InboundFundsHold::Status::TaggedSymbol,
            type: Increase::Models::ACHTransfer::InboundFundsHold::Type::TaggedSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                currency: Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol,
                held_transaction_id: T.nilable(String),
                pending_transaction_id: T.nilable(String),
                released_at: T.nilable(Time),
                status: Increase::Models::ACHTransfer::InboundFundsHold::Status::TaggedSymbol,
                type: Increase::Models::ACHTransfer::InboundFundsHold::Type::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #   currency.
        module Currency
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Currency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol) }

          # Canadian Dollar (CAD)
          CAD = T.let(:CAD, Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol)

          # Swiss Franc (CHF)
          CHF = T.let(:CHF, Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol)

          # Euro (EUR)
          EUR = T.let(:EUR, Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol)

          # British Pound (GBP)
          GBP = T.let(:GBP, Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol)

          # Japanese Yen (JPY)
          JPY = T.let(:JPY, Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol)

          # US Dollar (USD)
          USD = T.let(:USD, Increase::Models::ACHTransfer::InboundFundsHold::Currency::TaggedSymbol)
        end

        # The status of the hold.
        module Status
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Status::TaggedSymbol) }

          # Funds are still being held.
          HELD = T.let(:held, Increase::Models::ACHTransfer::InboundFundsHold::Status::TaggedSymbol)

          # Funds have been released.
          COMPLETE = T.let(:complete, Increase::Models::ACHTransfer::InboundFundsHold::Status::TaggedSymbol)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        module Type
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Type::TaggedSymbol) }

          INBOUND_FUNDS_HOLD =
            T.let(:inbound_funds_hold, Increase::Models::ACHTransfer::InboundFundsHold::Type::TaggedSymbol)
        end
      end

      # The transfer's network.
      module Network
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::Network::TaggedSymbol) }

        ACH = T.let(:ach, Increase::Models::ACHTransfer::Network::TaggedSymbol)
      end

      class NotificationsOfChange < Increase::BaseModel
        # The required type of change that is being signaled by the receiving financial
        #   institution.
        sig { returns(Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol) }
        def change_code
        end

        sig do
          params(_: Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol)
            .returns(Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol)
        end
        def change_code=(_)
        end

        # The corrected data that should be used in future ACHs to this account. This may
        #   contain the suggested new account number or routing number. When the
        #   `change_code` is `incorrect_transaction_code`, this field contains an integer.
        #   Numbers starting with a 2 encourage changing the `funding` parameter to
        #   checking; numbers starting with a 3 encourage changing to savings.
        sig { returns(String) }
        def corrected_data
        end

        sig { params(_: String).returns(String) }
        def corrected_data=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the notification occurred.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig do
          params(
            change_code: Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol,
            corrected_data: String,
            created_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(change_code:, corrected_data:, created_at:)
        end

        sig do
          override
            .returns(
              {
                change_code: Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol,
                corrected_data: String,
                created_at: Time
              }
            )
        end
        def to_hash
        end

        # The required type of change that is being signaled by the receiving financial
        #   institution.
        module ChangeCode
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol) }

          # The account number was incorrect.
          INCORRECT_ACCOUNT_NUMBER =
            T.let(
              :incorrect_account_number,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The routing number was incorrect.
          INCORRECT_ROUTING_NUMBER =
            T.let(
              :incorrect_routing_number,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # Both the routing number and the account number were incorrect.
          INCORRECT_ROUTING_NUMBER_AND_ACCOUNT_NUMBER =
            T.let(
              :incorrect_routing_number_and_account_number,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The transaction code was incorrect. Try changing the `funding` parameter from checking to savings or vice-versa.
          INCORRECT_TRANSACTION_CODE =
            T.let(
              :incorrect_transaction_code,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The account number and the transaction code were incorrect.
          INCORRECT_ACCOUNT_NUMBER_AND_TRANSACTION_CODE =
            T.let(
              :incorrect_account_number_and_transaction_code,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The routing number, account number, and transaction code were incorrect.
          INCORRECT_ROUTING_NUMBER_ACCOUNT_NUMBER_AND_TRANSACTION_CODE =
            T.let(
              :incorrect_routing_number_account_number_and_transaction_code,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The receiving depository financial institution identification was incorrect.
          INCORRECT_RECEIVING_DEPOSITORY_FINANCIAL_INSTITUTION_IDENTIFICATION =
            T.let(
              :incorrect_receiving_depository_financial_institution_identification,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The individual identification number was incorrect.
          INCORRECT_INDIVIDUAL_IDENTIFICATION_NUMBER =
            T.let(
              :incorrect_individual_identification_number,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The addenda had an incorrect format.
          ADDENDA_FORMAT_ERROR =
            T.let(
              :addenda_format_error,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The standard entry class code was incorrect for an outbound international payment.
          INCORRECT_STANDARD_ENTRY_CLASS_CODE_FOR_OUTBOUND_INTERNATIONAL_PAYMENT =
            T.let(
              :incorrect_standard_entry_class_code_for_outbound_international_payment,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The notification of change was misrouted.
          MISROUTED_NOTIFICATION_OF_CHANGE =
            T.let(
              :misrouted_notification_of_change,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The trace number was incorrect.
          INCORRECT_TRACE_NUMBER =
            T.let(
              :incorrect_trace_number,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The company identification number was incorrect.
          INCORRECT_COMPANY_IDENTIFICATION_NUMBER =
            T.let(
              :incorrect_company_identification_number,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The individual identification number or identification number was incorrect.
          INCORRECT_IDENTIFICATION_NUMBER =
            T.let(
              :incorrect_identification_number,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The corrected data was incorrectly formatted.
          INCORRECTLY_FORMATTED_CORRECTED_DATA =
            T.let(
              :incorrectly_formatted_corrected_data,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The discretionary data was incorrect.
          INCORRECT_DISCRETIONARY_DATA =
            T.let(
              :incorrect_discretionary_data,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The routing number was not from the original entry detail record.
          ROUTING_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD =
            T.let(
              :routing_number_not_from_original_entry_detail_record,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The depository financial institution account number was not from the original entry detail record.
          DEPOSITORY_FINANCIAL_INSTITUTION_ACCOUNT_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD =
            T.let(
              :depository_financial_institution_account_number_not_from_original_entry_detail_record,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The transaction code was incorrect, initiated by the originating depository financial institution.
          INCORRECT_TRANSACTION_CODE_BY_ORIGINATING_DEPOSITORY_FINANCIAL_INSTITUTION =
            T.let(
              :incorrect_transaction_code_by_originating_depository_financial_institution,
              Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode::TaggedSymbol
            )
        end
      end

      class PreferredEffectiveDate < Increase::BaseModel
        # A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to
        #   use as the effective date when submitting this transfer.
        sig { returns(T.nilable(Date)) }
        def date
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def date=(_)
        end

        # A schedule by which Increase will choose an effective date for the transfer.
        sig do
          returns(
            T.nilable(Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol)
          )
        end
        def settlement_schedule
        end

        sig do
          params(
            _: T.nilable(Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol)
          )
            .returns(
              T.nilable(Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol)
            )
        end
        def settlement_schedule=(_)
        end

        # Configuration for how the effective date of the transfer will be set. This
        #   determines same-day vs future-dated settlement timing. If not set, defaults to a
        #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
        #   must be set.
        sig do
          params(
            date: T.nilable(Date),
            settlement_schedule: T.nilable(Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(date:, settlement_schedule:)
        end

        sig do
          override
            .returns(
              {
                date: T.nilable(Date),
                settlement_schedule: T.nilable(Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol)
              }
            )
        end
        def to_hash
        end

        # A schedule by which Increase will choose an effective date for the transfer.
        module SettlementSchedule
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol) }

          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted.
          # This is necessary, but not sufficient for the transfer to be settled same-day:
          # it must also be submitted before the last same-day cutoff
          # and be less than or equal to $1,000.000.00.
          SAME_DAY =
            T.let(:same_day, Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol)

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED =
            T.let(
              :future_dated,
              Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol
            )
        end
      end

      class Return < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was created.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # The three character ACH return code, in the range R01 to R85.
        sig { returns(String) }
        def raw_return_reason_code
        end

        sig { params(_: String).returns(String) }
        def raw_return_reason_code=(_)
        end

        # Why the ACH Transfer was returned. This reason code is sent by the receiving
        #   bank back to Increase.
        sig { returns(Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol) }
        def return_reason_code
        end

        sig do
          params(_: Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)
            .returns(Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)
        end
        def return_reason_code=(_)
        end

        # A 15 digit number that was generated by the bank that initiated the return. The
        #   trace number of the return is different than that of the original transfer. ACH
        #   trace numbers are not unique, but along with the amount and date this number can
        #   be used to identify the ACH return at the bank that initiated it.
        sig { returns(String) }
        def trace_number
        end

        sig { params(_: String).returns(String) }
        def trace_number=(_)
        end

        # The identifier of the Transaction associated with this return.
        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        # The identifier of the ACH Transfer associated with this return.
        sig { returns(String) }
        def transfer_id
        end

        sig { params(_: String).returns(String) }
        def transfer_id=(_)
        end

        # If your transfer is returned, this will contain details of the return.
        sig do
          params(
            created_at: Time,
            raw_return_reason_code: String,
            return_reason_code: Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol,
            trace_number: String,
            transaction_id: String,
            transfer_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(created_at:, raw_return_reason_code:, return_reason_code:, trace_number:, transaction_id:, transfer_id:)
        end

        sig do
          override
            .returns(
              {
                created_at: Time,
                raw_return_reason_code: String,
                return_reason_code: Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol,
                trace_number: String,
                transaction_id: String,
                transfer_id: String
              }
            )
        end
        def to_hash
        end

        # Why the ACH Transfer was returned. This reason code is sent by the receiving
        #   bank back to Increase.
        module ReturnReasonCode
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::Return::ReturnReasonCode) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol) }

          # Code R01. Insufficient funds in the receiving account. Sometimes abbreviated to NSF.
          INSUFFICIENT_FUND =
            T.let(:insufficient_fund, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R03. The account does not exist or the receiving bank was unable to locate it.
          NO_ACCOUNT = T.let(:no_account, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R02. The account is closed at the receiving bank.
          ACCOUNT_CLOSED =
            T.let(:account_closed, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R04. The account number is invalid at the receiving bank.
          INVALID_ACCOUNT_NUMBER_STRUCTURE =
            T.let(
              :invalid_account_number_structure,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R16. The account at the receiving bank was frozen per the Office of Foreign Assets Control.
          ACCOUNT_FROZEN_ENTRY_RETURNED_PER_OFAC_INSTRUCTION =
            T.let(
              :account_frozen_entry_returned_per_ofac_instruction,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R23. The receiving bank account refused a credit transfer.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER =
            T.let(
              :credit_entry_refused_by_receiver,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R05. The receiving bank rejected because of an incorrect Standard Entry Class code.
          UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE =
            T.let(
              :unauthorized_debit_to_consumer_account_using_corporate_sec_code,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R29. The corporate customer at the receiving bank reversed the transfer.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED =
            T.let(
              :corporate_customer_advised_not_authorized,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R08. The receiving bank stopped payment on this transfer.
          PAYMENT_STOPPED =
            T.let(:payment_stopped, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R20. The receiving bank account does not perform transfers.
          NON_TRANSACTION_ACCOUNT =
            T.let(:non_transaction_account, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R09. The receiving bank account does not have enough available balance for the transfer.
          UNCOLLECTED_FUNDS =
            T.let(:uncollected_funds, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R28. The routing number is incorrect.
          ROUTING_NUMBER_CHECK_DIGIT_ERROR =
            T.let(
              :routing_number_check_digit_error,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R10. The customer at the receiving bank reversed the transfer.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
            T.let(
              :customer_advised_unauthorized_improper_ineligible_or_incomplete,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R19. The amount field is incorrect or too large.
          AMOUNT_FIELD_ERROR =
            T.let(:amount_field_error, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R07. The customer at the receiving institution informed their bank that they have revoked authorization for a previously authorized transfer.
          AUTHORIZATION_REVOKED_BY_CUSTOMER =
            T.let(
              :authorization_revoked_by_customer,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R13. The routing number is invalid.
          INVALID_ACH_ROUTING_NUMBER =
            T.let(:invalid_ach_routing_number, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R17. The receiving bank is unable to process a field in the transfer.
          FILE_RECORD_EDIT_CRITERIA =
            T.let(:file_record_edit_criteria, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R45. The individual name field was invalid.
          ENR_INVALID_INDIVIDUAL_NAME =
            T.let(:enr_invalid_individual_name, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R06. The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
          RETURNED_PER_ODFI_REQUEST =
            T.let(:returned_per_odfi_request, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R34. The receiving bank's regulatory supervisor has limited their participation in the ACH network.
          LIMITED_PARTICIPATION_DFI =
            T.let(:limited_participation_dfi, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R85. The outbound international ACH transfer was incorrect.
          INCORRECTLY_CODED_OUTBOUND_INTERNATIONAL_PAYMENT =
            T.let(
              :incorrectly_coded_outbound_international_payment,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R12. A rare return reason. The account was sold to another bank.
          ACCOUNT_SOLD_TO_ANOTHER_DFI =
            T.let(:account_sold_to_another_dfi, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R25. The addenda record is incorrect or missing.
          ADDENDA_ERROR =
            T.let(:addenda_error, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R15. A rare return reason. The account holder is deceased.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED =
            T.let(
              :beneficiary_or_account_holder_deceased,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R11. A rare return reason. The customer authorized some payment to the sender, but this payment was not in error.
          CUSTOMER_ADVISED_NOT_WITHIN_AUTHORIZATION_TERMS =
            T.let(
              :customer_advised_not_within_authorization_terms,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R74. A rare return reason. Sent in response to a return that was returned with code `field_error`. The latest return should include the corrected field(s).
          CORRECTED_RETURN =
            T.let(:corrected_return, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R24. A rare return reason. The receiving bank received an exact duplicate entry with the same trace number and amount.
          DUPLICATE_ENTRY =
            T.let(:duplicate_entry, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R67. A rare return reason. The return this message refers to was a duplicate.
          DUPLICATE_RETURN =
            T.let(:duplicate_return, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R47. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_DUPLICATE_ENROLLMENT =
            T.let(:enr_duplicate_enrollment, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R43. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_DFI_ACCOUNT_NUMBER =
            T.let(
              :enr_invalid_dfi_account_number,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R44. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_INDIVIDUAL_ID_NUMBER =
            T.let(
              :enr_invalid_individual_id_number,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R46. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_REPRESENTATIVE_PAYEE_INDICATOR =
            T.let(
              :enr_invalid_representative_payee_indicator,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R41. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_TRANSACTION_CODE =
            T.let(
              :enr_invalid_transaction_code,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R40. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_RETURN_OF_ENR_ENTRY =
            T.let(:enr_return_of_enr_entry, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R42. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_ROUTING_NUMBER_CHECK_DIGIT_ERROR =
            T.let(
              :enr_routing_number_check_digit_error,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R84. A rare return reason. The International ACH Transfer cannot be processed by the gateway.
          ENTRY_NOT_PROCESSED_BY_GATEWAY =
            T.let(
              :entry_not_processed_by_gateway,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R69. A rare return reason. One or more of the fields in the ACH were malformed.
          FIELD_ERROR = T.let(:field_error, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R83. A rare return reason. The Foreign receiving bank was unable to settle this ACH transfer.
          FOREIGN_RECEIVING_DFI_UNABLE_TO_SETTLE =
            T.let(
              :foreign_receiving_dfi_unable_to_settle,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R80. A rare return reason. The International ACH Transfer is malformed.
          IAT_ENTRY_CODING_ERROR =
            T.let(:iat_entry_coding_error, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R18. A rare return reason. The ACH has an improper effective entry date field.
          IMPROPER_EFFECTIVE_ENTRY_DATE =
            T.let(
              :improper_effective_entry_date,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R39. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          IMPROPER_SOURCE_DOCUMENT_SOURCE_DOCUMENT_PRESENTED =
            T.let(
              :improper_source_document_source_document_presented,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R21. A rare return reason. The Company ID field of the ACH was invalid.
          INVALID_COMPANY_ID =
            T.let(:invalid_company_id, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R82. A rare return reason. The foreign receiving bank identifier for an International ACH Transfer was invalid.
          INVALID_FOREIGN_RECEIVING_DFI_IDENTIFICATION =
            T.let(
              :invalid_foreign_receiving_dfi_identification,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R22. A rare return reason. The Individual ID number field of the ACH was invalid.
          INVALID_INDIVIDUAL_ID_NUMBER =
            T.let(
              :invalid_individual_id_number,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R53. A rare return reason. Both the Represented Check ("RCK") entry and the original check were presented to the bank.
          ITEM_AND_RCK_ENTRY_PRESENTED_FOR_PAYMENT =
            T.let(
              :item_and_rck_entry_presented_for_payment,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R51. A rare return reason. The Represented Check ("RCK") entry is ineligible.
          ITEM_RELATED_TO_RCK_ENTRY_IS_INELIGIBLE =
            T.let(
              :item_related_to_rck_entry_is_ineligible,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R26. A rare return reason. The ACH is missing a required field.
          MANDATORY_FIELD_ERROR =
            T.let(:mandatory_field_error, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R71. A rare return reason. The receiving bank does not recognize the routing number in a dishonored return entry.
          MISROUTED_DISHONORED_RETURN =
            T.let(:misrouted_dishonored_return, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R61. A rare return reason. The receiving bank does not recognize the routing number in a return entry.
          MISROUTED_RETURN =
            T.let(:misrouted_return, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R76. A rare return reason. Sent in response to a return, the bank does not find the errors alleged by the returning bank.
          NO_ERRORS_FOUND =
            T.let(:no_errors_found, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R77. A rare return reason. The receiving bank does not accept the return of the erroneous debit. The funds are not available at the receiving bank.
          NON_ACCEPTANCE_OF_R62_DISHONORED_RETURN =
            T.let(
              :non_acceptance_of_r62_dishonored_return,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R81. A rare return reason. The receiving bank does not accept International ACH Transfers.
          NON_PARTICIPANT_IN_IAT_PROGRAM =
            T.let(
              :non_participant_in_iat_program,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R31. A rare return reason. A return that has been agreed to be accepted by the receiving bank, despite falling outside of the usual return timeframe.
          PERMISSIBLE_RETURN_ENTRY =
            T.let(:permissible_return_entry, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R70. A rare return reason. The receiving bank had not approved this return.
          PERMISSIBLE_RETURN_ENTRY_NOT_ACCEPTED =
            T.let(
              :permissible_return_entry_not_accepted,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R32. A rare return reason. The receiving bank could not settle this transaction.
          RDFI_NON_SETTLEMENT =
            T.let(:rdfi_non_settlement, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R30. A rare return reason. The receiving bank does not accept Check Truncation ACH transfers.
          RDFI_PARTICIPANT_IN_CHECK_TRUNCATION_PROGRAM =
            T.let(
              :rdfi_participant_in_check_truncation_program,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R14. A rare return reason. The payee is deceased.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
            T.let(
              :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R75. A rare return reason. The originating bank disputes that an earlier `duplicate_entry` return was actually a duplicate.
          RETURN_NOT_A_DUPLICATE =
            T.let(:return_not_a_duplicate, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R62. A rare return reason. The originating financial institution made a mistake and this return corrects it.
          RETURN_OF_ERRONEOUS_OR_REVERSING_DEBIT =
            T.let(
              :return_of_erroneous_or_reversing_debit,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R36. A rare return reason. Return of a malformed credit entry.
          RETURN_OF_IMPROPER_CREDIT_ENTRY =
            T.let(
              :return_of_improper_credit_entry,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R35. A rare return reason. Return of a malformed debit entry.
          RETURN_OF_IMPROPER_DEBIT_ENTRY =
            T.let(
              :return_of_improper_debit_entry,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R33. A rare return reason. Return of a Destroyed Check ("XKC") entry.
          RETURN_OF_XCK_ENTRY =
            T.let(:return_of_xck_entry, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R37. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          SOURCE_DOCUMENT_PRESENTED_FOR_PAYMENT =
            T.let(
              :source_document_presented_for_payment,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R50. A rare return reason. State law prevents the bank from accepting the Represented Check ("RCK") entry.
          STATE_LAW_AFFECTING_RCK_ACCEPTANCE =
            T.let(
              :state_law_affecting_rck_acceptance,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R52. A rare return reason. A stop payment was issued on a Represented Check ("RCK") entry.
          STOP_PAYMENT_ON_ITEM_RELATED_TO_RCK_ENTRY =
            T.let(
              :stop_payment_on_item_related_to_rck_entry,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R38. A rare return reason. The source attached to the ACH, usually an ACH check conversion, includes a stop payment.
          STOP_PAYMENT_ON_SOURCE_DOCUMENT =
            T.let(
              :stop_payment_on_source_document,
              Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol
            )

          # Code R73. A rare return reason. The bank receiving an `untimely_return` believes it was on time.
          TIMELY_ORIGINAL_RETURN =
            T.let(:timely_original_return, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R27. A rare return reason. An ACH return's trace number does not match an originated ACH.
          TRACE_NUMBER_ERROR =
            T.let(:trace_number_error, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R72. A rare return reason. The dishonored return was sent too late.
          UNTIMELY_DISHONORED_RETURN =
            T.let(:untimely_dishonored_return, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)

          # Code R68. A rare return reason. The return was sent too late.
          UNTIMELY_RETURN =
            T.let(:untimely_return, Increase::Models::ACHTransfer::Return::ReturnReasonCode::TaggedSymbol)
        end
      end

      class Settlement < Increase::BaseModel
        # When the funds for this transfer have settled at the destination bank at the
        #   Federal Reserve.
        sig { returns(Time) }
        def settled_at
        end

        sig { params(_: Time).returns(Time) }
        def settled_at=(_)
        end

        # A subhash containing information about when and how the transfer settled at the
        #   Federal Reserve.
        sig { params(settled_at: Time).returns(T.attached_class) }
        def self.new(settled_at:)
        end

        sig { override.returns({settled_at: Time}) }
        def to_hash
        end
      end

      # The Standard Entry Class (SEC) code to use for the transfer.
      module StandardEntryClassCode
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::StandardEntryClassCode) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol) }

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT =
          T.let(:corporate_credit_or_debit, Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE =
          T.let(:corporate_trade_exchange, Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT =
          T.let(
            :prearranged_payments_and_deposit,
            Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol
          )

        # Internet Initiated (WEB).
        INTERNET_INITIATED =
          T.let(:internet_initiated, Increase::Models::ACHTransfer::StandardEntryClassCode::TaggedSymbol)
      end

      # The lifecycle status of the transfer.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::Status::TaggedSymbol) }

        # The transfer is pending approval.
        PENDING_APPROVAL = T.let(:pending_approval, Increase::Models::ACHTransfer::Status::TaggedSymbol)

        # The transfer belongs to a Transfer Session that is pending confirmation.
        PENDING_TRANSFER_SESSION_CONFIRMATION =
          T.let(:pending_transfer_session_confirmation, Increase::Models::ACHTransfer::Status::TaggedSymbol)

        # The transfer has been canceled.
        CANCELED = T.let(:canceled, Increase::Models::ACHTransfer::Status::TaggedSymbol)

        # The transfer is pending submission to the Federal Reserve.
        PENDING_SUBMISSION = T.let(:pending_submission, Increase::Models::ACHTransfer::Status::TaggedSymbol)

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = T.let(:pending_reviewing, Increase::Models::ACHTransfer::Status::TaggedSymbol)

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = T.let(:requires_attention, Increase::Models::ACHTransfer::Status::TaggedSymbol)

        # The transfer has been rejected.
        REJECTED = T.let(:rejected, Increase::Models::ACHTransfer::Status::TaggedSymbol)

        # The transfer is complete.
        SUBMITTED = T.let(:submitted, Increase::Models::ACHTransfer::Status::TaggedSymbol)

        # The transfer has been returned.
        RETURNED = T.let(:returned, Increase::Models::ACHTransfer::Status::TaggedSymbol)
      end

      class Submission < Increase::BaseModel
        # The ACH transfer's effective date as sent to the Federal Reserve. If a specific
        #   date was configured using `preferred_effective_date`, this will match that
        #   value. Otherwise, it will be the date selected (following the specified
        #   settlement schedule) at the time the transfer was submitted.
        sig { returns(Date) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        # When the transfer is expected to settle in the recipient's account. Credits may
        #   be available sooner, at the receiving banks discretion. The FedACH schedule is
        #   published
        #   [here](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
        sig { returns(Time) }
        def expected_funds_settlement_at
        end

        sig { params(_: Time).returns(Time) }
        def expected_funds_settlement_at=(_)
        end

        # The settlement schedule the transfer is expected to follow. This expectation
        #   takes into account the `effective_date`, `submitted_at`, and the amount of the
        #   transfer.
        sig { returns(Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule::TaggedSymbol) }
        def expected_settlement_schedule
        end

        sig do
          params(_: Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule::TaggedSymbol)
            .returns(Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule::TaggedSymbol)
        end
        def expected_settlement_schedule=(_)
        end

        # When the ACH transfer was sent to FedACH.
        sig { returns(Time) }
        def submitted_at
        end

        sig { params(_: Time).returns(Time) }
        def submitted_at=(_)
        end

        # A 15 digit number recorded in the Nacha file and transmitted to the receiving
        #   bank. Along with the amount, date, and originating routing number, this can be
        #   used to identify the ACH transfer at the receiving bank. ACH trace numbers are
        #   not unique, but are
        #   [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
        sig { returns(String) }
        def trace_number
        end

        sig { params(_: String).returns(String) }
        def trace_number=(_)
        end

        # After the transfer is submitted to FedACH, this will contain supplemental
        #   details. Increase batches transfers and submits a file to the Federal Reserve
        #   roughly every 30 minutes. The Federal Reserve processes ACH transfers during
        #   weekdays according to their
        #   [posted schedule](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
        sig do
          params(
            effective_date: Date,
            expected_funds_settlement_at: Time,
            expected_settlement_schedule: Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule::TaggedSymbol,
            submitted_at: Time,
            trace_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                expected_settlement_schedule: Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule::TaggedSymbol,
                submitted_at: Time,
                trace_number: String
              }
            )
        end
        def to_hash
        end

        # The settlement schedule the transfer is expected to follow. This expectation
        #   takes into account the `effective_date`, `submitted_at`, and the amount of the
        #   transfer.
        module ExpectedSettlementSchedule
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule::TaggedSymbol) }

          # The transfer is expected to settle same-day.
          SAME_DAY =
            T.let(:same_day, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule::TaggedSymbol)

          # The transfer is expected to settle on a future date.
          FUTURE_DATED =
            T.let(:future_dated, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule::TaggedSymbol)
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `ach_transfer`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransfer::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ACHTransfer::Type::TaggedSymbol) }

        ACH_TRANSFER = T.let(:ach_transfer, Increase::Models::ACHTransfer::Type::TaggedSymbol)
      end
    end
  end
end
