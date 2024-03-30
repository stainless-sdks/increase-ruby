# frozen_string_literal: true

module Increase
  module Models
    class CardPayment < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] card_id
      required :card_id, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] elements
      required :elements, Increase::ArrayOf.new(-> { Increase::Models::CardPayment::Element })

      # @!attribute [rw] state
      required :state, -> { Increase::Models::CardPayment::State }

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:card_payment])

      class Element < BaseModel
        # @!attribute [rw] card_authorization
        required :card_authorization, -> { Increase::Models::CardPayment::Element::CardAuthorization }

        # @!attribute [rw] card_authorization_expiration
        required :card_authorization_expiration,
                 lambda {
                   Increase::Models::CardPayment::Element::CardAuthorizationExpiration
                 }

        # @!attribute [rw] card_decline
        required :card_decline, -> { Increase::Models::CardPayment::Element::CardDecline }

        # @!attribute [rw] card_fuel_confirmation
        required :card_fuel_confirmation,
                 lambda {
                   Increase::Models::CardPayment::Element::CardFuelConfirmation
                 }

        # @!attribute [rw] card_increment
        required :card_increment, -> { Increase::Models::CardPayment::Element::CardIncrement }

        # @!attribute [rw] card_refund
        required :card_refund, -> { Increase::Models::CardPayment::Element::CardRefund }

        # @!attribute [rw] card_reversal
        required :card_reversal, -> { Increase::Models::CardPayment::Element::CardReversal }

        # @!attribute [rw] card_settlement
        required :card_settlement, -> { Increase::Models::CardPayment::Element::CardSettlement }

        # @!attribute [rw] card_validation
        required :card_validation, -> { Increase::Models::CardPayment::Element::CardValidation }

        # @!attribute [rw] category
        required :category,
                 Increase::Enum.new(
                   [
                     :card_authorization,
                     :card_validation,
                     :card_decline,
                     :card_reversal,
                     :card_authorization_expiration,
                     :card_increment,
                     :card_settlement,
                     :card_refund,
                     :card_fuel_confirmation,
                     :other
                   ]
                 )

        # @!attribute [rw] created_at
        required :created_at, String

        class CardAuthorization < BaseModel
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

          # @!attribute [rw] direction
          required :direction, Increase::Enum.new([:settlement, :refund])

          # @!attribute [rw] expires_at
          required :expires_at, String

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

          # @!attribute [rw] network_details
          required :network_details,
                   lambda {
                     Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails
                   }

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers
                   }

          # @!attribute [rw] network_risk_score
          required :network_risk_score, Integer

          # @!attribute [rw] pending_transaction_id
          required :pending_transaction_id, String

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

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_authorization])

          # @!attribute [rw] verification
          required :verification,
                   lambda {
                     Increase::Models::CardPayment::Element::CardAuthorization::Verification
                   }

          class NetworkDetails < BaseModel
            # @!attribute [rw] category
            required :category, Increase::Enum.new([:visa])

            # @!attribute [rw] visa
            required :visa,
                     lambda {
                       Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa
                     }

            class Visa < BaseModel
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
          end

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] retrieval_reference_number
            required :retrieval_reference_number, String

            # @!attribute [rw] trace_number
            required :trace_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end

          class Verification < BaseModel
            # @!attribute [rw] card_verification_code
            required :card_verification_code,
                     lambda {
                       Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode
                     }

            # @!attribute [rw] cardholder_address
            required :cardholder_address,
                     lambda {
                       Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress
                     }

            class CardVerificationCode < BaseModel
              # @!attribute [rw] result
              required :result, Increase::Enum.new([:not_checked, :match, :no_match])
            end

            class CardholderAddress < BaseModel
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
          end
        end

        class CardAuthorizationExpiration < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] card_authorization_id
          required :card_authorization_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] expired_amount
          required :expired_amount, Integer

          # @!attribute [rw] network
          required :network, Increase::Enum.new([:visa])

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_authorization_expiration])
        end

        class CardDecline < BaseModel
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
                     Increase::Models::CardPayment::Element::CardDecline::NetworkDetails
                   }

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers
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
                     Increase::Models::CardPayment::Element::CardDecline::Verification
                   }

          class NetworkDetails < BaseModel
            # @!attribute [rw] category
            required :category, Increase::Enum.new([:visa])

            # @!attribute [rw] visa
            required :visa,
                     lambda {
                       Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa
                     }

            class Visa < BaseModel
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
          end

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] retrieval_reference_number
            required :retrieval_reference_number, String

            # @!attribute [rw] trace_number
            required :trace_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end

          class Verification < BaseModel
            # @!attribute [rw] card_verification_code
            required :card_verification_code,
                     lambda {
                       Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode
                     }

            # @!attribute [rw] cardholder_address
            required :cardholder_address,
                     lambda {
                       Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress
                     }

            class CardVerificationCode < BaseModel
              # @!attribute [rw] result
              required :result, Increase::Enum.new([:not_checked, :match, :no_match])
            end

            class CardholderAddress < BaseModel
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
          end
        end

        class CardFuelConfirmation < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] card_authorization_id
          required :card_authorization_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] network
          required :network, Increase::Enum.new([:visa])

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers
                   }

          # @!attribute [rw] pending_transaction_id
          required :pending_transaction_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_fuel_confirmation])

          # @!attribute [rw] updated_authorization_amount
          required :updated_authorization_amount, Integer

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] retrieval_reference_number
            required :retrieval_reference_number, String

            # @!attribute [rw] trace_number
            required :trace_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end
        end

        class CardIncrement < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] actioner
          required :actioner, Increase::Enum.new([:user, :increase, :network])

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] card_authorization_id
          required :card_authorization_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] network
          required :network, Increase::Enum.new([:visa])

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers
                   }

          # @!attribute [rw] network_risk_score
          required :network_risk_score, Integer

          # @!attribute [rw] pending_transaction_id
          required :pending_transaction_id, String

          # @!attribute [rw] real_time_decision_id
          required :real_time_decision_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_increment])

          # @!attribute [rw] updated_authorization_amount
          required :updated_authorization_amount, Integer

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] retrieval_reference_number
            required :retrieval_reference_number, String

            # @!attribute [rw] trace_number
            required :trace_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end
        end

        class CardRefund < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] card_payment_id
          required :card_payment_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

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
                     Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers
                   }

          # @!attribute [rw] purchase_details
          required :purchase_details,
                   lambda {
                     Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails
                   }

          # @!attribute [rw] transaction_id
          required :transaction_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_refund])

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
                       Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental
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
                       Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging
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
                       [
                         :free_text,
                         :order_number,
                         :rental_agreement_number,
                         :hotel_folio_number,
                         :invoice_number
                       ]
                     )

            # @!attribute [rw] travel
            required :travel,
                     lambda {
                       Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel
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
                         [
                           :no_extra_charge,
                           :gas,
                           :extra_mileage,
                           :late_return,
                           :one_way_service_fee,
                           :parking_violation
                         ]
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
                       Increase::Enum.new([:not_applicable, :no_show_for_specialized_vehicle])

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
                         [
                           :no_extra_charge,
                           :restaurant,
                           :gift_shop,
                           :mini_bar,
                           :telephone,
                           :other,
                           :laundry
                         ]
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
              required :no_show_indicator, Increase::Enum.new([:not_applicable, :no_show])

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
                         Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary
                       }

              # @!attribute [rw] computerized_reservation_system
              required :computerized_reservation_system, String

              # @!attribute [rw] credit_reason_indicator
              required :credit_reason_indicator,
                       Increase::Enum.new(
                         [
                           :no_credit,
                           :passenger_transport_ancillary_purchase_cancellation,
                           :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                           :airline_ticket_cancellation,
                           :other,
                           :partial_refund_of_airline_ticket
                         ]
                       )

              # @!attribute [rw] departure_date
              required :departure_date, String

              # @!attribute [rw] origination_city_airport_code
              required :origination_city_airport_code, String

              # @!attribute [rw] passenger_name
              required :passenger_name, String

              # @!attribute [rw] restricted_ticket_indicator
              required :restricted_ticket_indicator,
                       Increase::Enum.new(
                         [
                           :no_restrictions,
                           :restricted_non_refundable_ticket
                         ]
                       )

              # @!attribute [rw] ticket_change_indicator
              required :ticket_change_indicator,
                       Increase::Enum.new([:none, :change_to_existing_ticket, :new_ticket])

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
                           Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg
                         }
                       )

              class Ancillary < BaseModel
                # @!attribute [rw] connected_ticket_document_number
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                required :credit_reason_indicator,
                         Increase::Enum.new(
                           [
                             :no_credit,
                             :passenger_transport_ancillary_purchase_cancellation,
                             :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                             :other
                           ]
                         )

                # @!attribute [rw] passenger_name_or_description
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                required :services,
                         Increase::ArrayOf.new(
                           lambda {
                             Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service
                           }
                         )

                # @!attribute [rw] ticket_document_number
                required :ticket_document_number, String

                class Service < BaseModel
                  # @!attribute [rw] category
                  required :category,
                           Increase::Enum.new(
                             [
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
                             ]
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
                           [
                             :none,
                             :stop_over_allowed,
                             :stop_over_not_allowed
                           ]
                         )
              end
            end
          end
        end

        class CardReversal < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] card_authorization_id
          required :card_authorization_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] network
          required :network, Increase::Enum.new([:visa])

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers
                   }

          # @!attribute [rw] pending_transaction_id
          required :pending_transaction_id, String

          # @!attribute [rw] reversal_amount
          required :reversal_amount, Integer

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_reversal])

          # @!attribute [rw] updated_authorization_amount
          required :updated_authorization_amount, Integer

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] retrieval_reference_number
            required :retrieval_reference_number, String

            # @!attribute [rw] trace_number
            required :trace_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end
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
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

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
                     Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers
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
                     Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails
                   }

          # @!attribute [rw] transaction_id
          required :transaction_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_settlement])

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
                       Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental
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
                       Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging
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
                       [
                         :free_text,
                         :order_number,
                         :rental_agreement_number,
                         :hotel_folio_number,
                         :invoice_number
                       ]
                     )

            # @!attribute [rw] travel
            required :travel,
                     lambda {
                       Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel
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
                         [
                           :no_extra_charge,
                           :gas,
                           :extra_mileage,
                           :late_return,
                           :one_way_service_fee,
                           :parking_violation
                         ]
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
                       Increase::Enum.new([:not_applicable, :no_show_for_specialized_vehicle])

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
                         [
                           :no_extra_charge,
                           :restaurant,
                           :gift_shop,
                           :mini_bar,
                           :telephone,
                           :other,
                           :laundry
                         ]
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
              required :no_show_indicator, Increase::Enum.new([:not_applicable, :no_show])

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
                         Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary
                       }

              # @!attribute [rw] computerized_reservation_system
              required :computerized_reservation_system, String

              # @!attribute [rw] credit_reason_indicator
              required :credit_reason_indicator,
                       Increase::Enum.new(
                         [
                           :no_credit,
                           :passenger_transport_ancillary_purchase_cancellation,
                           :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                           :airline_ticket_cancellation,
                           :other,
                           :partial_refund_of_airline_ticket
                         ]
                       )

              # @!attribute [rw] departure_date
              required :departure_date, String

              # @!attribute [rw] origination_city_airport_code
              required :origination_city_airport_code, String

              # @!attribute [rw] passenger_name
              required :passenger_name, String

              # @!attribute [rw] restricted_ticket_indicator
              required :restricted_ticket_indicator,
                       Increase::Enum.new(
                         [
                           :no_restrictions,
                           :restricted_non_refundable_ticket
                         ]
                       )

              # @!attribute [rw] ticket_change_indicator
              required :ticket_change_indicator,
                       Increase::Enum.new([:none, :change_to_existing_ticket, :new_ticket])

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
                           Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg
                         }
                       )

              class Ancillary < BaseModel
                # @!attribute [rw] connected_ticket_document_number
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                required :credit_reason_indicator,
                         Increase::Enum.new(
                           [
                             :no_credit,
                             :passenger_transport_ancillary_purchase_cancellation,
                             :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                             :other
                           ]
                         )

                # @!attribute [rw] passenger_name_or_description
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                required :services,
                         Increase::ArrayOf.new(
                           lambda {
                             Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service
                           }
                         )

                # @!attribute [rw] ticket_document_number
                required :ticket_document_number, String

                class Service < BaseModel
                  # @!attribute [rw] category
                  required :category,
                           Increase::Enum.new(
                             [
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
                             ]
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
                           [
                             :none,
                             :stop_over_allowed,
                             :stop_over_not_allowed
                           ]
                         )
              end
            end
          end
        end

        class CardValidation < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] actioner
          required :actioner, Increase::Enum.new([:user, :increase, :network])

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

          # @!attribute [rw] network_details
          required :network_details,
                   lambda {
                     Increase::Models::CardPayment::Element::CardValidation::NetworkDetails
                   }

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers
                   }

          # @!attribute [rw] network_risk_score
          required :network_risk_score, Integer

          # @!attribute [rw] physical_card_id
          required :physical_card_id, String

          # @!attribute [rw] real_time_decision_id
          required :real_time_decision_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_validation])

          # @!attribute [rw] verification
          required :verification,
                   lambda {
                     Increase::Models::CardPayment::Element::CardValidation::Verification
                   }

          class NetworkDetails < BaseModel
            # @!attribute [rw] category
            required :category, Increase::Enum.new([:visa])

            # @!attribute [rw] visa
            required :visa,
                     lambda {
                       Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa
                     }

            class Visa < BaseModel
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
          end

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] retrieval_reference_number
            required :retrieval_reference_number, String

            # @!attribute [rw] trace_number
            required :trace_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end

          class Verification < BaseModel
            # @!attribute [rw] card_verification_code
            required :card_verification_code,
                     lambda {
                       Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode
                     }

            # @!attribute [rw] cardholder_address
            required :cardholder_address,
                     lambda {
                       Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress
                     }

            class CardVerificationCode < BaseModel
              # @!attribute [rw] result
              required :result, Increase::Enum.new([:not_checked, :match, :no_match])
            end

            class CardholderAddress < BaseModel
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
          end
        end
      end

      class State < BaseModel
        # @!attribute [rw] authorized_amount
        required :authorized_amount, Integer

        # @!attribute [rw] fuel_confirmed_amount
        required :fuel_confirmed_amount, Integer

        # @!attribute [rw] incremented_amount
        required :incremented_amount, Integer

        # @!attribute [rw] reversed_amount
        required :reversed_amount, Integer

        # @!attribute [rw] settled_amount
        required :settled_amount, Integer
      end
    end
  end
end
