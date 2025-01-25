# frozen_string_literal: true

module Increase
  module Models
    class RealTimePaymentsRequestForPaymentCreateParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute amount
      #   The requested amount in USD cents. Must be positive.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute debtor
      #   Details of the person being requested to pay.
      #
      #   @return [Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor]
      required :debtor, -> { Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor }

      # @!attribute destination_account_number_id
      #   The identifier of the Account Number where the funds will land.
      #
      #   @return [String]
      required :destination_account_number_id, String

      # @!attribute expires_at
      #   The expiration time for this request, in UTC. The requestee will not be able to
      #     pay after this date.
      #
      #   @return [Date]
      required :expires_at, Date

      # @!attribute remittance_information
      #   Unstructured information that will show on the requestee's bank statement.
      #
      #   @return [String]
      required :remittance_information, String

      # @!attribute source_account_number
      #   The account number the funds will be requested from.
      #
      #   @return [String]
      required :source_account_number, String

      # @!attribute source_routing_number
      #   The requestee's American Bankers' Association (ABA) Routing Transit Number
      #     (RTN).
      #
      #   @return [String]
      required :source_routing_number, String

      # @!parse
      #   # @param amount [Integer]
      #   # @param debtor [Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor]
      #   # @param destination_account_number_id [String]
      #   # @param expires_at [String]
      #   # @param remittance_information [String]
      #   # @param source_account_number [String]
      #   # @param source_routing_number [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     debtor:,
      #     destination_account_number_id:,
      #     expires_at:,
      #     remittance_information:,
      #     source_account_number:,
      #     source_routing_number:,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # debtor => {
      #   address: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address,
      #   name: String
      # }
      # ```
      class Debtor < Increase::BaseModel
        # @!attribute address
        #   Address of the debtor.
        #
        #   @return [Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address]
        required :address,
                 -> {
                   Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address
                 }

        # @!attribute name
        #   The name of the debtor.
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # Details of the person being requested to pay.
        #   #
        #   # @param address [Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address]
        #   # @param name [String]
        #   #
        #   def initialize(address:, name:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # address => {
        #   country: String,
        #   city: String,
        #   post_code: String,
        #   street_name: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute country
          #   The ISO 3166, Alpha-2 country code.
          #
          #   @return [String]
          required :country, String

          # @!attribute [r] city
          #   The town or city.
          #
          #   @return [String, nil]
          optional :city, String

          # @!parse
          #   # @return [String]
          #   attr_writer :city

          # @!attribute [r] post_code
          #   The postal code or zip.
          #
          #   @return [String, nil]
          optional :post_code, String

          # @!parse
          #   # @return [String]
          #   attr_writer :post_code

          # @!attribute [r] street_name
          #   The street name without the street number.
          #
          #   @return [String, nil]
          optional :street_name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :street_name

          # @!parse
          #   # Address of the debtor.
          #   #
          #   # @param country [String]
          #   # @param city [String]
          #   # @param post_code [String]
          #   # @param street_name [String]
          #   #
          #   def initialize(country:, city: nil, post_code: nil, street_name: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end
    end
  end
end
