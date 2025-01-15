# frozen_string_literal: true

module Increase
  module Models
    class RealTimePaymentsRequestForPaymentCreateParams < Increase::BaseModel
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
      #   The expiration time for this request, in UTC. The requestee will not be able to pay after this date.
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
      #   The requestee's American Bankers' Association (ABA) Routing Transit Number (RTN).
      #
      #   @return [String]
      required :source_routing_number, String

      # @!parse
      #   # @param amount [Integer] The requested amount in USD cents. Must be positive.
      #   #
      #   # @param debtor [Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor] Details of the person being requested to pay.
      #   #
      #   # @param destination_account_number_id [String] The identifier of the Account Number where the funds will land.
      #   #
      #   # @param expires_at [String] The expiration time for this request, in UTC. The requestee will not be able to
      #   #   pay after this date.
      #   #
      #   # @param remittance_information [String] Unstructured information that will show on the requestee's bank statement.
      #   #
      #   # @param source_account_number [String] The account number the funds will be requested from.
      #   #
      #   # @param source_routing_number [String] The requestee's American Bankers' Association (ABA) Routing Transit Number
      #   #   (RTN).
      #   #
      #   def initialize(
      #     amount:,
      #     debtor:,
      #     destination_account_number_id:,
      #     expires_at:,
      #     remittance_information:,
      #     source_account_number:,
      #     source_routing_number:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
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
        #   # @param address [Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address] Address of the debtor.
        #   #
        #   # @param name [String] The name of the debtor.
        #   #
        #   def initialize(address:, name:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
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

          # @!attribute city
          #   The town or city.
          #
          #   @return [String]
          optional :city, String

          # @!attribute post_code
          #   The postal code or zip.
          #
          #   @return [String]
          optional :post_code, String

          # @!attribute street_name
          #   The street name without the street number.
          #
          #   @return [String]
          optional :street_name, String

          # @!parse
          #   # Address of the debtor.
          #   #
          #   # @param country [String] The ISO 3166, Alpha-2 country code.
          #   #
          #   # @param city [String] The town or city.
          #   #
          #   # @param post_code [String] The postal code or zip.
          #   #
          #   # @param street_name [String] The street name without the street number.
          #   #
          #   def initialize(country:, city: nil, post_code: nil, street_name: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end
    end
  end
end
