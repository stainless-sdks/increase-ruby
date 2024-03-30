# frozen_string_literal: true

module Increase
  module Models
    class Transaction < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] route_id
      required :route_id, String

      # @!attribute [rw] route_type
      required :route_type, Increase::Enum.new(:account_number, :card)

      # @!attribute [rw] source
      required :source, -> { Increase::Models::Transaction::Source }

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:transaction)

      class Source < BaseModel
        # @!attribute [rw] account_transfer_intention
        required :account_transfer_intention,
                 lambda {
                   Increase::Models::Transaction::Source::AccountTransferIntention
                 }

        # @!attribute [rw] ach_transfer_intention
        required :ach_transfer_intention,
                 lambda {
                   Increase::Models::Transaction::Source::ACHTransferIntention
                 }

        # @!attribute [rw] ach_transfer_rejection
        required :ach_transfer_rejection,
                 lambda {
                   Increase::Models::Transaction::Source::ACHTransferRejection
                 }

        # @!attribute [rw] ach_transfer_return
        required :ach_transfer_return, -> { Increase::Models::Transaction::Source::ACHTransferReturn }

        # @!attribute [rw] card_dispute_acceptance
        required :card_dispute_acceptance,
                 lambda {
                   Increase::Models::Transaction::Source::CardDisputeAcceptance
                 }

        # @!attribute [rw] card_refund
        required :card_refund, -> { Increase::Models::Transaction::Source::CardRefund }

        # @!attribute [rw] card_revenue_payment
        required :card_revenue_payment,
                 lambda {
                   Increase::Models::Transaction::Source::CardRevenuePayment
                 }

        # @!attribute [rw] card_settlement
        required :card_settlement, -> { Increase::Models::Transaction::Source::CardSettlement }

        # @!attribute [rw] category
        required :category,
                 Increase::Enum.new(
                   :account_transfer_intention,
                   :ach_transfer_intention,
                   :ach_transfer_rejection,
                   :ach_transfer_return,
                   :card_dispute_acceptance,
                   :card_refund,
                   :card_settlement,
                   :card_revenue_payment,
                   :check_deposit_acceptance,
                   :check_deposit_return,
                   :check_transfer_deposit,
                   :check_transfer_stop_payment_request,
                   :fee_payment,
                   :inbound_ach_transfer,
                   :inbound_ach_transfer_return_intention,
                   :inbound_check,
                   :inbound_international_ach_transfer,
                   :inbound_real_time_payments_transfer_confirmation,
                   :inbound_wire_drawdown_payment_reversal,
                   :inbound_wire_drawdown_payment,
                   :inbound_wire_reversal,
                   :inbound_wire_transfer,
                   :inbound_wire_transfer_reversal,
                   :interest_payment,
                   :internal_source,
                   :real_time_payments_transfer_acknowledgement,
                   :sample_funds,
                   :wire_transfer_intention,
                   :wire_transfer_rejection,
                   :other
                 )

        # @!attribute [rw] check_deposit_acceptance
        required :check_deposit_acceptance,
                 lambda {
                   Increase::Models::Transaction::Source::CheckDepositAcceptance
                 }

        # @!attribute [rw] check_deposit_return
        required :check_deposit_return,
                 lambda {
                   Increase::Models::Transaction::Source::CheckDepositReturn
                 }

        # @!attribute [rw] check_transfer_deposit
        required :check_transfer_deposit,
                 lambda {
                   Increase::Models::Transaction::Source::CheckTransferDeposit
                 }

        # @!attribute [rw] check_transfer_stop_payment_request
        required :check_transfer_stop_payment_request,
                 lambda {
                   Increase::Models::Transaction::Source::CheckTransferStopPaymentRequest
                 }

        # @!attribute [rw] fee_payment
        required :fee_payment, -> { Increase::Models::Transaction::Source::FeePayment }

        # @!attribute [rw] inbound_ach_transfer
        required :inbound_ach_transfer,
                 lambda {
                   Increase::Models::Transaction::Source::InboundACHTransfer
                 }

        # @!attribute [rw] inbound_check
        required :inbound_check, -> { Increase::Models::Transaction::Source::InboundCheck }

        # @!attribute [rw] inbound_international_ach_transfer
        required :inbound_international_ach_transfer,
                 lambda {
                   Increase::Models::Transaction::Source::InboundInternationalACHTransfer
                 }

        # @!attribute [rw] inbound_real_time_payments_transfer_confirmation
        required :inbound_real_time_payments_transfer_confirmation,
                 lambda {
                   Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation
                 }

        # @!attribute [rw] inbound_wire_drawdown_payment
        required :inbound_wire_drawdown_payment,
                 lambda {
                   Increase::Models::Transaction::Source::InboundWireDrawdownPayment
                 }

        # @!attribute [rw] inbound_wire_drawdown_payment_reversal
        required :inbound_wire_drawdown_payment_reversal,
                 lambda {
                   Increase::Models::Transaction::Source::InboundWireDrawdownPaymentReversal
                 }

        # @!attribute [rw] inbound_wire_reversal
        required :inbound_wire_reversal,
                 lambda {
                   Increase::Models::Transaction::Source::InboundWireReversal
                 }

        # @!attribute [rw] inbound_wire_transfer
        required :inbound_wire_transfer,
                 lambda {
                   Increase::Models::Transaction::Source::InboundWireTransfer
                 }

        # @!attribute [rw] interest_payment
        required :interest_payment, -> { Increase::Models::Transaction::Source::InterestPayment }

        # @!attribute [rw] internal_source
        required :internal_source, -> { Increase::Models::Transaction::Source::InternalSource }

        # @!attribute [rw] real_time_payments_transfer_acknowledgement
        required :real_time_payments_transfer_acknowledgement,
                 lambda {
                   Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement
                 }

        # @!attribute [rw] sample_funds
        required :sample_funds, -> { Increase::Models::Transaction::Source::SampleFunds }

        # @!attribute [rw] wire_transfer_intention
        required :wire_transfer_intention,
                 lambda {
                   Increase::Models::Transaction::Source::WireTransferIntention
                 }

        # @!attribute [rw] wire_transfer_rejection
        required :wire_transfer_rejection,
                 lambda {
                   Increase::Models::Transaction::Source::WireTransferRejection
                 }

        class AccountTransferIntention < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] description
          required :description, String

          # @!attribute [rw] destination_account_id
          required :destination_account_id, String

          # @!attribute [rw] source_account_id
          required :source_account_id, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class ACHTransferIntention < BaseModel
          # @!attribute [rw] account_number
          required :account_number, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] routing_number
          required :routing_number, String

          # @!attribute [rw] statement_descriptor
          required :statement_descriptor, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class ACHTransferRejection < BaseModel
          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class ACHTransferReturn < BaseModel
          # @!attribute [rw] created_at
          required :created_at, String

          # @!attribute [rw] raw_return_reason_code
          required :raw_return_reason_code, String

          # @!attribute [rw] return_reason_code
          required :return_reason_code,
                   Increase::Enum.new(
                     :insufficient_fund,
                     :no_account,
                     :account_closed,
                     :invalid_account_number_structure,
                     :account_frozen_entry_returned_per_ofac_instruction,
                     :credit_entry_refused_by_receiver,
                     :unauthorized_debit_to_consumer_account_using_corporate_sec_code,
                     :corporate_customer_advised_not_authorized,
                     :payment_stopped,
                     :non_transaction_account,
                     :uncollected_funds,
                     :routing_number_check_digit_error,
                     :customer_advised_unauthorized_improper_ineligible_or_incomplete,
                     :amount_field_error,
                     :authorization_revoked_by_customer,
                     :invalid_ach_routing_number,
                     :file_record_edit_criteria,
                     :enr_invalid_individual_name,
                     :returned_per_odfi_request,
                     :limited_participation_dfi,
                     :incorrectly_coded_outbound_international_payment,
                     :account_sold_to_another_dfi,
                     :addenda_error,
                     :beneficiary_or_account_holder_deceased,
                     :customer_advised_not_within_authorization_terms,
                     :corrected_return,
                     :duplicate_entry,
                     :duplicate_return,
                     :enr_duplicate_enrollment,
                     :enr_invalid_dfi_account_number,
                     :enr_invalid_individual_id_number,
                     :enr_invalid_representative_payee_indicator,
                     :enr_invalid_transaction_code,
                     :enr_return_of_enr_entry,
                     :enr_routing_number_check_digit_error,
                     :entry_not_processed_by_gateway,
                     :field_error,
                     :foreign_receiving_dfi_unable_to_settle,
                     :iat_entry_coding_error,
                     :improper_effective_entry_date,
                     :improper_source_document_source_document_presented,
                     :invalid_company_id,
                     :invalid_foreign_receiving_dfi_identification,
                     :invalid_individual_id_number,
                     :item_and_rck_entry_presented_for_payment,
                     :item_related_to_rck_entry_is_ineligible,
                     :mandatory_field_error,
                     :misrouted_dishonored_return,
                     :misrouted_return,
                     :no_errors_found,
                     :non_acceptance_of_r62_dishonored_return,
                     :non_participant_in_iat_program,
                     :permissible_return_entry,
                     :permissible_return_entry_not_accepted,
                     :rdfi_non_settlement,
                     :rdfi_participant_in_check_truncation_program,
                     :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
                     :return_not_a_duplicate,
                     :return_of_erroneous_or_reversing_debit,
                     :return_of_improper_credit_entry,
                     :return_of_improper_debit_entry,
                     :return_of_xck_entry,
                     :source_document_presented_for_payment,
                     :state_law_affecting_rck_acceptance,
                     :stop_payment_on_item_related_to_rck_entry,
                     :stop_payment_on_source_document,
                     :timely_original_return,
                     :trace_number_error,
                     :untimely_dishonored_return,
                     :untimely_return
                   )

          # @!attribute [rw] transaction_id
          required :transaction_id, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class CardDisputeAcceptance < BaseModel
          # @!attribute [rw] accepted_at
          required :accepted_at, String

          # @!attribute [rw] card_dispute_id
          required :card_dispute_id, String

          # @!attribute [rw] transaction_id
          required :transaction_id, String
        end

        class CardRefund < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] card_payment_id
          required :card_payment_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] merchant_acceptor_id
          required :merchant_acceptor_id, String

          # @!attribute [rw] merchant_category_code
          required :merchant_category_code, String

          # @!attribute [rw] merchant_city
          required :merchant_city, String

          # @!attribute [rw] merchant_country
          required :merchant_country, String

          # @!attribute [rw] merchant_name
          required :merchant_name, String

          # @!attribute [rw] merchant_state
          required :merchant_state, String

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers
                   }

          # @!attribute [rw] purchase_details
          required :purchase_details,
                   lambda {
                     Increase::Models::Transaction::Source::CardRefund::PurchaseDetails
                   }

          # @!attribute [rw] transaction_id
          required :transaction_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new(:card_refund)

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] acquirer_business_id
            required :acquirer_business_id, String

            # @!attribute [rw] acquirer_reference_number
            required :acquirer_reference_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end

          class PurchaseDetails < BaseModel
            # @!attribute [rw] car_rental
            required :car_rental,
                     lambda {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental
                     }

            # @!attribute [rw] customer_reference_identifier
            required :customer_reference_identifier, String

            # @!attribute [rw] local_tax_amount
            required :local_tax_amount, Integer

            # @!attribute [rw] local_tax_currency
            required :local_tax_currency, String

            # @!attribute [rw] lodging
            required :lodging,
                     lambda {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging
                     }

            # @!attribute [rw] national_tax_amount
            required :national_tax_amount, Integer

            # @!attribute [rw] national_tax_currency
            required :national_tax_currency, String

            # @!attribute [rw] purchase_identifier
            required :purchase_identifier, String

            # @!attribute [rw] purchase_identifier_format
            required :purchase_identifier_format,
                     Increase::Enum.new(
                       :free_text,
                       :order_number,
                       :rental_agreement_number,
                       :hotel_folio_number,
                       :invoice_number
                     )

            # @!attribute [rw] travel
            required :travel,
                     lambda {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel
                     }

            class CarRental < BaseModel
              # @!attribute [rw] car_class_code
              required :car_class_code, String

              # @!attribute [rw] checkout_date
              required :checkout_date, String

              # @!attribute [rw] daily_rental_rate_amount
              required :daily_rental_rate_amount, Integer

              # @!attribute [rw] daily_rental_rate_currency
              required :daily_rental_rate_currency, String

              # @!attribute [rw] days_rented
              required :days_rented, Integer

              # @!attribute [rw] extra_charges
              required :extra_charges,
                       Increase::Enum.new(
                         :no_extra_charge,
                         :gas,
                         :extra_mileage,
                         :late_return,
                         :one_way_service_fee,
                         :parking_violation
                       )

              # @!attribute [rw] fuel_charges_amount
              required :fuel_charges_amount, Integer

              # @!attribute [rw] fuel_charges_currency
              required :fuel_charges_currency, String

              # @!attribute [rw] insurance_charges_amount
              required :insurance_charges_amount, Integer

              # @!attribute [rw] insurance_charges_currency
              required :insurance_charges_currency, String

              # @!attribute [rw] no_show_indicator
              required :no_show_indicator,
                       Increase::Enum.new(:not_applicable, :no_show_for_specialized_vehicle)

              # @!attribute [rw] one_way_drop_off_charges_amount
              required :one_way_drop_off_charges_amount, Integer

              # @!attribute [rw] one_way_drop_off_charges_currency
              required :one_way_drop_off_charges_currency, String

              # @!attribute [rw] renter_name
              required :renter_name, String

              # @!attribute [rw] weekly_rental_rate_amount
              required :weekly_rental_rate_amount, Integer

              # @!attribute [rw] weekly_rental_rate_currency
              required :weekly_rental_rate_currency, String
            end

            class Lodging < BaseModel
              # @!attribute [rw] check_in_date
              required :check_in_date, String

              # @!attribute [rw] daily_room_rate_amount
              required :daily_room_rate_amount, Integer

              # @!attribute [rw] daily_room_rate_currency
              required :daily_room_rate_currency, String

              # @!attribute [rw] extra_charges
              required :extra_charges,
                       Increase::Enum.new(
                         :no_extra_charge,
                         :restaurant,
                         :gift_shop,
                         :mini_bar,
                         :telephone,
                         :other,
                         :laundry
                       )

              # @!attribute [rw] folio_cash_advances_amount
              required :folio_cash_advances_amount, Integer

              # @!attribute [rw] folio_cash_advances_currency
              required :folio_cash_advances_currency, String

              # @!attribute [rw] food_beverage_charges_amount
              required :food_beverage_charges_amount, Integer

              # @!attribute [rw] food_beverage_charges_currency
              required :food_beverage_charges_currency, String

              # @!attribute [rw] no_show_indicator
              required :no_show_indicator, Increase::Enum.new(:not_applicable, :no_show)

              # @!attribute [rw] prepaid_expenses_amount
              required :prepaid_expenses_amount, Integer

              # @!attribute [rw] prepaid_expenses_currency
              required :prepaid_expenses_currency, String

              # @!attribute [rw] room_nights
              required :room_nights, Integer

              # @!attribute [rw] total_room_tax_amount
              required :total_room_tax_amount, Integer

              # @!attribute [rw] total_room_tax_currency
              required :total_room_tax_currency, String

              # @!attribute [rw] total_tax_amount
              required :total_tax_amount, Integer

              # @!attribute [rw] total_tax_currency
              required :total_tax_currency, String
            end

            class Travel < BaseModel
              # @!attribute [rw] ancillary
              required :ancillary,
                       lambda {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary
                       }

              # @!attribute [rw] computerized_reservation_system
              required :computerized_reservation_system, String

              # @!attribute [rw] credit_reason_indicator
              required :credit_reason_indicator,
                       Increase::Enum.new(
                         :no_credit,
                         :passenger_transport_ancillary_purchase_cancellation,
                         :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                         :airline_ticket_cancellation,
                         :other,
                         :partial_refund_of_airline_ticket
                       )

              # @!attribute [rw] departure_date
              required :departure_date, String

              # @!attribute [rw] origination_city_airport_code
              required :origination_city_airport_code, String

              # @!attribute [rw] passenger_name
              required :passenger_name, String

              # @!attribute [rw] restricted_ticket_indicator
              required :restricted_ticket_indicator,
                       Increase::Enum.new(:no_restrictions, :restricted_non_refundable_ticket)

              # @!attribute [rw] ticket_change_indicator
              required :ticket_change_indicator,
                       Increase::Enum.new(:none, :change_to_existing_ticket, :new_ticket)

              # @!attribute [rw] ticket_number
              required :ticket_number, String

              # @!attribute [rw] travel_agency_code
              required :travel_agency_code, String

              # @!attribute [rw] travel_agency_name
              required :travel_agency_name, String

              # @!attribute [rw] trip_legs
              required :trip_legs,
                       Increase::ArrayOf.new(
                         lambda {
                           Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg
                         }
                       )

              class Ancillary < BaseModel
                # @!attribute [rw] connected_ticket_document_number
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                required :credit_reason_indicator,
                         Increase::Enum.new(
                           :no_credit,
                           :passenger_transport_ancillary_purchase_cancellation,
                           :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                           :other
                         )

                # @!attribute [rw] passenger_name_or_description
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                required :services,
                         Increase::ArrayOf.new(
                           lambda {
                             Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service
                           }
                         )

                # @!attribute [rw] ticket_document_number
                required :ticket_document_number, String

                class Service < BaseModel
                  # @!attribute [rw] category
                  required :category,
                           Increase::Enum.new(
                             :none,
                             :bundled_service,
                             :baggage_fee,
                             :change_fee,
                             :cargo,
                             :carbon_offset,
                             :frequent_flyer,
                             :gift_card,
                             :ground_transport,
                             :in_flight_entertainment,
                             :lounge,
                             :medical,
                             :meal_beverage,
                             :other,
                             :passenger_assist_fee,
                             :pets,
                             :seat_fees,
                             :standby,
                             :service_fee,
                             :store,
                             :travel_service,
                             :unaccompanied_travel,
                             :upgrades,
                             :wifi
                           )

                  # @!attribute [rw] sub_category
                  required :sub_category, String
                end
              end

              class TripLeg < BaseModel
                # @!attribute [rw] carrier_code
                required :carrier_code, String

                # @!attribute [rw] destination_city_airport_code
                required :destination_city_airport_code, String

                # @!attribute [rw] fare_basis_code
                required :fare_basis_code, String

                # @!attribute [rw] flight_number
                required :flight_number, String

                # @!attribute [rw] service_class
                required :service_class, String

                # @!attribute [rw] stop_over_code
                required :stop_over_code,
                         Increase::Enum.new(
                           :none,
                           :stop_over_allowed,
                           :stop_over_not_allowed
                         )
              end
            end
          end
        end

        class CardRevenuePayment < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] period_end
          required :period_end, String

          # @!attribute [rw] period_start
          required :period_start, String

          # @!attribute [rw] transacted_on_account_id
          required :transacted_on_account_id, String
        end

        class CardSettlement < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] card_authorization
          required :card_authorization, String

          # @!attribute [rw] card_payment_id
          required :card_payment_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] merchant_acceptor_id
          required :merchant_acceptor_id, String

          # @!attribute [rw] merchant_category_code
          required :merchant_category_code, String

          # @!attribute [rw] merchant_city
          required :merchant_city, String

          # @!attribute [rw] merchant_country
          required :merchant_country, String

          # @!attribute [rw] merchant_name
          required :merchant_name, String

          # @!attribute [rw] merchant_state
          required :merchant_state, String

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers
                   }

          # @!attribute [rw] pending_transaction_id
          required :pending_transaction_id, String

          # @!attribute [rw] presentment_amount
          required :presentment_amount, Integer

          # @!attribute [rw] presentment_currency
          required :presentment_currency, String

          # @!attribute [rw] purchase_details
          required :purchase_details,
                   lambda {
                     Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails
                   }

          # @!attribute [rw] transaction_id
          required :transaction_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new(:card_settlement)

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] acquirer_business_id
            required :acquirer_business_id, String

            # @!attribute [rw] acquirer_reference_number
            required :acquirer_reference_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end

          class PurchaseDetails < BaseModel
            # @!attribute [rw] car_rental
            required :car_rental,
                     lambda {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental
                     }

            # @!attribute [rw] customer_reference_identifier
            required :customer_reference_identifier, String

            # @!attribute [rw] local_tax_amount
            required :local_tax_amount, Integer

            # @!attribute [rw] local_tax_currency
            required :local_tax_currency, String

            # @!attribute [rw] lodging
            required :lodging,
                     lambda {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging
                     }

            # @!attribute [rw] national_tax_amount
            required :national_tax_amount, Integer

            # @!attribute [rw] national_tax_currency
            required :national_tax_currency, String

            # @!attribute [rw] purchase_identifier
            required :purchase_identifier, String

            # @!attribute [rw] purchase_identifier_format
            required :purchase_identifier_format,
                     Increase::Enum.new(
                       :free_text,
                       :order_number,
                       :rental_agreement_number,
                       :hotel_folio_number,
                       :invoice_number
                     )

            # @!attribute [rw] travel
            required :travel,
                     lambda {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel
                     }

            class CarRental < BaseModel
              # @!attribute [rw] car_class_code
              required :car_class_code, String

              # @!attribute [rw] checkout_date
              required :checkout_date, String

              # @!attribute [rw] daily_rental_rate_amount
              required :daily_rental_rate_amount, Integer

              # @!attribute [rw] daily_rental_rate_currency
              required :daily_rental_rate_currency, String

              # @!attribute [rw] days_rented
              required :days_rented, Integer

              # @!attribute [rw] extra_charges
              required :extra_charges,
                       Increase::Enum.new(
                         :no_extra_charge,
                         :gas,
                         :extra_mileage,
                         :late_return,
                         :one_way_service_fee,
                         :parking_violation
                       )

              # @!attribute [rw] fuel_charges_amount
              required :fuel_charges_amount, Integer

              # @!attribute [rw] fuel_charges_currency
              required :fuel_charges_currency, String

              # @!attribute [rw] insurance_charges_amount
              required :insurance_charges_amount, Integer

              # @!attribute [rw] insurance_charges_currency
              required :insurance_charges_currency, String

              # @!attribute [rw] no_show_indicator
              required :no_show_indicator,
                       Increase::Enum.new(:not_applicable, :no_show_for_specialized_vehicle)

              # @!attribute [rw] one_way_drop_off_charges_amount
              required :one_way_drop_off_charges_amount, Integer

              # @!attribute [rw] one_way_drop_off_charges_currency
              required :one_way_drop_off_charges_currency, String

              # @!attribute [rw] renter_name
              required :renter_name, String

              # @!attribute [rw] weekly_rental_rate_amount
              required :weekly_rental_rate_amount, Integer

              # @!attribute [rw] weekly_rental_rate_currency
              required :weekly_rental_rate_currency, String
            end

            class Lodging < BaseModel
              # @!attribute [rw] check_in_date
              required :check_in_date, String

              # @!attribute [rw] daily_room_rate_amount
              required :daily_room_rate_amount, Integer

              # @!attribute [rw] daily_room_rate_currency
              required :daily_room_rate_currency, String

              # @!attribute [rw] extra_charges
              required :extra_charges,
                       Increase::Enum.new(
                         :no_extra_charge,
                         :restaurant,
                         :gift_shop,
                         :mini_bar,
                         :telephone,
                         :other,
                         :laundry
                       )

              # @!attribute [rw] folio_cash_advances_amount
              required :folio_cash_advances_amount, Integer

              # @!attribute [rw] folio_cash_advances_currency
              required :folio_cash_advances_currency, String

              # @!attribute [rw] food_beverage_charges_amount
              required :food_beverage_charges_amount, Integer

              # @!attribute [rw] food_beverage_charges_currency
              required :food_beverage_charges_currency, String

              # @!attribute [rw] no_show_indicator
              required :no_show_indicator, Increase::Enum.new(:not_applicable, :no_show)

              # @!attribute [rw] prepaid_expenses_amount
              required :prepaid_expenses_amount, Integer

              # @!attribute [rw] prepaid_expenses_currency
              required :prepaid_expenses_currency, String

              # @!attribute [rw] room_nights
              required :room_nights, Integer

              # @!attribute [rw] total_room_tax_amount
              required :total_room_tax_amount, Integer

              # @!attribute [rw] total_room_tax_currency
              required :total_room_tax_currency, String

              # @!attribute [rw] total_tax_amount
              required :total_tax_amount, Integer

              # @!attribute [rw] total_tax_currency
              required :total_tax_currency, String
            end

            class Travel < BaseModel
              # @!attribute [rw] ancillary
              required :ancillary,
                       lambda {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary
                       }

              # @!attribute [rw] computerized_reservation_system
              required :computerized_reservation_system, String

              # @!attribute [rw] credit_reason_indicator
              required :credit_reason_indicator,
                       Increase::Enum.new(
                         :no_credit,
                         :passenger_transport_ancillary_purchase_cancellation,
                         :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                         :airline_ticket_cancellation,
                         :other,
                         :partial_refund_of_airline_ticket
                       )

              # @!attribute [rw] departure_date
              required :departure_date, String

              # @!attribute [rw] origination_city_airport_code
              required :origination_city_airport_code, String

              # @!attribute [rw] passenger_name
              required :passenger_name, String

              # @!attribute [rw] restricted_ticket_indicator
              required :restricted_ticket_indicator,
                       Increase::Enum.new(:no_restrictions, :restricted_non_refundable_ticket)

              # @!attribute [rw] ticket_change_indicator
              required :ticket_change_indicator,
                       Increase::Enum.new(:none, :change_to_existing_ticket, :new_ticket)

              # @!attribute [rw] ticket_number
              required :ticket_number, String

              # @!attribute [rw] travel_agency_code
              required :travel_agency_code, String

              # @!attribute [rw] travel_agency_name
              required :travel_agency_name, String

              # @!attribute [rw] trip_legs
              required :trip_legs,
                       Increase::ArrayOf.new(
                         lambda {
                           Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg
                         }
                       )

              class Ancillary < BaseModel
                # @!attribute [rw] connected_ticket_document_number
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                required :credit_reason_indicator,
                         Increase::Enum.new(
                           :no_credit,
                           :passenger_transport_ancillary_purchase_cancellation,
                           :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                           :other
                         )

                # @!attribute [rw] passenger_name_or_description
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                required :services,
                         Increase::ArrayOf.new(
                           lambda {
                             Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service
                           }
                         )

                # @!attribute [rw] ticket_document_number
                required :ticket_document_number, String

                class Service < BaseModel
                  # @!attribute [rw] category
                  required :category,
                           Increase::Enum.new(
                             :none,
                             :bundled_service,
                             :baggage_fee,
                             :change_fee,
                             :cargo,
                             :carbon_offset,
                             :frequent_flyer,
                             :gift_card,
                             :ground_transport,
                             :in_flight_entertainment,
                             :lounge,
                             :medical,
                             :meal_beverage,
                             :other,
                             :passenger_assist_fee,
                             :pets,
                             :seat_fees,
                             :standby,
                             :service_fee,
                             :store,
                             :travel_service,
                             :unaccompanied_travel,
                             :upgrades,
                             :wifi
                           )

                  # @!attribute [rw] sub_category
                  required :sub_category, String
                end
              end

              class TripLeg < BaseModel
                # @!attribute [rw] carrier_code
                required :carrier_code, String

                # @!attribute [rw] destination_city_airport_code
                required :destination_city_airport_code, String

                # @!attribute [rw] fare_basis_code
                required :fare_basis_code, String

                # @!attribute [rw] flight_number
                required :flight_number, String

                # @!attribute [rw] service_class
                required :service_class, String

                # @!attribute [rw] stop_over_code
                required :stop_over_code,
                         Increase::Enum.new(
                           :none,
                           :stop_over_allowed,
                           :stop_over_not_allowed
                         )
              end
            end
          end
        end

        class CheckDepositAcceptance < BaseModel
          # @!attribute [rw] account_number
          required :account_number, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] auxiliary_on_us
          required :auxiliary_on_us, String

          # @!attribute [rw] check_deposit_id
          required :check_deposit_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] routing_number
          required :routing_number, String

          # @!attribute [rw] serial_number
          required :serial_number, String
        end

        class CheckDepositReturn < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] check_deposit_id
          required :check_deposit_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] return_reason
          required :return_reason,
                   Increase::Enum.new(
                     :ach_conversion_not_supported,
                     :closed_account,
                     :duplicate_submission,
                     :insufficient_funds,
                     :no_account,
                     :not_authorized,
                     :stale_dated,
                     :stop_payment,
                     :unknown_reason,
                     :unmatched_details,
                     :unreadable_image,
                     :endorsement_irregular,
                     :altered_or_fictitious_item,
                     :frozen_or_blocked_account,
                     :post_dated,
                     :endorsement_missing,
                     :signature_missing,
                     :stop_payment_suspect,
                     :unusable_image,
                     :image_fails_security_check,
                     :cannot_determine_amount,
                     :signature_irregular,
                     :non_cash_item,
                     :unable_to_process,
                     :item_exceeds_dollar_limit,
                     :branch_or_account_sold
                   )

          # @!attribute [rw] returned_at
          required :returned_at, String

          # @!attribute [rw] transaction_id
          required :transaction_id, String
        end

        class CheckTransferDeposit < BaseModel
          # @!attribute [rw] back_image_file_id
          required :back_image_file_id, String

          # @!attribute [rw] bank_of_first_deposit_routing_number
          required :bank_of_first_deposit_routing_number, String

          # @!attribute [rw] deposited_at
          required :deposited_at, String

          # @!attribute [rw] front_image_file_id
          required :front_image_file_id, String

          # @!attribute [rw] transaction_id
          required :transaction_id, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new(:check_transfer_deposit)
        end

        class CheckTransferStopPaymentRequest < BaseModel
          # @!attribute [rw] reason
          required :reason,
                   Increase::Enum.new(
                     :mail_delivery_failed,
                     :rejected_by_increase,
                     :not_authorized,
                     :unknown
                   )

          # @!attribute [rw] requested_at
          required :requested_at, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new(:check_transfer_stop_payment_request)
        end

        class FeePayment < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] fee_period_start
          required :fee_period_start, String
        end

        class InboundACHTransfer < BaseModel
          # @!attribute [rw] addenda
          required :addenda,
                   lambda {
                     Increase::Models::Transaction::Source::InboundACHTransfer::Addenda
                   }

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] originator_company_descriptive_date
          required :originator_company_descriptive_date, String

          # @!attribute [rw] originator_company_discretionary_data
          required :originator_company_discretionary_data, String

          # @!attribute [rw] originator_company_entry_description
          required :originator_company_entry_description, String

          # @!attribute [rw] originator_company_id
          required :originator_company_id, String

          # @!attribute [rw] originator_company_name
          required :originator_company_name, String

          # @!attribute [rw] receiver_id_number
          required :receiver_id_number, String

          # @!attribute [rw] receiver_name
          required :receiver_name, String

          # @!attribute [rw] trace_number
          required :trace_number, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String

          class Addenda < BaseModel
            # @!attribute [rw] category
            required :category, Increase::Enum.new(:freeform)

            # @!attribute [rw] freeform
            required :freeform,
                     lambda {
                       Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform
                     }

            class Freeform < BaseModel
              # @!attribute [rw] entries
              required :entries,
                       Increase::ArrayOf.new(
                         lambda {
                           Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry
                         }
                       )

              class Entry < BaseModel
                # @!attribute [rw] payment_related_information
                required :payment_related_information, String
              end
            end
          end
        end

        class InboundCheck < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] bank_of_first_deposit_routing_number
          required :bank_of_first_deposit_routing_number, String

          # @!attribute [rw] check_front_image_file_id
          required :check_front_image_file_id, String

          # @!attribute [rw] check_number
          required :check_number, String

          # @!attribute [rw] check_rear_image_file_id
          required :check_rear_image_file_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)
        end

        class InboundInternationalACHTransfer < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] destination_country_code
          required :destination_country_code, String

          # @!attribute [rw] destination_currency_code
          required :destination_currency_code, String

          # @!attribute [rw] foreign_exchange_indicator
          required :foreign_exchange_indicator,
                   Increase::Enum.new(:fixed_to_variable, :variable_to_fixed, :fixed_to_fixed)

          # @!attribute [rw] foreign_exchange_reference
          required :foreign_exchange_reference, String

          # @!attribute [rw] foreign_exchange_reference_indicator
          required :foreign_exchange_reference_indicator,
                   Increase::Enum.new(
                     :foreign_exchange_rate,
                     :foreign_exchange_reference_number,
                     :blank
                   )

          # @!attribute [rw] foreign_payment_amount
          required :foreign_payment_amount, Integer

          # @!attribute [rw] foreign_trace_number
          required :foreign_trace_number, String

          # @!attribute [rw] international_transaction_type_code
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
          required :originating_currency_code, String

          # @!attribute [rw] originating_depository_financial_institution_branch_country
          required :originating_depository_financial_institution_branch_country, String

          # @!attribute [rw] originating_depository_financial_institution_id
          required :originating_depository_financial_institution_id, String

          # @!attribute [rw] originating_depository_financial_institution_id_qualifier
          required :originating_depository_financial_institution_id_qualifier,
                   Increase::Enum.new(:national_clearing_system_number, :bic_code, :iban)

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
                   Increase::Enum.new(:national_clearing_system_number, :bic_code, :iban)

          # @!attribute [rw] receiving_depository_financial_institution_name
          required :receiving_depository_financial_institution_name, String

          # @!attribute [rw] trace_number
          required :trace_number, String
        end

        class InboundRealTimePaymentsTransferConfirmation < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] creditor_name
          required :creditor_name, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] debtor_account_number
          required :debtor_account_number, String

          # @!attribute [rw] debtor_name
          required :debtor_name, String

          # @!attribute [rw] debtor_routing_number
          required :debtor_routing_number, String

          # @!attribute [rw] remittance_information
          required :remittance_information, String

          # @!attribute [rw] transaction_identification
          required :transaction_identification, String
        end

        class InboundWireDrawdownPayment < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] beneficiary_address_line1
          required :beneficiary_address_line1, String

          # @!attribute [rw] beneficiary_address_line2
          required :beneficiary_address_line2, String

          # @!attribute [rw] beneficiary_address_line3
          required :beneficiary_address_line3, String

          # @!attribute [rw] beneficiary_name
          required :beneficiary_name, String

          # @!attribute [rw] beneficiary_reference
          required :beneficiary_reference, String

          # @!attribute [rw] description
          required :description, String

          # @!attribute [rw] input_message_accountability_data
          required :input_message_accountability_data, String

          # @!attribute [rw] originator_address_line1
          required :originator_address_line1, String

          # @!attribute [rw] originator_address_line2
          required :originator_address_line2, String

          # @!attribute [rw] originator_address_line3
          required :originator_address_line3, String

          # @!attribute [rw] originator_name
          required :originator_name, String

          # @!attribute [rw] originator_routing_number
          required :originator_routing_number, String

          # @!attribute [rw] originator_to_beneficiary_information
          required :originator_to_beneficiary_information, String

          # @!attribute [rw] originator_to_beneficiary_information_line1
          required :originator_to_beneficiary_information_line1, String

          # @!attribute [rw] originator_to_beneficiary_information_line2
          required :originator_to_beneficiary_information_line2, String

          # @!attribute [rw] originator_to_beneficiary_information_line3
          required :originator_to_beneficiary_information_line3, String

          # @!attribute [rw] originator_to_beneficiary_information_line4
          required :originator_to_beneficiary_information_line4, String
        end

        class InboundWireDrawdownPaymentReversal < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] description
          required :description, String

          # @!attribute [rw] input_cycle_date
          required :input_cycle_date, String

          # @!attribute [rw] input_message_accountability_data
          required :input_message_accountability_data, String

          # @!attribute [rw] input_sequence_number
          required :input_sequence_number, String

          # @!attribute [rw] input_source
          required :input_source, String

          # @!attribute [rw] originator_routing_number
          required :originator_routing_number, String

          # @!attribute [rw] previous_message_input_cycle_date
          required :previous_message_input_cycle_date, String

          # @!attribute [rw] previous_message_input_message_accountability_data
          required :previous_message_input_message_accountability_data, String

          # @!attribute [rw] previous_message_input_sequence_number
          required :previous_message_input_sequence_number, String

          # @!attribute [rw] previous_message_input_source
          required :previous_message_input_source, String
        end

        class InboundWireReversal < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] created_at
          required :created_at, String

          # @!attribute [rw] description
          required :description, String

          # @!attribute [rw] financial_institution_to_financial_institution_information
          required :financial_institution_to_financial_institution_information, String

          # @!attribute [rw] input_cycle_date
          required :input_cycle_date, String

          # @!attribute [rw] input_message_accountability_data
          required :input_message_accountability_data, String

          # @!attribute [rw] input_sequence_number
          required :input_sequence_number, String

          # @!attribute [rw] input_source
          required :input_source, String

          # @!attribute [rw] originator_routing_number
          required :originator_routing_number, String

          # @!attribute [rw] previous_message_input_cycle_date
          required :previous_message_input_cycle_date, String

          # @!attribute [rw] previous_message_input_message_accountability_data
          required :previous_message_input_message_accountability_data, String

          # @!attribute [rw] previous_message_input_sequence_number
          required :previous_message_input_sequence_number, String

          # @!attribute [rw] previous_message_input_source
          required :previous_message_input_source, String

          # @!attribute [rw] receiver_financial_institution_information
          required :receiver_financial_institution_information, String

          # @!attribute [rw] transaction_id
          required :transaction_id, String

          # @!attribute [rw] wire_transfer_id
          required :wire_transfer_id, String
        end

        class InboundWireTransfer < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] beneficiary_address_line1
          required :beneficiary_address_line1, String

          # @!attribute [rw] beneficiary_address_line2
          required :beneficiary_address_line2, String

          # @!attribute [rw] beneficiary_address_line3
          required :beneficiary_address_line3, String

          # @!attribute [rw] beneficiary_name
          required :beneficiary_name, String

          # @!attribute [rw] beneficiary_reference
          required :beneficiary_reference, String

          # @!attribute [rw] description
          required :description, String

          # @!attribute [rw] input_message_accountability_data
          required :input_message_accountability_data, String

          # @!attribute [rw] originator_address_line1
          required :originator_address_line1, String

          # @!attribute [rw] originator_address_line2
          required :originator_address_line2, String

          # @!attribute [rw] originator_address_line3
          required :originator_address_line3, String

          # @!attribute [rw] originator_name
          required :originator_name, String

          # @!attribute [rw] originator_routing_number
          required :originator_routing_number, String

          # @!attribute [rw] originator_to_beneficiary_information
          required :originator_to_beneficiary_information, String

          # @!attribute [rw] originator_to_beneficiary_information_line1
          required :originator_to_beneficiary_information_line1, String

          # @!attribute [rw] originator_to_beneficiary_information_line2
          required :originator_to_beneficiary_information_line2, String

          # @!attribute [rw] originator_to_beneficiary_information_line3
          required :originator_to_beneficiary_information_line3, String

          # @!attribute [rw] originator_to_beneficiary_information_line4
          required :originator_to_beneficiary_information_line4, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class InterestPayment < BaseModel
          # @!attribute [rw] accrued_on_account_id
          required :accrued_on_account_id, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] period_end
          required :period_end, String

          # @!attribute [rw] period_start
          required :period_start, String
        end

        class InternalSource < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] reason
          required :reason,
                   Increase::Enum.new(
                     :account_closure,
                     :bank_migration,
                     :cashback,
                     :check_adjustment,
                     :collection_payment,
                     :collection_receivable,
                     :empyreal_adjustment,
                     :error,
                     :error_correction,
                     :fees,
                     :interest,
                     :negative_balance_forgiveness,
                     :sample_funds,
                     :sample_funds_return
                   )
        end

        class RealTimePaymentsTransferAcknowledgement < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] destination_account_number
          required :destination_account_number, String

          # @!attribute [rw] destination_routing_number
          required :destination_routing_number, String

          # @!attribute [rw] remittance_information
          required :remittance_information, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class SampleFunds < BaseModel
          # @!attribute [rw] originator
          required :originator, String
        end

        class WireTransferIntention < BaseModel
          # @!attribute [rw] account_number
          required :account_number, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] message_to_recipient
          required :message_to_recipient, String

          # @!attribute [rw] routing_number
          required :routing_number, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class WireTransferRejection < BaseModel
          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end
      end
    end
  end
end
