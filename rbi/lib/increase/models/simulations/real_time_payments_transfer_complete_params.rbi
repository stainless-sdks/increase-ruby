# typed: strong

module Increase
  module Models
    module Simulations
      class RealTimePaymentsTransferCompleteParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # If set, the simulation will reject the transfer.
        sig { returns(T.nilable(Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection)) }
        def rejection
        end

        sig do
          params(_: Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection)
            .returns(Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection)
        end
        def rejection=(_)
        end

        sig do
          params(
            rejection: Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(rejection: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                rejection: Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Rejection < Increase::BaseModel
          # The reason code that the simulated rejection will have.
          sig { returns(Symbol) }
          def reject_reason_code
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reject_reason_code=(_)
          end

          # If set, the simulation will reject the transfer.
          sig { params(reject_reason_code: Symbol).returns(T.attached_class) }
          def self.new(reject_reason_code:)
          end

          sig { override.returns({reject_reason_code: Symbol}) }
          def to_hash
          end

          # The reason code that the simulated rejection will have.
          class RejectReasonCode < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The destination account is closed. Corresponds to the Real-Time Payments reason code `AC04`.
            ACCOUNT_CLOSED = :account_closed

            # The destination account is currently blocked from receiving transactions. Corresponds to the Real-Time Payments reason code `AC06`.
            ACCOUNT_BLOCKED = :account_blocked

            # The destination account is ineligible to receive Real-Time Payments transfers. Corresponds to the Real-Time Payments reason code `AC14`.
            INVALID_CREDITOR_ACCOUNT_TYPE = :invalid_creditor_account_type

            # The destination account does not exist. Corresponds to the Real-Time Payments reason code `AC03`.
            INVALID_CREDITOR_ACCOUNT_NUMBER = :invalid_creditor_account_number

            # The destination routing number is invalid. Corresponds to the Real-Time Payments reason code `RC04`.
            INVALID_CREDITOR_FINANCIAL_INSTITUTION_IDENTIFIER = :invalid_creditor_financial_institution_identifier

            # The destination account holder is deceased. Corresponds to the Real-Time Payments reason code `MD07`.
            END_CUSTOMER_DECEASED = :end_customer_deceased

            # The reason is provided as narrative information in the additional information field.
            NARRATIVE = :narrative

            # Real-Time Payments transfers are not allowed to the destination account. Corresponds to the Real-Time Payments reason code `AG01`.
            TRANSACTION_FORBIDDEN = :transaction_forbidden

            # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `AG03`.
            TRANSACTION_TYPE_NOT_SUPPORTED = :transaction_type_not_supported

            # The amount of the transfer is different than expected by the recipient. Corresponds to the Real-Time Payments reason code `AM09`.
            UNEXPECTED_AMOUNT = :unexpected_amount

            # The amount is higher than the recipient is authorized to send or receive. Corresponds to the Real-Time Payments reason code `AM14`.
            AMOUNT_EXCEEDS_BANK_LIMITS = :amount_exceeds_bank_limits

            # The creditor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE04`.
            INVALID_CREDITOR_ADDRESS = :invalid_creditor_address

            # The specified creditor is unknown. Corresponds to the Real-Time Payments reason code `BE06`.
            UNKNOWN_END_CUSTOMER = :unknown_end_customer

            # The debtor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE07`.
            INVALID_DEBTOR_ADDRESS = :invalid_debtor_address

            # There was a timeout processing the transfer. Corresponds to the Real-Time Payments reason code `DS24`.
            TIMEOUT = :timeout

            # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `NOAT`.
            UNSUPPORTED_MESSAGE_FOR_RECIPIENT = :unsupported_message_for_recipient

            # The destination financial institution is currently not connected to Real-Time Payments. Corresponds to the Real-Time Payments reason code `9912`.
            RECIPIENT_CONNECTION_NOT_AVAILABLE = :recipient_connection_not_available

            # Real-Time Payments is currently unavailable. Corresponds to the Real-Time Payments reason code `9948`.
            REAL_TIME_PAYMENTS_SUSPENDED = :real_time_payments_suspended

            # The destination financial institution is currently signed off of Real-Time Payments. Corresponds to the Real-Time Payments reason code `9910`.
            INSTRUCTED_AGENT_SIGNED_OFF = :instructed_agent_signed_off

            # The transfer was rejected due to an internal Increase issue. We have been notified.
            PROCESSING_ERROR = :processing_error

            # Some other error or issue has occurred.
            OTHER = :other
          end
        end
      end
    end
  end
end
