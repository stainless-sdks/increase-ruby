# typed: strong

module Increase
  module Models
    class WireDrawdownRequest < Increase::Internal::Type::BaseModel
      # #/components/schemas/wire_drawdown_request/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/wire_drawdown_request/properties/account_number_id
      sig { returns(String) }
      attr_accessor :account_number_id

      # #/components/schemas/wire_drawdown_request/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/wire_drawdown_request/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/wire_drawdown_request/properties/currency
      sig { returns(String) }
      attr_accessor :currency

      # #/components/schemas/wire_drawdown_request/properties/fulfillment_inbound_wire_transfer_id
      sig { returns(T.nilable(String)) }
      attr_accessor :fulfillment_inbound_wire_transfer_id

      # #/components/schemas/wire_drawdown_request/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/wire_drawdown_request/properties/message_to_recipient
      sig { returns(String) }
      attr_accessor :message_to_recipient

      # #/components/schemas/wire_drawdown_request/properties/originator_address_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line1

      # #/components/schemas/wire_drawdown_request/properties/originator_address_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line2

      # #/components/schemas/wire_drawdown_request/properties/originator_address_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line3

      # #/components/schemas/wire_drawdown_request/properties/originator_name
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_name

      # #/components/schemas/wire_drawdown_request/properties/recipient_account_number
      sig { returns(String) }
      attr_accessor :recipient_account_number

      # #/components/schemas/wire_drawdown_request/properties/recipient_address_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_address_line1

      # #/components/schemas/wire_drawdown_request/properties/recipient_address_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_address_line2

      # #/components/schemas/wire_drawdown_request/properties/recipient_address_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_address_line3

      # #/components/schemas/wire_drawdown_request/properties/recipient_name
      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      # #/components/schemas/wire_drawdown_request/properties/recipient_routing_number
      sig { returns(String) }
      attr_accessor :recipient_routing_number

      # #/components/schemas/wire_drawdown_request/properties/status
      sig { returns(Increase::Models::WireDrawdownRequest::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/wire_drawdown_request/properties/submission
      sig { returns(T.nilable(Increase::Models::WireDrawdownRequest::Submission)) }
      attr_reader :submission

      sig do
        params(
          submission: T.nilable(T.any(Increase::Models::WireDrawdownRequest::Submission, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :submission

      # #/components/schemas/wire_drawdown_request/properties/type
      sig { returns(Increase::Models::WireDrawdownRequest::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/wire_drawdown_request
      sig do
        params(
          id: String,
          account_number_id: String,
          amount: Integer,
          created_at: Time,
          currency: String,
          fulfillment_inbound_wire_transfer_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          message_to_recipient: String,
          originator_address_line1: T.nilable(String),
          originator_address_line2: T.nilable(String),
          originator_address_line3: T.nilable(String),
          originator_name: T.nilable(String),
          recipient_account_number: String,
          recipient_address_line1: T.nilable(String),
          recipient_address_line2: T.nilable(String),
          recipient_address_line3: T.nilable(String),
          recipient_name: T.nilable(String),
          recipient_routing_number: String,
          status: Increase::Models::WireDrawdownRequest::Status::OrSymbol,
          submission: T.nilable(T.any(Increase::Models::WireDrawdownRequest::Submission, Increase::Internal::AnyHash)),
          type: Increase::Models::WireDrawdownRequest::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_number_id:,
        amount:,
        created_at:,
        currency:,
        fulfillment_inbound_wire_transfer_id:,
        idempotency_key:,
        message_to_recipient:,
        originator_address_line1:,
        originator_address_line2:,
        originator_address_line3:,
        originator_name:,
        recipient_account_number:,
        recipient_address_line1:,
        recipient_address_line2:,
        recipient_address_line3:,
        recipient_name:,
        recipient_routing_number:,
        status:,
        submission:,
        type:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              account_number_id: String,
              amount: Integer,
              created_at: Time,
              currency: String,
              fulfillment_inbound_wire_transfer_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              message_to_recipient: String,
              originator_address_line1: T.nilable(String),
              originator_address_line2: T.nilable(String),
              originator_address_line3: T.nilable(String),
              originator_name: T.nilable(String),
              recipient_account_number: String,
              recipient_address_line1: T.nilable(String),
              recipient_address_line2: T.nilable(String),
              recipient_address_line3: T.nilable(String),
              recipient_name: T.nilable(String),
              recipient_routing_number: String,
              status: Increase::Models::WireDrawdownRequest::Status::TaggedSymbol,
              submission: T.nilable(Increase::Models::WireDrawdownRequest::Submission),
              type: Increase::Models::WireDrawdownRequest::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/wire_drawdown_request/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireDrawdownRequest::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol) }

        # The drawdown request is queued to be submitted to Fedwire.
        PENDING_SUBMISSION =
          T.let(:pending_submission, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)

        # The drawdown request has been sent and the recipient should respond in some way.
        PENDING_RESPONSE = T.let(:pending_response, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)

        # The drawdown request has been fulfilled by the recipient.
        FULFILLED = T.let(:fulfilled, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)

        # The drawdown request has been refused by the recipient.
        REFUSED = T.let(:refused, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::WireDrawdownRequest::Status::TaggedSymbol]) }
        def self.values; end
      end

      class Submission < Increase::Internal::Type::BaseModel
        # #/components/schemas/wire_drawdown_request/properties/submission/anyOf/0/properties/input_message_accountability_data
        sig { returns(String) }
        attr_accessor :input_message_accountability_data

        # #/components/schemas/wire_drawdown_request/properties/submission
        sig { params(input_message_accountability_data: String).returns(T.attached_class) }
        def self.new(input_message_accountability_data:); end

        sig { override.returns({input_message_accountability_data: String}) }
        def to_hash; end
      end

      # #/components/schemas/wire_drawdown_request/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireDrawdownRequest::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::WireDrawdownRequest::Type::TaggedSymbol) }

        WIRE_DRAWDOWN_REQUEST =
          T.let(:wire_drawdown_request, Increase::Models::WireDrawdownRequest::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::WireDrawdownRequest::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
