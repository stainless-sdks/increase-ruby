# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef769be81797d2294154bd7914f39e1686 < BaseModel
      # @!attribute [rw] change_code
      #   The reason for the notification of change.
      #   @return [Symbol]
      required :change_code,
               Increase::Enum.new(
                 :incorrect_account_number,
                 :incorrect_routing_number,
                 :incorrect_routing_number_and_account_number,
                 :incorrect_transaction_code,
                 :incorrect_account_number_and_transaction_code,
                 :incorrect_routing_number_account_number_and_transaction_code,
                 :incorrect_receiving_depository_financial_institution_identification,
                 :incorrect_individual_identification_number,
                 :addenda_format_error,
                 :incorrect_standard_entry_class_code_for_outbound_international_payment,
                 :misrouted_notification_of_change,
                 :incorrect_trace_number,
                 :incorrect_company_identification_number,
                 :incorrect_identification_number,
                 :incorrectly_formatted_corrected_data,
                 :incorrect_discretionary_data,
                 :routing_number_not_from_original_entry_detail_record,
                 :depository_financial_institution_account_number_not_from_original_entry_detail_record,
                 :incorrect_transaction_code_by_originating_depository_financial_institution
               )

      # @!attribute [rw] corrected_data
      #   The corrected data that should be used in future ACHs to this account. This may contain the suggested new  account number or routing number. When the `change_code` is `incorrect_transaction_code`, this field contains an integer. Numbers starting with a 2 encourage changing the `funding` parameter to checking; numbers starting with a 3 encourage changing to savings.
      #   @return [String]
      required :corrected_data, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the notification occurred.
      #   @return [String]
      required :created_at, String
    end
  end
end
