# typed: strong

module Increase
  module Models
    module Simulations
      class ACHTransferCreateNotificationOfChangeParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

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

        sig do
          params(
            change_code: Symbol,
            corrected_data: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(change_code:, corrected_data:, request_options: {})
        end

        sig do
          override.returns(
            {
              change_code: Symbol,
              corrected_data: String,
              request_options: Increase::RequestOptions
            }
          )
        end
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
