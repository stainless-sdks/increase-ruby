# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda < BaseModel
      # @!attribute [rw] ach_decline
      #   An ACH Decline object. This field will be present in the JSON response if and only if `category` is equal to `ach_decline`.
      #   @return [Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::ACHDecline]
      required :ach_decline,
               -> { Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::ACHDecline }

      # @!attribute [rw] card_decline
      #   A Card Decline object. This field will be present in the JSON response if and only if `category` is equal to `card_decline`.
      #   @return [Increase::Models::UnnamedSchemaRef38185a6a1fb3bdd620641e2f3919b443]
      required :card_decline, -> { Increase::Models::UnnamedSchemaRef38185a6a1fb3bdd620641e2f3919b443 }

      # @!attribute [rw] category
      #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
      #   @return [Symbol]
      required :category,
               Increase::Enum.new(
                 :ach_decline,
                 :card_decline,
                 :check_decline,
                 :inbound_real_time_payments_transfer_decline,
                 :international_ach_decline,
                 :wire_decline,
                 :check_deposit_rejection,
                 :other
               )

      # @!attribute [rw] check_decline
      #   A Check Decline object. This field will be present in the JSON response if and only if `category` is equal to `check_decline`.
      #   @return [Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::CheckDecline]
      required :check_decline,
               -> { Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::CheckDecline }

      # @!attribute [rw] check_deposit_rejection
      #   A Check Deposit Rejection object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_rejection`.
      #   @return [Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::CheckDepositRejection]
      required :check_deposit_rejection,
               -> { Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::CheckDepositRejection }

      # @!attribute [rw] inbound_real_time_payments_transfer_decline
      #   An Inbound Real-Time Payments Transfer Decline object. This field will be present in the JSON response if and only if `category` is equal to `inbound_real_time_payments_transfer_decline`.
      #   @return [Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::InboundRealTimePaymentsTransferDecline]
      required :inbound_real_time_payments_transfer_decline,
               -> { Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::InboundRealTimePaymentsTransferDecline }

      # @!attribute [rw] international_ach_decline
      #   An International ACH Decline object. This field will be present in the JSON response if and only if `category` is equal to `international_ach_decline`.
      #   @return [Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::InternationalACHDecline]
      required :international_ach_decline,
               -> { Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::InternationalACHDecline }

      # @!attribute [rw] wire_decline
      #   A Wire Decline object. This field will be present in the JSON response if and only if `category` is equal to `wire_decline`.
      #   @return [Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::WireDecline]
      required :wire_decline,
               -> { Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda::WireDecline }

      class ACHDecline < BaseModel
        # @!attribute [rw] id
        #   The ACH Decline's identifier.
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] inbound_ach_transfer_id
        #   The identifier of the Inbound ACH Transfer object associated with this decline.
        #   @return [String]
        required :inbound_ach_transfer_id, String

        # @!attribute [rw] originator_company_descriptive_date
        #   The descriptive date of the transfer.
        #   @return [String]
        required :originator_company_descriptive_date, String

        # @!attribute [rw] originator_company_discretionary_data
        #   The additional information included with the transfer.
        #   @return [String]
        required :originator_company_discretionary_data, String

        # @!attribute [rw] originator_company_id
        #   The identifier of the company that initiated the transfer.
        #   @return [String]
        required :originator_company_id, String

        # @!attribute [rw] originator_company_name
        #   The name of the company that initiated the transfer.
        #   @return [String]
        required :originator_company_name, String

        # @!attribute [rw] reason
        #   Why the ACH transfer was declined.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :ach_route_canceled,
                   :ach_route_disabled,
                   :breaches_limit,
                   :credit_entry_refused_by_receiver,
                   :duplicate_return,
                   :entity_not_active,
                   :group_locked,
                   :insufficient_funds,
                   :misrouted_return,
                   :return_of_erroneous_or_reversing_debit,
                   :no_ach_route,
                   :originator_request,
                   :transaction_not_allowed,
                   :user_initiated
                 )

        # @!attribute [rw] receiver_id_number
        #   The id of the receiver of the transfer.
        #   @return [String]
        required :receiver_id_number, String

        # @!attribute [rw] receiver_name
        #   The name of the receiver of the transfer.
        #   @return [String]
        required :receiver_name, String

        # @!attribute [rw] trace_number
        #   The trace number of the transfer.
        #   @return [String]
        required :trace_number, String

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `ach_decline`.
        #   @return [Symbol]
        required :type, Increase::Enum.new(:ach_decline)
      end

      class CheckDecline < BaseModel
        # @!attribute [rw] amount
        #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] auxiliary_on_us
        #   A computer-readable number printed on the MICR line of business checks, usually the check number. This is useful for positive pay checks, but can be unreliably transmitted by the bank of first deposit.
        #   @return [String]
        required :auxiliary_on_us, String

        # @!attribute [rw] back_image_file_id
        #   The identifier of the API File object containing an image of the back of the declined check.
        #   @return [String]
        required :back_image_file_id, String

        # @!attribute [rw] check_transfer_id
        #   The identifier of the Check Transfer object associated with this decline.
        #   @return [String]
        required :check_transfer_id, String

        # @!attribute [rw] front_image_file_id
        #   The identifier of the API File object containing an image of the front of the declined check.
        #   @return [String]
        required :front_image_file_id, String

        # @!attribute [rw] inbound_check_deposit_id
        #   The identifier of the Inbound Check Deposit object associated with this decline.
        #   @return [String]
        required :inbound_check_deposit_id, String

        # @!attribute [rw] reason
        #   Why the check was declined.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :ach_route_disabled,
                   :ach_route_canceled,
                   :altered_or_fictitious,
                   :breaches_limit,
                   :entity_not_active,
                   :group_locked,
                   :insufficient_funds,
                   :stop_payment_requested,
                   :duplicate_presentment,
                   :not_authorized,
                   :amount_mismatch,
                   :not_our_item,
                   :no_account_number_found,
                   :refer_to_image,
                   :unable_to_process,
                   :user_initiated
                 )
      end

      class CheckDepositRejection < BaseModel
        # @!attribute [rw] amount
        #   The rejected amount in the minor unit of check's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] check_deposit_id
        #   The identifier of the Check Deposit that was rejected.
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] reason
        #   Why the check deposit was rejected.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :incomplete_image,
                   :duplicate,
                   :poor_image_quality,
                   :incorrect_amount,
                   :incorrect_recipient,
                   :not_eligible_for_mobile_deposit,
                   :missing_required_data_elements,
                   :suspected_fraud,
                   :deposit_window_expired,
                   :unknown
                 )

        # @!attribute [rw] rejected_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was rejected.
        #   @return [String]
        required :rejected_at, String
      end

      class InboundRealTimePaymentsTransferDecline < BaseModel
        # @!attribute [rw] amount
        #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] creditor_name
        #   The name the sender of the transfer specified as the recipient of the transfer.
        #   @return [String]
        required :creditor_name, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] debtor_account_number
        #   The account number of the account that sent the transfer.
        #   @return [String]
        required :debtor_account_number, String

        # @!attribute [rw] debtor_name
        #   The name provided by the sender of the transfer.
        #   @return [String]
        required :debtor_name, String

        # @!attribute [rw] debtor_routing_number
        #   The routing number of the account that sent the transfer.
        #   @return [String]
        required :debtor_routing_number, String

        # @!attribute [rw] reason
        #   Why the transfer was declined.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :account_number_canceled,
                   :account_number_disabled,
                   :account_restricted,
                   :group_locked,
                   :entity_not_active,
                   :real_time_payments_not_enabled
                 )

        # @!attribute [rw] remittance_information
        #   Additional information included with the transfer.
        #   @return [String]
        required :remittance_information, String

        # @!attribute [rw] transaction_identification
        #   The Real-Time Payments network identification of the declined transfer.
        #   @return [String]
        required :transaction_identification, String
      end

      class InternationalACHDecline < BaseModel
        # @!attribute [rw] amount
        #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] destination_country_code
        #   The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the destination country.
        #   @return [String]
        required :destination_country_code, String

        # @!attribute [rw] destination_currency_code
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code for the destination bank account.
        #   @return [String]
        required :destination_currency_code, String

        # @!attribute [rw] foreign_exchange_indicator
        #   A description of how the foreign exchange rate was calculated.
        #   @return [Symbol]
        required :foreign_exchange_indicator,
                 Increase::Enum.new(:fixed_to_variable, :variable_to_fixed, :fixed_to_fixed)

        # @!attribute [rw] foreign_exchange_reference
        #   Depending on the `foreign_exchange_reference_indicator`, an exchange rate or a reference to a well-known rate.
        #   @return [String]
        required :foreign_exchange_reference, String

        # @!attribute [rw] foreign_exchange_reference_indicator
        #   An instruction of how to interpret the `foreign_exchange_reference` field for this Transaction.
        #   @return [Symbol]
        required :foreign_exchange_reference_indicator,
                 Increase::Enum.new(:foreign_exchange_rate, :foreign_exchange_reference_number, :blank)

        # @!attribute [rw] foreign_payment_amount
        #   The amount in the minor unit of the foreign payment currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :foreign_payment_amount, Integer

        # @!attribute [rw] foreign_trace_number
        #   A reference number in the foreign banking infrastructure.
        #   @return [String]
        required :foreign_trace_number, String

        # @!attribute [rw] international_transaction_type_code
        #   The type of transfer. Set by the originator.
        #   @return [Symbol]
        required :international_transaction_type_code,
                 Increase::Enum.new(
                   :annuity,
                   :business_or_commercial,
                   :deposit,
                   :loan,
                   :miscellaneous,
                   :mortgage,
                   :pension,
                   :remittance,
                   :rent_or_lease,
                   :salary_or_payroll,
                   :tax,
                   :accounts_receivable,
                   :back_office_conversion,
                   :machine_transfer,
                   :point_of_purchase,
                   :point_of_sale,
                   :represented_check,
                   :shared_network_transaction,
                   :telphone_initiated,
                   :internet_initiated
                 )

        # @!attribute [rw] originating_currency_code
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code for the originating bank account.
        #   @return [String]
        required :originating_currency_code, String

        # @!attribute [rw] originating_depository_financial_institution_branch_country
        #   The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the originating branch country.
        #   @return [String]
        required :originating_depository_financial_institution_branch_country, String

        # @!attribute [rw] originating_depository_financial_institution_id
        #   An identifier for the originating bank. One of an International Bank Account Number (IBAN) bank identifier, SWIFT Bank Identification Code (BIC), or a domestic identifier like a US Routing Number.
        #   @return [String]
        required :originating_depository_financial_institution_id, String

        # @!attribute [rw] originating_depository_financial_institution_id_qualifier
        #   An instruction of how to interpret the `originating_depository_financial_institution_id` field for this Transaction.
        #   @return [Symbol]
        required :originating_depository_financial_institution_id_qualifier,
                 Increase::Enum.new(:national_clearing_system_number, :bic_code, :iban)

        # @!attribute [rw] originating_depository_financial_institution_name
        #   The name of the originating bank. Sometimes this will refer to an American bank and obscure the correspondent foreign bank.
        #   @return [String]
        required :originating_depository_financial_institution_name, String

        # @!attribute [rw] originator_city
        #   A portion of the originator address. This may be incomplete.
        #   @return [String]
        required :originator_city, String

        # @!attribute [rw] originator_company_entry_description
        #   A description field set by the originator.
        #   @return [String]
        required :originator_company_entry_description, String

        # @!attribute [rw] originator_country
        #   A portion of the originator address. The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the originator country.
        #   @return [String]
        required :originator_country, String

        # @!attribute [rw] originator_identification
        #   An identifier for the originating company. This is generally stable across multiple ACH transfers.
        #   @return [String]
        required :originator_identification, String

        # @!attribute [rw] originator_name
        #   Either the name of the originator or an intermediary money transmitter.
        #   @return [String]
        required :originator_name, String

        # @!attribute [rw] originator_postal_code
        #   A portion of the originator address. This may be incomplete.
        #   @return [String]
        required :originator_postal_code, String

        # @!attribute [rw] originator_state_or_province
        #   A portion of the originator address. This may be incomplete.
        #   @return [String]
        required :originator_state_or_province, String

        # @!attribute [rw] originator_street_address
        #   A portion of the originator address. This may be incomplete.
        #   @return [String]
        required :originator_street_address, String

        # @!attribute [rw] payment_related_information
        #   A description field set by the originator.
        #   @return [String]
        required :payment_related_information, String

        # @!attribute [rw] payment_related_information2
        #   A description field set by the originator.
        #   @return [String]
        required :payment_related_information2, String

        # @!attribute [rw] receiver_city
        #   A portion of the receiver address. This may be incomplete.
        #   @return [String]
        required :receiver_city, String

        # @!attribute [rw] receiver_country
        #   A portion of the receiver address. The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the receiver country.
        #   @return [String]
        required :receiver_country, String

        # @!attribute [rw] receiver_identification_number
        #   An identification number the originator uses for the receiver.
        #   @return [String]
        required :receiver_identification_number, String

        # @!attribute [rw] receiver_postal_code
        #   A portion of the receiver address. This may be incomplete.
        #   @return [String]
        required :receiver_postal_code, String

        # @!attribute [rw] receiver_state_or_province
        #   A portion of the receiver address. This may be incomplete.
        #   @return [String]
        required :receiver_state_or_province, String

        # @!attribute [rw] receiver_street_address
        #   A portion of the receiver address. This may be incomplete.
        #   @return [String]
        required :receiver_street_address, String

        # @!attribute [rw] receiving_company_or_individual_name
        #   The name of the receiver of the transfer. This is not verified by Increase.
        #   @return [String]
        required :receiving_company_or_individual_name, String

        # @!attribute [rw] receiving_depository_financial_institution_country
        #   The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the receiving bank country.
        #   @return [String]
        required :receiving_depository_financial_institution_country, String

        # @!attribute [rw] receiving_depository_financial_institution_id
        #   An identifier for the receiving bank. One of an International Bank Account Number (IBAN) bank identifier, SWIFT Bank Identification Code (BIC), or a domestic identifier like a US Routing Number.
        #   @return [String]
        required :receiving_depository_financial_institution_id, String

        # @!attribute [rw] receiving_depository_financial_institution_id_qualifier
        #   An instruction of how to interpret the `originating_depository_financial_institution_id` field for this Transaction.
        #   @return [Symbol]
        required :receiving_depository_financial_institution_id_qualifier,
                 Increase::Enum.new(:national_clearing_system_number, :bic_code, :iban)

        # @!attribute [rw] receiving_depository_financial_institution_name
        #   The name of the receiving bank, as set by the sending financial institution.
        #   @return [String]
        required :receiving_depository_financial_institution_name, String

        # @!attribute [rw] trace_number
        #   A 15 digit number recorded in the Nacha file and available to both the originating and receiving bank. Along with the amount, date, and originating routing number, this can be used to identify the ACH transfer at either bank. ACH trace numbers are not unique, but are [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
        #   @return [String]
        required :trace_number, String
      end

      class WireDecline < BaseModel
        # @!attribute [rw] inbound_wire_transfer_id
        #   The identifier of the Inbound Wire Transfer that was declined.
        #   @return [String]
        required :inbound_wire_transfer_id, String

        # @!attribute [rw] reason
        #   Why the wire transfer was declined.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :account_number_canceled,
                   :account_number_disabled,
                   :entity_not_active,
                   :group_locked,
                   :no_account_number,
                   :transaction_not_allowed
                 )
      end
    end
  end
end
