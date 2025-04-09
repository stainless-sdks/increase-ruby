# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ACHPrenotifications#create
    class ACHPrenotificationCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute routing_number
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute [r] addendum
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/addendum
      #
      #   @return [String, nil]
      optional :addendum, String

      # @!parse
      #   # @return [String]
      #   attr_writer :addendum

      # @!attribute [r] company_descriptive_date
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/company_descriptive_date
      #
      #   @return [String, nil]
      optional :company_descriptive_date, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_descriptive_date

      # @!attribute [r] company_discretionary_data
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/company_discretionary_data
      #
      #   @return [String, nil]
      optional :company_discretionary_data, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_discretionary_data

      # @!attribute [r] company_entry_description
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/company_entry_description
      #
      #   @return [String, nil]
      optional :company_entry_description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_entry_description

      # @!attribute [r] company_name
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/company_name
      #
      #   @return [String, nil]
      optional :company_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_name

      # @!attribute [r] credit_debit_indicator
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/credit_debit_indicator
      #
      #   @return [Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator, nil]
      optional :credit_debit_indicator,
               enum: -> { Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator }

      # @!parse
      #   # @return [Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator]
      #   attr_writer :credit_debit_indicator

      # @!attribute [r] effective_date
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/effective_date
      #
      #   @return [Date, nil]
      optional :effective_date, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :effective_date

      # @!attribute [r] individual_id
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/individual_id
      #
      #   @return [String, nil]
      optional :individual_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :individual_id

      # @!attribute [r] individual_name
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/individual_name
      #
      #   @return [String, nil]
      optional :individual_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :individual_name

      # @!attribute [r] standard_entry_class_code
      #   #/components/schemas/create_an_ach_prenotification_parameters/properties/standard_entry_class_code
      #
      #   @return [Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode, nil]
      optional :standard_entry_class_code,
               enum: -> { Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode }

      # @!parse
      #   # @return [Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode]
      #   attr_writer :standard_entry_class_code

      # @!parse
      #   # @param account_id [String]
      #   # @param account_number [String]
      #   # @param routing_number [String]
      #   # @param addendum [String]
      #   # @param company_descriptive_date [String]
      #   # @param company_discretionary_data [String]
      #   # @param company_entry_description [String]
      #   # @param company_name [String]
      #   # @param credit_debit_indicator [Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator]
      #   # @param effective_date [Date]
      #   # @param individual_id [String]
      #   # @param individual_name [String]
      #   # @param standard_entry_class_code [Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id:,
      #     account_number:,
      #     routing_number:,
      #     addendum: nil,
      #     company_descriptive_date: nil,
      #     company_discretionary_data: nil,
      #     company_entry_description: nil,
      #     company_name: nil,
      #     credit_debit_indicator: nil,
      #     effective_date: nil,
      #     individual_id: nil,
      #     individual_name: nil,
      #     standard_entry_class_code: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/credit_debit_indicator
      module CreditDebitIndicator
        extend Increase::Internal::Type::Enum

        # The Prenotification is for an anticipated credit.
        CREDIT = :credit

        # The Prenotification is for an anticipated debit.
        DEBIT = :debit

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/standard_entry_class_code
      module StandardEntryClassCode
        extend Increase::Internal::Type::Enum

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
