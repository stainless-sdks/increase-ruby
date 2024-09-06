# frozen_string_literal: true

module Increase
  module Models
    class InboundACHTransfer < BaseModel
      # @!attribute [rw] id
      #   The inbound ACH transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] acceptance
      #   If your transfer is accepted, this will contain details of the acceptance.
      #   @return [Increase::Models::InboundACHTransfer::Acceptance]
      required :acceptance, -> { Increase::Models::InboundACHTransfer::Acceptance }

      # @!attribute [rw] account_id
      #   The Account to which the transfer belongs.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number_id
      #   The identifier of the Account Number to which this transfer was sent.
      #   @return [String]
      required :account_number_id, String

      # @!attribute [rw] addenda
      #   Additional information sent from the originator.
      #   @return [Increase::Models::InboundACHTransfer::Addenda]
      required :addenda, -> { Increase::Models::InboundACHTransfer::Addenda }

      # @!attribute [rw] amount
      #   The transfer amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] automatically_resolves_at
      #   The time at which the transfer will be automatically resolved.
      #   @return [String]
      required :automatically_resolves_at, String

      # @!attribute [rw] decline
      #   If your transfer is declined, this will contain details of the decline.
      #   @return [Increase::Models::InboundACHTransfer::Decline]
      required :decline, -> { Increase::Models::InboundACHTransfer::Decline }

      # @!attribute [rw] direction
      #   The direction of the transfer.
      #   @return [Symbol]
      required :direction, Increase::Enum.new(:credit, :debit)

      # @!attribute [rw] expected_settlement_schedule
      #   The settlement schedule the transfer is expected to follow.
      #   @return [Symbol]
      required :expected_settlement_schedule, Increase::Enum.new(:same_day, :future_dated)

      # @!attribute [rw] international_addenda
      #   If the Inbound ACH Transfer has a Standard Entry Class Code of IAT, this will contain fields pertaining to the International ACH Transaction.
      #   @return [Increase::Models::InboundACHTransfer::InternationalAddenda]
      required :international_addenda, -> { Increase::Models::InboundACHTransfer::InternationalAddenda }

      # @!attribute [rw] notification_of_change
      #   If you initiate a notification of change in response to the transfer, this will contain its details.
      #   @return [Increase::Models::InboundACHTransfer::NotificationOfChange]
      required :notification_of_change, -> { Increase::Models::InboundACHTransfer::NotificationOfChange }

      # @!attribute [rw] originator_company_descriptive_date
      #   The descriptive date of the transfer.
      #   @return [String]
      required :originator_company_descriptive_date, String

      # @!attribute [rw] originator_company_discretionary_data
      #   The additional information included with the transfer.
      #   @return [String]
      required :originator_company_discretionary_data, String

      # @!attribute [rw] originator_company_entry_description
      #   The description of the transfer.
      #   @return [String]
      required :originator_company_entry_description, String

      # @!attribute [rw] originator_company_id
      #   The id of the company that initiated the transfer.
      #   @return [String]
      required :originator_company_id, String

      # @!attribute [rw] originator_company_name
      #   The name of the company that initiated the transfer.
      #   @return [String]
      required :originator_company_name, String

      # @!attribute [rw] originator_routing_number
      #   The American Banking Association (ABA) routing number of the bank originating the transfer.
      #   @return [String]
      required :originator_routing_number, String

      # @!attribute [rw] receiver_id_number
      #   The id of the receiver of the transfer.
      #   @return [String]
      required :receiver_id_number, String

      # @!attribute [rw] receiver_name
      #   The name of the receiver of the transfer.
      #   @return [String]
      required :receiver_name, String

      # @!attribute [rw] standard_entry_class_code
      #   The Standard Entry Class (SEC) code of the transfer.
      #   @return [Symbol]
      required :standard_entry_class_code,
               Increase::Enum.new(
                 :corporate_credit_or_debit,
                 :corporate_trade_exchange,
                 :prearranged_payments_and_deposit,
                 :internet_initiated,
                 :point_of_sale,
                 :telephone_initiated,
                 :customer_initiated,
                 :accounts_receivable,
                 :machine_transfer,
                 :shared_network_transaction,
                 :represented_check,
                 :back_office_conversion,
                 :point_of_purchase,
                 :check_truncation,
                 :destroyed_check,
                 :international_ach_transaction
               )

      # @!attribute [rw] status
      #   The status of the transfer.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :declined, :accepted, :returned)

      # @!attribute [rw] trace_number
      #   The trace number of the transfer.
      #   @return [String]
      required :trace_number, String

      # @!attribute [rw] transfer_return
      #   If your transfer is returned, this will contain details of the return.
      #   @return [Increase::Models::InboundACHTransfer::TransferReturn]
      required :transfer_return, -> { Increase::Models::InboundACHTransfer::TransferReturn }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_ach_transfer`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_ach_transfer)

      class Acceptance < BaseModel
        # @!attribute [rw] accepted_at
        #   The time at which the transfer was accepted.
        #   @return [String]
        required :accepted_at, String

        # @!attribute [rw] transaction_id
        #   The id of the transaction for the accepted transfer.
        #   @return [String]
        required :transaction_id, String
      end

      class Addenda < BaseModel
        # @!attribute [rw] category
        #   The type of addendum.
        #   @return [Symbol]
        required :category, Increase::Enum.new(:freeform)

        # @!attribute [rw] freeform
        #   Unstructured `payment_related_information` passed through by the originator.
        #   @return [Increase::Models::InboundACHTransfer::Addenda::Freeform]
        required :freeform, -> { Increase::Models::InboundACHTransfer::Addenda::Freeform }

        class Freeform < BaseModel
          # @!attribute [rw] entries
          #   Each entry represents an addendum received from the originator.
          #   @return [Array<Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry>]
          required :entries,
                   Increase::ArrayOf.new(-> { Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry })

          class Entry < BaseModel
            # @!attribute [rw] payment_related_information
            #   The payment related information passed in the addendum.
            #   @return [String]
            required :payment_related_information, String
          end
        end
      end

      class Decline < BaseModel
        # @!attribute [rw] declined_at
        #   The time at which the transfer was declined.
        #   @return [String]
        required :declined_at, String

        # @!attribute [rw] declined_transaction_id
        #   The id of the transaction for the declined transfer.
        #   @return [String]
        required :declined_transaction_id, String

        # @!attribute [rw] reason
        #   The reason for the transfer decline.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :ach_route_canceled,
                   :ach_route_disabled,
                   :breaches_limit,
                   :credit_entry_refused_by_receiver,
                   :duplicate_return,
                   :entity_not_active,
                   :field_error,
                   :group_locked,
                   :insufficient_funds,
                   :misrouted_return,
                   :return_of_erroneous_or_reversing_debit,
                   :no_ach_route,
                   :originator_request,
                   :transaction_not_allowed,
                   :user_initiated
                 )
      end

      class InternationalAddenda < BaseModel
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
      end

      class NotificationOfChange < BaseModel
        # @!attribute [rw] updated_account_number
        #   The new account number provided in the notification of change.
        #   @return [String]
        required :updated_account_number, String

        # @!attribute [rw] updated_routing_number
        #   The new account number provided in the notification of change.
        #   @return [String]
        required :updated_routing_number, String
      end

      class TransferReturn < BaseModel
        # @!attribute [rw] reason
        #   The reason for the transfer return.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :insufficient_funds,
                   :returned_per_odfi_request,
                   :authorization_revoked_by_customer,
                   :payment_stopped,
                   :customer_advised_unauthorized_improper_ineligible_or_incomplete,
                   :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
                   :beneficiary_or_account_holder_deceased,
                   :credit_entry_refused_by_receiver,
                   :duplicate_entry,
                   :corporate_customer_advised_not_authorized
                 )

        # @!attribute [rw] returned_at
        #   The time at which the transfer was returned.
        #   @return [String]
        required :returned_at, String

        # @!attribute [rw] transaction_id
        #   The id of the transaction for the returned transfer.
        #   @return [String]
        required :transaction_id, String
      end
    end
  end
end
