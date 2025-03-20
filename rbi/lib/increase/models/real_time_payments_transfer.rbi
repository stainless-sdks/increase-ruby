# typed: strong

module Increase
  module Models
    class RealTimePaymentsTransfer < Increase::BaseModel
      # The Real-Time Payments Transfer's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The Account from which the transfer was sent.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # If the transfer is acknowledged by the recipient bank, this will contain
      #   supplemental details.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement)) }
      def acknowledgement
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement))
      end
      def acknowledgement=(_)
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
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval))
      end
      def approval=(_)
      end

      # If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation))
      end
      def cancellation=(_)
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
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy))
      end
      def created_by=(_)
      end

      # The name of the transfer's recipient. This is set by the sender when creating
      #   the transfer.
      sig { returns(String) }
      def creditor_name
      end

      sig { params(_: String).returns(String) }
      def creditor_name=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For real-time payments transfers this is always equal to `USD`.
      sig { returns(Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol)
          .returns(Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # The name of the transfer's sender. If not provided, defaults to the name of the
      #   account's entity.
      sig { returns(T.nilable(String)) }
      def debtor_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def debtor_name=(_)
      end

      # The destination account number.
      sig { returns(String) }
      def destination_account_number
      end

      sig { params(_: String).returns(String) }
      def destination_account_number=(_)
      end

      # The destination American Bankers' Association (ABA) Routing Transit Number
      #   (RTN).
      sig { returns(String) }
      def destination_routing_number
      end

      sig { params(_: String).returns(String) }
      def destination_routing_number=(_)
      end

      # The identifier of the External Account the transfer was made to, if any.
      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_account_id=(_)
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

      # If the transfer is rejected by Real-Time Payments or the destination financial
      #   institution, this will contain supplemental details.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection)) }
      def rejection
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection))
      end
      def rejection=(_)
      end

      # Unstructured information that will show on the recipient's bank statement.
      sig { returns(String) }
      def remittance_information
      end

      sig { params(_: String).returns(String) }
      def remittance_information=(_)
      end

      # The Account Number the recipient will see as having sent the transfer.
      sig { returns(String) }
      def source_account_number_id
      end

      sig { params(_: String).returns(String) }
      def source_account_number_id=(_)
      end

      # The lifecycle status of the transfer.
      sig { returns(Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)
          .returns(Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # After the transfer is submitted to Real-Time Payments, this will contain
      #   supplemental details.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission))
      end
      def submission=(_)
      end

      # The Transaction funding the transfer once it is complete.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `real_time_payments_transfer`.
      sig { returns(Increase::Models::RealTimePaymentsTransfer::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::RealTimePaymentsTransfer::Type::TaggedSymbol)
          .returns(Increase::Models::RealTimePaymentsTransfer::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # The name of the ultimate recipient of the transfer. Set this if the creditor is
      #   an intermediary receiving the payment for someone else.
      sig { returns(T.nilable(String)) }
      def ultimate_creditor_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_creditor_name=(_)
      end

      # The name of the ultimate sender of the transfer. Set this if the funds are being
      #   sent on behalf of someone who is not the account holder at Increase.
      sig { returns(T.nilable(String)) }
      def ultimate_debtor_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_debtor_name=(_)
      end

      # Real-Time Payments transfers move funds, within seconds, between your Increase
      #   account and any other account on the Real-Time Payments network.
      sig do
        params(
          id: String,
          account_id: String,
          acknowledgement: T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement),
          amount: Integer,
          approval: T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval),
          cancellation: T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation),
          created_at: Time,
          created_by: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy),
          creditor_name: String,
          currency: Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol,
          debtor_name: T.nilable(String),
          destination_account_number: String,
          destination_routing_number: String,
          external_account_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          pending_transaction_id: T.nilable(String),
          rejection: T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection),
          remittance_information: String,
          source_account_number_id: String,
          status: Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol,
          submission: T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission),
          transaction_id: T.nilable(String),
          type: Increase::Models::RealTimePaymentsTransfer::Type::TaggedSymbol,
          ultimate_creditor_name: T.nilable(String),
          ultimate_debtor_name: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        acknowledgement:,
        amount:,
        approval:,
        cancellation:,
        created_at:,
        created_by:,
        creditor_name:,
        currency:,
        debtor_name:,
        destination_account_number:,
        destination_routing_number:,
        external_account_id:,
        idempotency_key:,
        pending_transaction_id:,
        rejection:,
        remittance_information:,
        source_account_number_id:,
        status:,
        submission:,
        transaction_id:,
        type:,
        ultimate_creditor_name:,
        ultimate_debtor_name:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              acknowledgement: T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement),
              amount: Integer,
              approval: T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval),
              cancellation: T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation),
              created_at: Time,
              created_by: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy),
              creditor_name: String,
              currency: Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol,
              debtor_name: T.nilable(String),
              destination_account_number: String,
              destination_routing_number: String,
              external_account_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              pending_transaction_id: T.nilable(String),
              rejection: T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection),
              remittance_information: String,
              source_account_number_id: String,
              status: Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol,
              submission: T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission),
              transaction_id: T.nilable(String),
              type: Increase::Models::RealTimePaymentsTransfer::Type::TaggedSymbol,
              ultimate_creditor_name: T.nilable(String),
              ultimate_debtor_name: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class Acknowledgement < Increase::BaseModel
        # When the transfer was acknowledged.
        sig { returns(Time) }
        def acknowledged_at
        end

        sig { params(_: Time).returns(Time) }
        def acknowledged_at=(_)
        end

        # If the transfer is acknowledged by the recipient bank, this will contain
        #   supplemental details.
        sig { params(acknowledged_at: Time).returns(T.attached_class) }
        def self.new(acknowledged_at:)
        end

        sig { override.returns({acknowledged_at: Time}) }
        def to_hash
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
        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey))
            .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey))
        end
        def api_key=(_)
        end

        # The type of object that created this transfer.
        sig { returns(Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol)
            .returns(Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol)
        end
        def category=(_)
        end

        # If present, details about the OAuth Application that created the transfer.
        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication))
            .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        # If present, details about the User that created the transfer.
        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User))
            .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        # What object created the transfer, either via the API or the dashboard.
        sig do
          params(
            api_key: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey),
            category: Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol,
            oauth_application: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User)
          )
            .returns(T.attached_class)
        end
        def self.new(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override
            .returns(
              {
                api_key: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey),
                category: Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol,
                oauth_application: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication),
                user: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User)
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

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol) }

          # An API key. Details will be under the `api_key` object.
          API_KEY = T.let(:api_key, Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol)

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION =
            T.let(:oauth_application, Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol)

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = T.let(:user, Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category::TaggedSymbol)
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
      #   currency. For real-time payments transfers this is always equal to `USD`.
      module Currency
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimePaymentsTransfer::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::RealTimePaymentsTransfer::Currency::TaggedSymbol)
      end

      class Rejection < Increase::BaseModel
        # Additional information about the rejection provided by the recipient bank when
        #   the `reject_reason_code` is `NARRATIVE`.
        sig { returns(T.nilable(String)) }
        def reject_reason_additional_information
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reject_reason_additional_information=(_)
        end

        # The reason the transfer was rejected as provided by the recipient bank or the
        #   Real-Time Payments network.
        sig { returns(Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol) }
        def reject_reason_code
        end

        sig do
          params(_: Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol)
            .returns(Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol)
        end
        def reject_reason_code=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was rejected.
        sig { returns(T.nilable(Time)) }
        def rejected_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def rejected_at=(_)
        end

        # If the transfer is rejected by Real-Time Payments or the destination financial
        #   institution, this will contain supplemental details.
        sig do
          params(
            reject_reason_additional_information: T.nilable(String),
            reject_reason_code: Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol,
            rejected_at: T.nilable(Time)
          )
            .returns(T.attached_class)
        end
        def self.new(reject_reason_additional_information:, reject_reason_code:, rejected_at:)
        end

        sig do
          override
            .returns(
              {
                reject_reason_additional_information: T.nilable(String),
                reject_reason_code: Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol,
                rejected_at: T.nilable(Time)
              }
            )
        end
        def to_hash
        end

        # The reason the transfer was rejected as provided by the recipient bank or the
        #   Real-Time Payments network.
        module RejectReasonCode
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol) }

          # The destination account is closed. Corresponds to the Real-Time Payments reason code `AC04`.
          ACCOUNT_CLOSED =
            T.let(
              :account_closed,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The destination account is currently blocked from receiving transactions. Corresponds to the Real-Time Payments reason code `AC06`.
          ACCOUNT_BLOCKED =
            T.let(
              :account_blocked,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The destination account is ineligible to receive Real-Time Payments transfers. Corresponds to the Real-Time Payments reason code `AC14`.
          INVALID_CREDITOR_ACCOUNT_TYPE =
            T.let(
              :invalid_creditor_account_type,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The destination account does not exist. Corresponds to the Real-Time Payments reason code `AC03`.
          INVALID_CREDITOR_ACCOUNT_NUMBER =
            T.let(
              :invalid_creditor_account_number,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The destination routing number is invalid. Corresponds to the Real-Time Payments reason code `RC04`.
          INVALID_CREDITOR_FINANCIAL_INSTITUTION_IDENTIFIER =
            T.let(
              :invalid_creditor_financial_institution_identifier,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The destination account holder is deceased. Corresponds to the Real-Time Payments reason code `MD07`.
          END_CUSTOMER_DECEASED =
            T.let(
              :end_customer_deceased,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The reason is provided as narrative information in the additional information field.
          NARRATIVE =
            T.let(:narrative, Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol)

          # Real-Time Payments transfers are not allowed to the destination account. Corresponds to the Real-Time Payments reason code `AG01`.
          TRANSACTION_FORBIDDEN =
            T.let(
              :transaction_forbidden,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `AG03`.
          TRANSACTION_TYPE_NOT_SUPPORTED =
            T.let(
              :transaction_type_not_supported,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The amount of the transfer is different than expected by the recipient. Corresponds to the Real-Time Payments reason code `AM09`.
          UNEXPECTED_AMOUNT =
            T.let(
              :unexpected_amount,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The amount is higher than the recipient is authorized to send or receive. Corresponds to the Real-Time Payments reason code `AM14`.
          AMOUNT_EXCEEDS_BANK_LIMITS =
            T.let(
              :amount_exceeds_bank_limits,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The creditor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE04`.
          INVALID_CREDITOR_ADDRESS =
            T.let(
              :invalid_creditor_address,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The specified creditor is unknown. Corresponds to the Real-Time Payments reason code `BE06`.
          UNKNOWN_END_CUSTOMER =
            T.let(
              :unknown_end_customer,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The debtor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE07`.
          INVALID_DEBTOR_ADDRESS =
            T.let(
              :invalid_debtor_address,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # There was a timeout processing the transfer. Corresponds to the Real-Time Payments reason code `DS24`.
          TIMEOUT =
            T.let(:timeout, Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol)

          # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `NOAT`.
          UNSUPPORTED_MESSAGE_FOR_RECIPIENT =
            T.let(
              :unsupported_message_for_recipient,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The destination financial institution is currently not connected to Real-Time Payments. Corresponds to the Real-Time Payments reason code `9912`.
          RECIPIENT_CONNECTION_NOT_AVAILABLE =
            T.let(
              :recipient_connection_not_available,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # Real-Time Payments is currently unavailable. Corresponds to the Real-Time Payments reason code `9948`.
          REAL_TIME_PAYMENTS_SUSPENDED =
            T.let(
              :real_time_payments_suspended,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The destination financial institution is currently signed off of Real-Time Payments. Corresponds to the Real-Time Payments reason code `9910`.
          INSTRUCTED_AGENT_SIGNED_OFF =
            T.let(
              :instructed_agent_signed_off,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # The transfer was rejected due to an internal Increase issue. We have been notified.
          PROCESSING_ERROR =
            T.let(
              :processing_error,
              Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol
            )

          # Some other error or issue has occurred.
          OTHER =
            T.let(:other, Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode::TaggedSymbol)
        end
      end

      # The lifecycle status of the transfer.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimePaymentsTransfer::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol) }

        # The transfer is pending approval.
        PENDING_APPROVAL =
          T.let(:pending_approval, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer has been canceled.
        CANCELED = T.let(:canceled, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer is pending review by Increase.
        PENDING_REVIEWING =
          T.let(:pending_reviewing, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION =
          T.let(:requires_attention, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer was rejected by the network or the recipient's bank.
        REJECTED = T.let(:rejected, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer is queued to be submitted to Real-Time Payments.
        PENDING_SUBMISSION =
          T.let(:pending_submission, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer has been submitted and is pending a response from Real-Time Payments.
        SUBMITTED = T.let(:submitted, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer has been sent successfully and is complete.
        COMPLETE = T.let(:complete, Increase::Models::RealTimePaymentsTransfer::Status::TaggedSymbol)
      end

      class Submission < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was submitted to The Clearing House.
        sig { returns(T.nilable(Time)) }
        def submitted_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def submitted_at=(_)
        end

        # The Real-Time Payments network identification of the transfer.
        sig { returns(String) }
        def transaction_identification
        end

        sig { params(_: String).returns(String) }
        def transaction_identification=(_)
        end

        # After the transfer is submitted to Real-Time Payments, this will contain
        #   supplemental details.
        sig do
          params(submitted_at: T.nilable(Time), transaction_identification: String).returns(T.attached_class)
        end
        def self.new(submitted_at:, transaction_identification:)
        end

        sig { override.returns({submitted_at: T.nilable(Time), transaction_identification: String}) }
        def to_hash
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `real_time_payments_transfer`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimePaymentsTransfer::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::RealTimePaymentsTransfer::Type::TaggedSymbol) }

        REAL_TIME_PAYMENTS_TRANSFER =
          T.let(:real_time_payments_transfer, Increase::Models::RealTimePaymentsTransfer::Type::TaggedSymbol)
      end
    end
  end
end
