# frozen_string_literal: true

module Increase
  module Models
    class InboundWireDrawdownRequest < Increase::BaseModel
      # @!attribute id
      #   The Wire drawdown request identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The amount being requested in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute beneficiary_account_number
      #   The drawdown request's beneficiary's account number.
      #
      #   @return [String]
      required :beneficiary_account_number, String

      # @!attribute beneficiary_address_line1
      #   Line 1 of the drawdown request's beneficiary's address.
      #
      #   @return [String, nil]
      required :beneficiary_address_line1, String, nil?: true

      # @!attribute beneficiary_address_line2
      #   Line 2 of the drawdown request's beneficiary's address.
      #
      #   @return [String, nil]
      required :beneficiary_address_line2, String, nil?: true

      # @!attribute beneficiary_address_line3
      #   Line 3 of the drawdown request's beneficiary's address.
      #
      #   @return [String, nil]
      required :beneficiary_address_line3, String, nil?: true

      # @!attribute beneficiary_name
      #   The drawdown request's beneficiary's name.
      #
      #   @return [String, nil]
      required :beneficiary_name, String, nil?: true

      # @!attribute beneficiary_routing_number
      #   The drawdown request's beneficiary's routing number.
      #
      #   @return [String]
      required :beneficiary_routing_number, String

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #     the inbound wire drawdown requested was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the amount being
      #     requested. Will always be "USD".
      #
      #   @return [String]
      required :currency, String

      # @!attribute message_to_recipient
      #   A message from the drawdown request's originator.
      #
      #   @return [String, nil]
      required :message_to_recipient, String, nil?: true

      # @!attribute originator_account_number
      #   The drawdown request's originator's account number.
      #
      #   @return [String]
      required :originator_account_number, String

      # @!attribute originator_address_line1
      #   Line 1 of the drawdown request's originator's address.
      #
      #   @return [String, nil]
      required :originator_address_line1, String, nil?: true

      # @!attribute originator_address_line2
      #   Line 2 of the drawdown request's originator's address.
      #
      #   @return [String, nil]
      required :originator_address_line2, String, nil?: true

      # @!attribute originator_address_line3
      #   Line 3 of the drawdown request's originator's address.
      #
      #   @return [String, nil]
      required :originator_address_line3, String, nil?: true

      # @!attribute originator_name
      #   The drawdown request's originator's name.
      #
      #   @return [String, nil]
      required :originator_name, String, nil?: true

      # @!attribute originator_routing_number
      #   The drawdown request's originator's routing number.
      #
      #   @return [String]
      required :originator_routing_number, String

      # @!attribute originator_to_beneficiary_information_line1
      #   Line 1 of the information conveyed from the originator of the message to the
      #     beneficiary.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line1, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line2
      #   Line 2 of the information conveyed from the originator of the message to the
      #     beneficiary.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line2, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line3
      #   Line 3 of the information conveyed from the originator of the message to the
      #     beneficiary.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line3, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line4
      #   Line 4 of the information conveyed from the originator of the message to the
      #     beneficiary.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line4, String, nil?: true

      # @!attribute recipient_account_number_id
      #   The Account Number from which the recipient of this request is being requested
      #     to send funds.
      #
      #   @return [String]
      required :recipient_account_number_id, String

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `inbound_wire_drawdown_request`.
      #
      #   @return [Symbol, Increase::Models::InboundWireDrawdownRequest::Type]
      required :type, enum: -> { Increase::Models::InboundWireDrawdownRequest::Type }

      # @!parse
      #   # Inbound wire drawdown requests are requests from someone else to send them a
      #   #   wire. This feature is in beta; reach out to
      #   #   [support@increase.com](mailto:support@increase.com) to learn more.
      #   #
      #   # @param id [String]
      #   # @param amount [Integer]
      #   # @param beneficiary_account_number [String]
      #   # @param beneficiary_address_line1 [String, nil]
      #   # @param beneficiary_address_line2 [String, nil]
      #   # @param beneficiary_address_line3 [String, nil]
      #   # @param beneficiary_name [String, nil]
      #   # @param beneficiary_routing_number [String]
      #   # @param created_at [Time]
      #   # @param currency [String]
      #   # @param message_to_recipient [String, nil]
      #   # @param originator_account_number [String]
      #   # @param originator_address_line1 [String, nil]
      #   # @param originator_address_line2 [String, nil]
      #   # @param originator_address_line3 [String, nil]
      #   # @param originator_name [String, nil]
      #   # @param originator_routing_number [String]
      #   # @param originator_to_beneficiary_information_line1 [String, nil]
      #   # @param originator_to_beneficiary_information_line2 [String, nil]
      #   # @param originator_to_beneficiary_information_line3 [String, nil]
      #   # @param originator_to_beneficiary_information_line4 [String, nil]
      #   # @param recipient_account_number_id [String]
      #   # @param type [Symbol, Increase::Models::InboundWireDrawdownRequest::Type]
      #   #
      #   def initialize(
      #     id:,
      #     amount:,
      #     beneficiary_account_number:,
      #     beneficiary_address_line1:,
      #     beneficiary_address_line2:,
      #     beneficiary_address_line3:,
      #     beneficiary_name:,
      #     beneficiary_routing_number:,
      #     created_at:,
      #     currency:,
      #     message_to_recipient:,
      #     originator_account_number:,
      #     originator_address_line1:,
      #     originator_address_line2:,
      #     originator_address_line3:,
      #     originator_name:,
      #     originator_routing_number:,
      #     originator_to_beneficiary_information_line1:,
      #     originator_to_beneficiary_information_line2:,
      #     originator_to_beneficiary_information_line3:,
      #     originator_to_beneficiary_information_line4:,
      #     recipient_account_number_id:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `inbound_wire_drawdown_request`.
      class Type < Increase::Enum
        INBOUND_WIRE_DRAWDOWN_REQUEST = :inbound_wire_drawdown_request

        finalize!
      end
    end
  end
end
