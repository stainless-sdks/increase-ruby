# frozen_string_literal: true

module Increase
  module Models
    class InboundInternationalACHTransfer < BaseModel
      # @!attribute [rw] amount
      #   The amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
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
      #   An instruction of how to interpret the `receiving_depository_financial_institution_id` field for this Transaction.
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

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_international_ach_transfer`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_international_ach_transfer)
    end
  end
end
