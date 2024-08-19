# frozen_string_literal: true

module Increase
  module Models
    class InboundWireDrawdownRequest < BaseModel
      # @!attribute [rw] id
      #   The Wire drawdown request identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   The amount being requested in cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] beneficiary_account_number
      #   The drawdown request's beneficiary's account number.
      #   @return [String]
      required :beneficiary_account_number, String

      # @!attribute [rw] beneficiary_address_line1
      #   Line 1 of the drawdown request's beneficiary's address.
      #   @return [String]
      required :beneficiary_address_line1, String

      # @!attribute [rw] beneficiary_address_line2
      #   Line 2 of the drawdown request's beneficiary's address.
      #   @return [String]
      required :beneficiary_address_line2, String

      # @!attribute [rw] beneficiary_address_line3
      #   Line 3 of the drawdown request's beneficiary's address.
      #   @return [String]
      required :beneficiary_address_line3, String

      # @!attribute [rw] beneficiary_name
      #   The drawdown request's beneficiary's name.
      #   @return [String]
      required :beneficiary_name, String

      # @!attribute [rw] beneficiary_routing_number
      #   The drawdown request's beneficiary's routing number.
      #   @return [String]
      required :beneficiary_routing_number, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the inbound wire drawdown requested was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the amount being requested. Will always be "USD".
      #   @return [String]
      required :currency, String

      # @!attribute [rw] message_to_recipient
      #   A message from the drawdown request's originator.
      #   @return [String]
      required :message_to_recipient, String

      # @!attribute [rw] originator_account_number
      #   The drawdown request's originator's account number.
      #   @return [String]
      required :originator_account_number, String

      # @!attribute [rw] originator_address_line1
      #   Line 1 of the drawdown request's originator's address.
      #   @return [String]
      required :originator_address_line1, String

      # @!attribute [rw] originator_address_line2
      #   Line 2 of the drawdown request's originator's address.
      #   @return [String]
      required :originator_address_line2, String

      # @!attribute [rw] originator_address_line3
      #   Line 3 of the drawdown request's originator's address.
      #   @return [String]
      required :originator_address_line3, String

      # @!attribute [rw] originator_name
      #   The drawdown request's originator's name.
      #   @return [String]
      required :originator_name, String

      # @!attribute [rw] originator_routing_number
      #   The drawdown request's originator's routing number.
      #   @return [String]
      required :originator_routing_number, String

      # @!attribute [rw] originator_to_beneficiary_information_line1
      #   Line 1 of the information conveyed from the originator of the message to the beneficiary.
      #   @return [String]
      required :originator_to_beneficiary_information_line1, String

      # @!attribute [rw] originator_to_beneficiary_information_line2
      #   Line 2 of the information conveyed from the originator of the message to the beneficiary.
      #   @return [String]
      required :originator_to_beneficiary_information_line2, String

      # @!attribute [rw] originator_to_beneficiary_information_line3
      #   Line 3 of the information conveyed from the originator of the message to the beneficiary.
      #   @return [String]
      required :originator_to_beneficiary_information_line3, String

      # @!attribute [rw] originator_to_beneficiary_information_line4
      #   Line 4 of the information conveyed from the originator of the message to the beneficiary.
      #   @return [String]
      required :originator_to_beneficiary_information_line4, String

      # @!attribute [rw] recipient_account_number_id
      #   The Account Number from which the recipient of this request is being requested to send funds.
      #   @return [String]
      required :recipient_account_number_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_wire_drawdown_request`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_wire_drawdown_request)
    end
  end
end
