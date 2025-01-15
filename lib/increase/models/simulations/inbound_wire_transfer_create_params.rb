# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class InboundWireTransferCreateParams < Increase::BaseModel
        # @!attribute account_number_id
        #   The identifier of the Account Number the inbound Wire Transfer is for.
        #
        #   @return [String]
        required :account_number_id, String

        # @!attribute amount
        #   The transfer amount in cents. Must be positive.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute beneficiary_address_line1
        #   The sending bank will set beneficiary_address_line1 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :beneficiary_address_line1, String

        # @!attribute beneficiary_address_line2
        #   The sending bank will set beneficiary_address_line2 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :beneficiary_address_line2, String

        # @!attribute beneficiary_address_line3
        #   The sending bank will set beneficiary_address_line3 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :beneficiary_address_line3, String

        # @!attribute beneficiary_name
        #   The sending bank will set beneficiary_name in production. You can simulate any value here.
        #
        #   @return [String]
        optional :beneficiary_name, String

        # @!attribute beneficiary_reference
        #   The sending bank will set beneficiary_reference in production. You can simulate any value here.
        #
        #   @return [String]
        optional :beneficiary_reference, String

        # @!attribute originator_address_line1
        #   The sending bank will set originator_address_line1 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_address_line1, String

        # @!attribute originator_address_line2
        #   The sending bank will set originator_address_line2 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_address_line2, String

        # @!attribute originator_address_line3
        #   The sending bank will set originator_address_line3 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_address_line3, String

        # @!attribute originator_name
        #   The sending bank will set originator_name in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_name, String

        # @!attribute originator_routing_number
        #   The sending bank will set originator_routing_number in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_routing_number, String

        # @!attribute originator_to_beneficiary_information_line1
        #   The sending bank will set originator_to_beneficiary_information_line1 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_to_beneficiary_information_line1, String

        # @!attribute originator_to_beneficiary_information_line2
        #   The sending bank will set originator_to_beneficiary_information_line2 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_to_beneficiary_information_line2, String

        # @!attribute originator_to_beneficiary_information_line3
        #   The sending bank will set originator_to_beneficiary_information_line3 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_to_beneficiary_information_line3, String

        # @!attribute originator_to_beneficiary_information_line4
        #   The sending bank will set originator_to_beneficiary_information_line4 in production. You can simulate any value here.
        #
        #   @return [String]
        optional :originator_to_beneficiary_information_line4, String

        # @!attribute sender_reference
        #   The sending bank will set sender_reference in production. You can simulate any value here.
        #
        #   @return [String]
        optional :sender_reference, String

        # @!parse
        #   # @param account_number_id [String] The identifier of the Account Number the inbound Wire Transfer is for.
        #   #
        #   # @param amount [Integer] The transfer amount in cents. Must be positive.
        #   #
        #   # @param beneficiary_address_line1 [String] The sending bank will set beneficiary_address_line1 in production. You can
        #   #   simulate any value here.
        #   #
        #   # @param beneficiary_address_line2 [String] The sending bank will set beneficiary_address_line2 in production. You can
        #   #   simulate any value here.
        #   #
        #   # @param beneficiary_address_line3 [String] The sending bank will set beneficiary_address_line3 in production. You can
        #   #   simulate any value here.
        #   #
        #   # @param beneficiary_name [String] The sending bank will set beneficiary_name in production. You can simulate any
        #   #   value here.
        #   #
        #   # @param beneficiary_reference [String] The sending bank will set beneficiary_reference in production. You can simulate
        #   #   any value here.
        #   #
        #   # @param originator_address_line1 [String] The sending bank will set originator_address_line1 in production. You can
        #   #   simulate any value here.
        #   #
        #   # @param originator_address_line2 [String] The sending bank will set originator_address_line2 in production. You can
        #   #   simulate any value here.
        #   #
        #   # @param originator_address_line3 [String] The sending bank will set originator_address_line3 in production. You can
        #   #   simulate any value here.
        #   #
        #   # @param originator_name [String] The sending bank will set originator_name in production. You can simulate any
        #   #   value here.
        #   #
        #   # @param originator_routing_number [String] The sending bank will set originator_routing_number in production. You can
        #   #   simulate any value here.
        #   #
        #   # @param originator_to_beneficiary_information_line1 [String] The sending bank will set originator_to_beneficiary_information_line1 in
        #   #   production. You can simulate any value here.
        #   #
        #   # @param originator_to_beneficiary_information_line2 [String] The sending bank will set originator_to_beneficiary_information_line2 in
        #   #   production. You can simulate any value here.
        #   #
        #   # @param originator_to_beneficiary_information_line3 [String] The sending bank will set originator_to_beneficiary_information_line3 in
        #   #   production. You can simulate any value here.
        #   #
        #   # @param originator_to_beneficiary_information_line4 [String] The sending bank will set originator_to_beneficiary_information_line4 in
        #   #   production. You can simulate any value here.
        #   #
        #   # @param sender_reference [String] The sending bank will set sender_reference in production. You can simulate any
        #   #   value here.
        #   #
        #   def initialize(
        #     account_number_id:,
        #     amount:,
        #     beneficiary_address_line1: nil,
        #     beneficiary_address_line2: nil,
        #     beneficiary_address_line3: nil,
        #     beneficiary_name: nil,
        #     beneficiary_reference: nil,
        #     originator_address_line1: nil,
        #     originator_address_line2: nil,
        #     originator_address_line3: nil,
        #     originator_name: nil,
        #     originator_routing_number: nil,
        #     originator_to_beneficiary_information_line1: nil,
        #     originator_to_beneficiary_information_line2: nil,
        #     originator_to_beneficiary_information_line3: nil,
        #     originator_to_beneficiary_information_line4: nil,
        #     sender_reference: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
