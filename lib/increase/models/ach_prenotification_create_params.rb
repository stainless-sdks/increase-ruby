# frozen_string_literal: true

module Increase
  module Models
    class ACHPrenotificationCreateParams < Increase::BaseModel
      # @!attribute account_id
      #   The Increase identifier for the account that will send the transfer.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number
      #   The account number for the destination account.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the destination account.
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute addendum
      #   Additional information that will be sent to the recipient.
      #
      #   @return [String]
      optional :addendum, String

      # @!attribute company_descriptive_date
      #   The description of the date of the transfer.
      #
      #   @return [String]
      optional :company_descriptive_date, String

      # @!attribute company_discretionary_data
      #   The data you choose to associate with the transfer.
      #
      #   @return [String]
      optional :company_discretionary_data, String

      # @!attribute company_entry_description
      #   The description of the transfer you wish to be shown to the recipient.
      #
      #   @return [String]
      optional :company_entry_description, String

      # @!attribute company_name
      #   The name by which the recipient knows you.
      #
      #   @return [String]
      optional :company_name, String

      # @!attribute credit_debit_indicator
      #   Whether the Prenotification is for a future debit or credit.
      #
      #   @return [Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator]
      optional :credit_debit_indicator,
               enum: -> { Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator }

      # @!attribute effective_date
      #   The transfer effective date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      #
      #   @return [Date]
      optional :effective_date, Date

      # @!attribute individual_id
      #   Your identifier for the transfer recipient.
      #
      #   @return [String]
      optional :individual_id, String

      # @!attribute individual_name
      #   The name of the transfer recipient. This value is information and not verified by the recipient's bank.
      #
      #   @return [String]
      optional :individual_name, String

      # @!attribute standard_entry_class_code
      #   The Standard Entry Class (SEC) code to use for the ACH Prenotification.
      #
      #   @return [Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode]
      optional :standard_entry_class_code,
               enum: -> { Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode }

      # @!parse
      #   # @param account_id [String] The Increase identifier for the account that will send the transfer.
      #   #
      #   # @param account_number [String] The account number for the destination account.
      #   #
      #   # @param routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   #   destination account.
      #   #
      #   # @param addendum [String] Additional information that will be sent to the recipient.
      #   #
      #   # @param company_descriptive_date [String] The description of the date of the transfer.
      #   #
      #   # @param company_discretionary_data [String] The data you choose to associate with the transfer.
      #   #
      #   # @param company_entry_description [String] The description of the transfer you wish to be shown to the recipient.
      #   #
      #   # @param company_name [String] The name by which the recipient knows you.
      #   #
      #   # @param credit_debit_indicator [String] Whether the Prenotification is for a future debit or credit.
      #   #
      #   # @param effective_date [String] The transfer effective date in
      #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      #   #
      #   # @param individual_id [String] Your identifier for the transfer recipient.
      #   #
      #   # @param individual_name [String] The name of the transfer recipient. This value is information and not verified
      #   #   by the recipient's bank.
      #   #
      #   # @param standard_entry_class_code [String] The Standard Entry Class (SEC) code to use for the ACH Prenotification.
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
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # Whether the Prenotification is for a future debit or credit.
      #
      # @example
      #
      # ```ruby
      # case credit_debit_indicator
      # in :credit
      #   # ...
      # in :debit
      #   # ...
      # end
      # ```
      class CreditDebitIndicator < Increase::Enum
        # The Prenotification is for an anticipated credit.
        CREDIT = :credit

        # The Prenotification is for an anticipated debit.
        DEBIT = :debit

        finalize!
      end

      # The Standard Entry Class (SEC) code to use for the ACH Prenotification.
      #
      # @example
      #
      # ```ruby
      # case standard_entry_class_code
      # in :corporate_credit_or_debit
      #   # ...
      # in :corporate_trade_exchange
      #   # ...
      # in :prearranged_payments_and_deposit
      #   # ...
      # in :internet_initiated
      #   # ...
      # end
      # ```
      class StandardEntryClassCode < Increase::Enum
        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        finalize!
      end
    end
  end
end
