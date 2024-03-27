# frozen_string_literal: true

module Increase
  module Models
    class DeclinedTransaction
      class ACHDecline
        class ACHDecline
          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] originator_company_descriptive_date
          required :originator_company_descriptive_date, String

          # @!attribute [rw] originator_company_discretionary_data
          required :originator_company_discretionary_data, String

          # @!attribute [rw] originator_company_id
          required :originator_company_id, String

          # @!attribute [rw] originator_company_name
          required :originator_company_name, String

          # @!attribute [rw] reason
          required :reason,
                   Increase::Enum.new(
                     [
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
                     ]
                   )

          # @!attribute [rw] receiver_id_number
          required :receiver_id_number, String

          # @!attribute [rw] receiver_name
          required :receiver_name, String

          # @!attribute [rw] trace_number
          required :trace_number, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:ach_decline])
        end

        class Visa
          class Visa
            class Visa
              extend Increase::Model

              include Increase::Model::Instance

              # @!attribute [rw] electronic_commerce_indicator
              required :electronic_commerce_indicator,
                       Increase::Enum.new(
                         [
                           :mail_phone_order,
                           :recurring,
                           :installment,
                           :unknown_mail_phone_order,
                           :secure_electronic_commerce,
                           :non_authenticated_security_transaction_at_3ds_capable_merchant,
                           :non_authenticated_security_transaction,
                           :non_secure_transaction
                         ]
                       )

              # @!attribute [rw] point_of_service_entry_mode
              required :point_of_service_entry_mode,
                       Increase::Enum.new(
                         [
                           :unknown,
                           :manual,
                           :magnetic_stripe_no_cvv,
                           :optical_code,
                           :integrated_circuit_card,
                           :contactless,
                           :credential_on_file,
                           :magnetic_stripe,
                           :contactless_magnetic_stripe,
                           :integrated_circuit_card_no_cvv
                         ]
                       )
            end

            extend Increase::Model

            include Increase::Model::Instance

            # @!attribute [rw] category
            required :category, Increase::Enum.new([:visa])

            # @!attribute [rw] visa
            required :visa,
                     lambda {
                       Increase::Models::DeclinedTransaction::ACHDecline::Visa::Visa::Visa
                     }
          end

          class NetworkIdentifiers
            extend Increase::Model

            include Increase::Model::Instance

            # @!attribute [rw] retrieval_reference_number
            required :retrieval_reference_number, String

            # @!attribute [rw] trace_number
            required :trace_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end

          class CardVerificationCode
            class CardVerificationCode
              extend Increase::Model

              include Increase::Model::Instance

              # @!attribute [rw] result
              required :result,
                       Increase::Enum.new([:not_checked, :match, :no_match])
            end

            class CardholderAddress
              extend Increase::Model

              include Increase::Model::Instance

              # @!attribute [rw] actual_line1
              required :actual_line1, String

              # @!attribute [rw] actual_postal_code
              required :actual_postal_code, String

              # @!attribute [rw] provided_line1
              required :provided_line1, String

              # @!attribute [rw] provided_postal_code
              required :provided_postal_code, String

              # @!attribute [rw] result
              required :result,
                       Increase::Enum.new(
                         [
                           :not_checked,
                           :postal_code_match_address_not_checked,
                           :postal_code_match_address_no_match,
                           :postal_code_no_match_address_match,
                           :match,
                           :no_match
                         ]
                       )
            end

            extend Increase::Model

            include Increase::Model::Instance

            # @!attribute [rw] card_verification_code
            required :card_verification_code,
                     lambda {
                       Increase::Models::DeclinedTransaction::ACHDecline::Visa::CardVerificationCode::CardVerificationCode
                     }

            # @!attribute [rw] cardholder_address
            required :cardholder_address,
                     lambda {
                       Increase::Models::DeclinedTransaction::ACHDecline::Visa::CardVerificationCode::CardholderAddress
                     }
          end

          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] actioner
          required :actioner, Increase::Enum.new([:user, :increase, :network])

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] card_payment_id
          required :card_payment_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] digital_wallet_token_id
          required :digital_wallet_token_id, String

          # @!attribute [rw] merchant_acceptor_id
          required :merchant_acceptor_id, String

          # @!attribute [rw] merchant_category_code
          required :merchant_category_code, String

          # @!attribute [rw] merchant_city
          required :merchant_city, String

          # @!attribute [rw] merchant_country
          required :merchant_country, String

          # @!attribute [rw] merchant_descriptor
          required :merchant_descriptor, String

          # @!attribute [rw] merchant_state
          required :merchant_state, String

          # @!attribute [rw] network_details
          required :network_details,
                   lambda {
                     Increase::Models::DeclinedTransaction::ACHDecline::Visa::Visa
                   }

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::DeclinedTransaction::ACHDecline::Visa::NetworkIdentifiers
                   }

          # @!attribute [rw] network_risk_score
          required :network_risk_score, Integer

          # @!attribute [rw] physical_card_id
          required :physical_card_id, String

          # @!attribute [rw] processing_category
          required :processing_category,
                   Increase::Enum.new(
                     [
                       :account_funding,
                       :automatic_fuel_dispenser,
                       :bill_payment,
                       :purchase,
                       :quasi_cash,
                       :refund
                     ]
                   )

          # @!attribute [rw] real_time_decision_id
          required :real_time_decision_id, String

          # @!attribute [rw] reason
          required :reason,
                   Increase::Enum.new(
                     [
                       :card_not_active,
                       :physical_card_not_active,
                       :entity_not_active,
                       :group_locked,
                       :insufficient_funds,
                       :cvv2_mismatch,
                       :transaction_not_allowed,
                       :breaches_limit,
                       :webhook_declined,
                       :webhook_timed_out,
                       :declined_by_stand_in_processing,
                       :invalid_physical_card,
                       :missing_original_authorization,
                       :suspected_fraud
                     ]
                   )

          # @!attribute [rw] verification
          required :verification,
                   lambda {
                     Increase::Models::DeclinedTransaction::ACHDecline::Visa::CardVerificationCode
                   }
        end

        class CheckDecline
          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] auxiliary_on_us
          required :auxiliary_on_us, String

          # @!attribute [rw] back_image_file_id
          required :back_image_file_id, String

          # @!attribute [rw] front_image_file_id
          required :front_image_file_id, String

          # @!attribute [rw] reason
          required :reason,
                   Increase::Enum.new(
                     [
                       :ach_route_disabled,
                       :ach_route_canceled,
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
                       :unable_to_process
                     ]
                   )
        end

        class InboundRealTimePaymentsTransferDecline
          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] creditor_name
          required :creditor_name, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] debtor_account_number
          required :debtor_account_number, String

          # @!attribute [rw] debtor_name
          required :debtor_name, String

          # @!attribute [rw] debtor_routing_number
          required :debtor_routing_number, String

          # @!attribute [rw] reason
          required :reason,
                   Increase::Enum.new(
                     [
                       :account_number_canceled,
                       :account_number_disabled,
                       :account_restricted,
                       :group_locked,
                       :entity_not_active,
                       :real_time_payments_not_enabled
                     ]
                   )

          # @!attribute [rw] remittance_information
          required :remittance_information, String

          # @!attribute [rw] transaction_identification
          required :transaction_identification, String
        end

        class InternationalACHDecline
          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] destination_country_code
          required :destination_country_code, String

          # @!attribute [rw] destination_currency_code
          required :destination_currency_code, String

          # @!attribute [rw] foreign_exchange_indicator
          required :foreign_exchange_indicator,
                   Increase::Enum.new(
                     [
                       :fixed_to_variable,
                       :variable_to_fixed,
                       :fixed_to_fixed
                     ]
                   )

          # @!attribute [rw] foreign_exchange_reference
          required :foreign_exchange_reference, String

          # @!attribute [rw] foreign_exchange_reference_indicator
          required :foreign_exchange_reference_indicator,
                   Increase::Enum.new(
                     [
                       :foreign_exchange_rate,
                       :foreign_exchange_reference_number,
                       :blank
                     ]
                   )

          # @!attribute [rw] foreign_payment_amount
          required :foreign_payment_amount, Integer

          # @!attribute [rw] foreign_trace_number
          required :foreign_trace_number, String

          # @!attribute [rw] international_transaction_type_code
          required :international_transaction_type_code,
                   Increase::Enum.new(
                     [
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
                     ]
                   )

          # @!attribute [rw] originating_currency_code
          required :originating_currency_code, String

          # @!attribute [rw] originating_depository_financial_institution_branch_country
          required :originating_depository_financial_institution_branch_country, String

          # @!attribute [rw] originating_depository_financial_institution_id
          required :originating_depository_financial_institution_id, String

          # @!attribute [rw] originating_depository_financial_institution_id_qualifier
          required :originating_depository_financial_institution_id_qualifier,
                   Increase::Enum.new(
                     [
                       :national_clearing_system_number,
                       :bic_code,
                       :iban
                     ]
                   )

          # @!attribute [rw] originating_depository_financial_institution_name
          required :originating_depository_financial_institution_name, String

          # @!attribute [rw] originator_city
          required :originator_city, String

          # @!attribute [rw] originator_company_entry_description
          required :originator_company_entry_description, String

          # @!attribute [rw] originator_country
          required :originator_country, String

          # @!attribute [rw] originator_identification
          required :originator_identification, String

          # @!attribute [rw] originator_name
          required :originator_name, String

          # @!attribute [rw] originator_postal_code
          required :originator_postal_code, String

          # @!attribute [rw] originator_state_or_province
          required :originator_state_or_province, String

          # @!attribute [rw] originator_street_address
          required :originator_street_address, String

          # @!attribute [rw] payment_related_information
          required :payment_related_information, String

          # @!attribute [rw] payment_related_information2
          required :payment_related_information2, String

          # @!attribute [rw] receiver_city
          required :receiver_city, String

          # @!attribute [rw] receiver_country
          required :receiver_country, String

          # @!attribute [rw] receiver_identification_number
          required :receiver_identification_number, String

          # @!attribute [rw] receiver_postal_code
          required :receiver_postal_code, String

          # @!attribute [rw] receiver_state_or_province
          required :receiver_state_or_province, String

          # @!attribute [rw] receiver_street_address
          required :receiver_street_address, String

          # @!attribute [rw] receiving_company_or_individual_name
          required :receiving_company_or_individual_name, String

          # @!attribute [rw] receiving_depository_financial_institution_country
          required :receiving_depository_financial_institution_country, String

          # @!attribute [rw] receiving_depository_financial_institution_id
          required :receiving_depository_financial_institution_id, String

          # @!attribute [rw] receiving_depository_financial_institution_id_qualifier
          required :receiving_depository_financial_institution_id_qualifier,
                   Increase::Enum.new(
                     [
                       :national_clearing_system_number,
                       :bic_code,
                       :iban
                     ]
                   )

          # @!attribute [rw] receiving_depository_financial_institution_name
          required :receiving_depository_financial_institution_name, String

          # @!attribute [rw] trace_number
          required :trace_number, String
        end

        class WireDecline
          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] inbound_wire_transfer_id
          required :inbound_wire_transfer_id, String

          # @!attribute [rw] reason
          required :reason,
                   Increase::Enum.new(
                     [
                       :account_number_canceled,
                       :account_number_disabled,
                       :entity_not_active,
                       :group_locked,
                       :no_account_number,
                       :transaction_not_allowed
                     ]
                   )
        end

        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] ach_decline
        required :ach_decline,
                 lambda {
                   Increase::Models::DeclinedTransaction::ACHDecline::ACHDecline
                 }

        # @!attribute [rw] card_decline
        required :card_decline, -> { Increase::Models::DeclinedTransaction::ACHDecline::Visa }

        # @!attribute [rw] category
        required :category,
                 Increase::Enum.new(
                   [
                     :ach_decline,
                     :card_decline,
                     :check_decline,
                     :inbound_real_time_payments_transfer_decline,
                     :international_ach_decline,
                     :wire_decline,
                     :other
                   ]
                 )

        # @!attribute [rw] check_decline
        required :check_decline,
                 lambda {
                   Increase::Models::DeclinedTransaction::ACHDecline::CheckDecline
                 }

        # @!attribute [rw] inbound_real_time_payments_transfer_decline
        required :inbound_real_time_payments_transfer_decline,
                 lambda {
                   Increase::Models::DeclinedTransaction::ACHDecline::InboundRealTimePaymentsTransferDecline
                 }

        # @!attribute [rw] international_ach_decline
        required :international_ach_decline,
                 lambda {
                   Increase::Models::DeclinedTransaction::ACHDecline::InternationalACHDecline
                 }

        # @!attribute [rw] wire_decline
        required :wire_decline,
                 lambda {
                   Increase::Models::DeclinedTransaction::ACHDecline::WireDecline
                 }
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] route_id
      required :route_id, String

      # @!attribute [rw] route_type
      required :route_type, Increase::Enum.new([:account_number, :card])

      # @!attribute [rw] source
      required :source, -> { Increase::Models::DeclinedTransaction::ACHDecline }

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:declined_transaction])
    end
  end
end
