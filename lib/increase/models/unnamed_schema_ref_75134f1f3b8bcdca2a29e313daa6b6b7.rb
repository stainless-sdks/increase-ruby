# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7 < BaseModel
      # @!attribute [rw] car_rental
      #   Fields specific to car rentals.
      #   @return [Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::CarRental]
      required :car_rental,
               lambda {
                 Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::CarRental
               }

      # @!attribute [rw] customer_reference_identifier
      #   An identifier from the merchant for the customer or consumer.
      #   @return [String]
      required :customer_reference_identifier, String

      # @!attribute [rw] local_tax_amount
      #   The state or provincial tax amount in minor units.
      #   @return [Integer]
      required :local_tax_amount, Integer

      # @!attribute [rw] local_tax_currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
      #   @return [String]
      required :local_tax_currency, String

      # @!attribute [rw] lodging
      #   Fields specific to lodging.
      #   @return [Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Lodging]
      required :lodging, -> { Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Lodging }

      # @!attribute [rw] national_tax_amount
      #   The national tax amount in minor units.
      #   @return [Integer]
      required :national_tax_amount, Integer

      # @!attribute [rw] national_tax_currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
      #   @return [String]
      required :national_tax_currency, String

      # @!attribute [rw] purchase_identifier
      #   An identifier from the merchant for the purchase to the issuer and cardholder.
      #   @return [String]
      required :purchase_identifier, String

      # @!attribute [rw] purchase_identifier_format
      #   The format of the purchase identifier.
      #   @return [Symbol]
      required :purchase_identifier_format,
               Increase::Enum.new(
                 :free_text,
                 :order_number,
                 :rental_agreement_number,
                 :hotel_folio_number,
                 :invoice_number
               )

      # @!attribute [rw] travel
      #   Fields specific to travel.
      #   @return [Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Travel]
      required :travel, -> { Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Travel }

      class CarRental < BaseModel
        # @!attribute [rw] car_class_code
        #   Code indicating the vehicle's class.
        #   @return [String]
        required :car_class_code, String

        # @!attribute [rw] checkout_date
        #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
        #   @return [String]
        required :checkout_date, String

        # @!attribute [rw] daily_rental_rate_amount
        #   Daily rate being charged for the vehicle.
        #   @return [Integer]
        required :daily_rental_rate_amount, Integer

        # @!attribute [rw] daily_rental_rate_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental rate.
        #   @return [String]
        required :daily_rental_rate_currency, String

        # @!attribute [rw] days_rented
        #   Number of days the vehicle was rented.
        #   @return [Integer]
        required :days_rented, Integer

        # @!attribute [rw] extra_charges
        #   Additional charges (gas, late fee, etc.) being billed.
        #   @return [Symbol]
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
        #   Fuel charges for the vehicle.
        #   @return [Integer]
        required :fuel_charges_amount, Integer

        # @!attribute [rw] fuel_charges_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges assessed.
        #   @return [String]
        required :fuel_charges_currency, String

        # @!attribute [rw] insurance_charges_amount
        #   Any insurance being charged for the vehicle.
        #   @return [Integer]
        required :insurance_charges_amount, Integer

        # @!attribute [rw] insurance_charges_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance charges assessed.
        #   @return [String]
        required :insurance_charges_currency, String

        # @!attribute [rw] no_show_indicator
        #   An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
        #   @return [Symbol]
        required :no_show_indicator, Increase::Enum.new(:not_applicable, :no_show_for_specialized_vehicle)

        # @!attribute [rw] one_way_drop_off_charges_amount
        #   Charges for returning the vehicle at a different location than where it was picked up.
        #   @return [Integer]
        required :one_way_drop_off_charges_amount, Integer

        # @!attribute [rw] one_way_drop_off_charges_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way drop-off charges assessed.
        #   @return [String]
        required :one_way_drop_off_charges_currency, String

        # @!attribute [rw] renter_name
        #   Name of the person renting the vehicle.
        #   @return [String]
        required :renter_name, String

        # @!attribute [rw] weekly_rental_rate_amount
        #   Weekly rate being charged for the vehicle.
        #   @return [Integer]
        required :weekly_rental_rate_amount, Integer

        # @!attribute [rw] weekly_rental_rate_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly rental rate.
        #   @return [String]
        required :weekly_rental_rate_currency, String
      end

      class Lodging < BaseModel
        # @!attribute [rw] check_in_date
        #   Date the customer checked in.
        #   @return [String]
        required :check_in_date, String

        # @!attribute [rw] daily_room_rate_amount
        #   Daily rate being charged for the room.
        #   @return [Integer]
        required :daily_room_rate_amount, Integer

        # @!attribute [rw] daily_room_rate_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room rate.
        #   @return [String]
        required :daily_room_rate_currency, String

        # @!attribute [rw] extra_charges
        #   Additional charges (phone, late check-out, etc.) being billed.
        #   @return [Symbol]
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
        #   Folio cash advances for the room.
        #   @return [Integer]
        required :folio_cash_advances_amount, Integer

        # @!attribute [rw] folio_cash_advances_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash advances.
        #   @return [String]
        required :folio_cash_advances_currency, String

        # @!attribute [rw] food_beverage_charges_amount
        #   Food and beverage charges for the room.
        #   @return [Integer]
        required :food_beverage_charges_amount, Integer

        # @!attribute [rw] food_beverage_charges_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and beverage charges.
        #   @return [String]
        required :food_beverage_charges_currency, String

        # @!attribute [rw] no_show_indicator
        #   Indicator that the cardholder is being billed for a reserved room that was not actually used.
        #   @return [Symbol]
        required :no_show_indicator, Increase::Enum.new(:not_applicable, :no_show)

        # @!attribute [rw] prepaid_expenses_amount
        #   Prepaid expenses being charged for the room.
        #   @return [Integer]
        required :prepaid_expenses_amount, Integer

        # @!attribute [rw] prepaid_expenses_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid expenses.
        #   @return [String]
        required :prepaid_expenses_currency, String

        # @!attribute [rw] room_nights
        #   Number of nights the room was rented.
        #   @return [Integer]
        required :room_nights, Integer

        # @!attribute [rw] total_room_tax_amount
        #   Total room tax being charged.
        #   @return [Integer]
        required :total_room_tax_amount, Integer

        # @!attribute [rw] total_room_tax_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room tax.
        #   @return [String]
        required :total_room_tax_currency, String

        # @!attribute [rw] total_tax_amount
        #   Total tax being charged for the room.
        #   @return [Integer]
        required :total_tax_amount, Integer

        # @!attribute [rw] total_tax_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax assessed.
        #   @return [String]
        required :total_tax_currency, String
      end

      class Travel < BaseModel
        # @!attribute [rw] ancillary
        #   Ancillary purchases in addition to the airfare.
        #   @return [Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Travel::Ancillary]
        required :ancillary,
                 -> { Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Travel::Ancillary }

        # @!attribute [rw] computerized_reservation_system
        #   Indicates the computerized reservation system used to book the ticket.
        #   @return [String]
        required :computerized_reservation_system, String

        # @!attribute [rw] credit_reason_indicator
        #   Indicates the reason for a credit to the cardholder.
        #   @return [Symbol]
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
        #   Date of departure.
        #   @return [String]
        required :departure_date, String

        # @!attribute [rw] origination_city_airport_code
        #   Code for the originating city or airport.
        #   @return [String]
        required :origination_city_airport_code, String

        # @!attribute [rw] passenger_name
        #   Name of the passenger.
        #   @return [String]
        required :passenger_name, String

        # @!attribute [rw] restricted_ticket_indicator
        #   Indicates whether this ticket is non-refundable.
        #   @return [Symbol]
        required :restricted_ticket_indicator,
                 Increase::Enum.new(:no_restrictions, :restricted_non_refundable_ticket)

        # @!attribute [rw] ticket_change_indicator
        #   Indicates why a ticket was changed.
        #   @return [Symbol]
        required :ticket_change_indicator, Increase::Enum.new(:none, :change_to_existing_ticket, :new_ticket)

        # @!attribute [rw] ticket_number
        #   Ticket number.
        #   @return [String]
        required :ticket_number, String

        # @!attribute [rw] travel_agency_code
        #   Code for the travel agency if the ticket was issued by a travel agency.
        #   @return [String]
        required :travel_agency_code, String

        # @!attribute [rw] travel_agency_name
        #   Name of the travel agency if the ticket was issued by a travel agency.
        #   @return [String]
        required :travel_agency_name, String

        # @!attribute [rw] trip_legs
        #   Fields specific to each leg of the journey.
        #   @return [Array<Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Travel::TripLeg>]
        required :trip_legs,
                 Increase::ArrayOf.new(
                   lambda {
                     Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Travel::TripLeg
                   }
                 )

        class Ancillary < BaseModel
          # @!attribute [rw] connected_ticket_document_number
          #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
          #   @return [String]
          required :connected_ticket_document_number, String

          # @!attribute [rw] credit_reason_indicator
          #   Indicates the reason for a credit to the cardholder.
          #   @return [Symbol]
          required :credit_reason_indicator,
                   Increase::Enum.new(
                     :no_credit,
                     :passenger_transport_ancillary_purchase_cancellation,
                     :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                     :other
                   )

          # @!attribute [rw] passenger_name_or_description
          #   Name of the passenger or description of the ancillary purchase.
          #   @return [String]
          required :passenger_name_or_description, String

          # @!attribute [rw] services
          #   Additional travel charges, such as baggage fees.
          #   @return [Array<Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Travel::Ancillary::Service>]
          required :services,
                   Increase::ArrayOf.new(
                     lambda {
                       Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7::Travel::Ancillary::Service
                     }
                   )

          # @!attribute [rw] ticket_document_number
          #   Ticket document number.
          #   @return [String]
          required :ticket_document_number, String

          class Service < BaseModel
            # @!attribute [rw] category
            #   Category of the ancillary service.
            #   @return [Symbol]
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
            #   Sub-category of the ancillary service, free-form.
            #   @return [String]
            required :sub_category, String
          end
        end

        class TripLeg < BaseModel
          # @!attribute [rw] carrier_code
          #   Carrier code (e.g., United Airlines, Jet Blue, etc.).
          #   @return [String]
          required :carrier_code, String

          # @!attribute [rw] destination_city_airport_code
          #   Code for the destination city or airport.
          #   @return [String]
          required :destination_city_airport_code, String

          # @!attribute [rw] fare_basis_code
          #   Fare basis code.
          #   @return [String]
          required :fare_basis_code, String

          # @!attribute [rw] flight_number
          #   Flight number.
          #   @return [String]
          required :flight_number, String

          # @!attribute [rw] service_class
          #   Service class (e.g., first class, business class, etc.).
          #   @return [String]
          required :service_class, String

          # @!attribute [rw] stop_over_code
          #   Indicates whether a stopover is allowed on this ticket.
          #   @return [Symbol]
          required :stop_over_code, Increase::Enum.new(:none, :stop_over_allowed, :stop_over_not_allowed)
        end
      end
    end
  end
end
