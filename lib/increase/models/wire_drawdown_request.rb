# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::WireDrawdownRequests#create
    class WireDrawdownRequest < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/wire_drawdown_request/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_number_id
      #   #/components/schemas/wire_drawdown_request/properties/account_number_id
      #
      #   @return [String]
      required :account_number_id, String

      # @!attribute amount
      #   #/components/schemas/wire_drawdown_request/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   #/components/schemas/wire_drawdown_request/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   #/components/schemas/wire_drawdown_request/properties/currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute fulfillment_inbound_wire_transfer_id
      #   #/components/schemas/wire_drawdown_request/properties/fulfillment_inbound_wire_transfer_id
      #
      #   @return [String, nil]
      required :fulfillment_inbound_wire_transfer_id, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/wire_drawdown_request/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute message_to_recipient
      #   #/components/schemas/wire_drawdown_request/properties/message_to_recipient
      #
      #   @return [String]
      required :message_to_recipient, String

      # @!attribute originator_address_line1
      #   #/components/schemas/wire_drawdown_request/properties/originator_address_line1
      #
      #   @return [String, nil]
      required :originator_address_line1, String, nil?: true

      # @!attribute originator_address_line2
      #   #/components/schemas/wire_drawdown_request/properties/originator_address_line2
      #
      #   @return [String, nil]
      required :originator_address_line2, String, nil?: true

      # @!attribute originator_address_line3
      #   #/components/schemas/wire_drawdown_request/properties/originator_address_line3
      #
      #   @return [String, nil]
      required :originator_address_line3, String, nil?: true

      # @!attribute originator_name
      #   #/components/schemas/wire_drawdown_request/properties/originator_name
      #
      #   @return [String, nil]
      required :originator_name, String, nil?: true

      # @!attribute recipient_account_number
      #   #/components/schemas/wire_drawdown_request/properties/recipient_account_number
      #
      #   @return [String]
      required :recipient_account_number, String

      # @!attribute recipient_address_line1
      #   #/components/schemas/wire_drawdown_request/properties/recipient_address_line1
      #
      #   @return [String, nil]
      required :recipient_address_line1, String, nil?: true

      # @!attribute recipient_address_line2
      #   #/components/schemas/wire_drawdown_request/properties/recipient_address_line2
      #
      #   @return [String, nil]
      required :recipient_address_line2, String, nil?: true

      # @!attribute recipient_address_line3
      #   #/components/schemas/wire_drawdown_request/properties/recipient_address_line3
      #
      #   @return [String, nil]
      required :recipient_address_line3, String, nil?: true

      # @!attribute recipient_name
      #   #/components/schemas/wire_drawdown_request/properties/recipient_name
      #
      #   @return [String, nil]
      required :recipient_name, String, nil?: true

      # @!attribute recipient_routing_number
      #   #/components/schemas/wire_drawdown_request/properties/recipient_routing_number
      #
      #   @return [String]
      required :recipient_routing_number, String

      # @!attribute status
      #   #/components/schemas/wire_drawdown_request/properties/status
      #
      #   @return [Symbol, Increase::Models::WireDrawdownRequest::Status]
      required :status, enum: -> { Increase::Models::WireDrawdownRequest::Status }

      # @!attribute submission
      #   #/components/schemas/wire_drawdown_request/properties/submission
      #
      #   @return [Increase::Models::WireDrawdownRequest::Submission, nil]
      required :submission, -> { Increase::Models::WireDrawdownRequest::Submission }, nil?: true

      # @!attribute type
      #   #/components/schemas/wire_drawdown_request/properties/type
      #
      #   @return [Symbol, Increase::Models::WireDrawdownRequest::Type]
      required :type, enum: -> { Increase::Models::WireDrawdownRequest::Type }

      # @!parse
      #   # #/components/schemas/wire_drawdown_request
      #   #
      #   # @param id [String]
      #   # @param account_number_id [String]
      #   # @param amount [Integer]
      #   # @param created_at [Time]
      #   # @param currency [String]
      #   # @param fulfillment_inbound_wire_transfer_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param message_to_recipient [String]
      #   # @param originator_address_line1 [String, nil]
      #   # @param originator_address_line2 [String, nil]
      #   # @param originator_address_line3 [String, nil]
      #   # @param originator_name [String, nil]
      #   # @param recipient_account_number [String]
      #   # @param recipient_address_line1 [String, nil]
      #   # @param recipient_address_line2 [String, nil]
      #   # @param recipient_address_line3 [String, nil]
      #   # @param recipient_name [String, nil]
      #   # @param recipient_routing_number [String]
      #   # @param status [Symbol, Increase::Models::WireDrawdownRequest::Status]
      #   # @param submission [Increase::Models::WireDrawdownRequest::Submission, nil]
      #   # @param type [Symbol, Increase::Models::WireDrawdownRequest::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_number_id:,
      #     amount:,
      #     created_at:,
      #     currency:,
      #     fulfillment_inbound_wire_transfer_id:,
      #     idempotency_key:,
      #     message_to_recipient:,
      #     originator_address_line1:,
      #     originator_address_line2:,
      #     originator_address_line3:,
      #     originator_name:,
      #     recipient_account_number:,
      #     recipient_address_line1:,
      #     recipient_address_line2:,
      #     recipient_address_line3:,
      #     recipient_name:,
      #     recipient_routing_number:,
      #     status:,
      #     submission:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/wire_drawdown_request/properties/status
      #
      # @see Increase::Models::WireDrawdownRequest#status
      module Status
        extend Increase::Internal::Type::Enum

        # The drawdown request is queued to be submitted to Fedwire.
        PENDING_SUBMISSION = :pending_submission

        # The drawdown request has been sent and the recipient should respond in some way.
        PENDING_RESPONSE = :pending_response

        # The drawdown request has been fulfilled by the recipient.
        FULFILLED = :fulfilled

        # The drawdown request has been refused by the recipient.
        REFUSED = :refused

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::WireDrawdownRequest#submission
      class Submission < Increase::Internal::Type::BaseModel
        # @!attribute input_message_accountability_data
        #   #/components/schemas/wire_drawdown_request/properties/submission/anyOf/0/properties/input_message_accountability_data
        #
        #   @return [String]
        required :input_message_accountability_data, String

        # @!parse
        #   # #/components/schemas/wire_drawdown_request/properties/submission
        #   #
        #   # @param input_message_accountability_data [String]
        #   #
        #   def initialize(input_message_accountability_data:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/wire_drawdown_request/properties/type
      #
      # @see Increase::Models::WireDrawdownRequest#type
      module Type
        extend Increase::Internal::Type::Enum

        WIRE_DRAWDOWN_REQUEST = :wire_drawdown_request

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
