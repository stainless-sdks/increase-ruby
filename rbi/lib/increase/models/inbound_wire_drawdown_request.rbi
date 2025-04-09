# typed: strong

module Increase
  module Models
    class InboundWireDrawdownRequest < Increase::Internal::Type::BaseModel
      # #/components/schemas/inbound_wire_drawdown_request/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/inbound_wire_drawdown_request/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_account_number
      sig { returns(String) }
      attr_accessor :beneficiary_account_number

      # #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_address_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line1

      # #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_address_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line2

      # #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_address_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line3

      # #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_name
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_name

      # #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_routing_number
      sig { returns(String) }
      attr_accessor :beneficiary_routing_number

      # #/components/schemas/inbound_wire_drawdown_request/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/inbound_wire_drawdown_request/properties/currency
      sig { returns(String) }
      attr_accessor :currency

      # #/components/schemas/inbound_wire_drawdown_request/properties/message_to_recipient
      sig { returns(T.nilable(String)) }
      attr_accessor :message_to_recipient

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_account_number
      sig { returns(String) }
      attr_accessor :originator_account_number

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_address_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line1

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_address_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line2

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_address_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line3

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_name
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_name

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_routing_number
      sig { returns(String) }
      attr_accessor :originator_routing_number

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_to_beneficiary_information_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line1

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_to_beneficiary_information_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line2

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_to_beneficiary_information_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line3

      # #/components/schemas/inbound_wire_drawdown_request/properties/originator_to_beneficiary_information_line4
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line4

      # #/components/schemas/inbound_wire_drawdown_request/properties/recipient_account_number_id
      sig { returns(String) }
      attr_accessor :recipient_account_number_id

      # #/components/schemas/inbound_wire_drawdown_request/properties/type
      sig { returns(Increase::Models::InboundWireDrawdownRequest::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/inbound_wire_drawdown_request
      sig do
        params(
          id: String,
          amount: Integer,
          beneficiary_account_number: String,
          beneficiary_address_line1: T.nilable(String),
          beneficiary_address_line2: T.nilable(String),
          beneficiary_address_line3: T.nilable(String),
          beneficiary_name: T.nilable(String),
          beneficiary_routing_number: String,
          created_at: Time,
          currency: String,
          message_to_recipient: T.nilable(String),
          originator_account_number: String,
          originator_address_line1: T.nilable(String),
          originator_address_line2: T.nilable(String),
          originator_address_line3: T.nilable(String),
          originator_name: T.nilable(String),
          originator_routing_number: String,
          originator_to_beneficiary_information_line1: T.nilable(String),
          originator_to_beneficiary_information_line2: T.nilable(String),
          originator_to_beneficiary_information_line3: T.nilable(String),
          originator_to_beneficiary_information_line4: T.nilable(String),
          recipient_account_number_id: String,
          type: Increase::Models::InboundWireDrawdownRequest::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        beneficiary_account_number:,
        beneficiary_address_line1:,
        beneficiary_address_line2:,
        beneficiary_address_line3:,
        beneficiary_name:,
        beneficiary_routing_number:,
        created_at:,
        currency:,
        message_to_recipient:,
        originator_account_number:,
        originator_address_line1:,
        originator_address_line2:,
        originator_address_line3:,
        originator_name:,
        originator_routing_number:,
        originator_to_beneficiary_information_line1:,
        originator_to_beneficiary_information_line2:,
        originator_to_beneficiary_information_line3:,
        originator_to_beneficiary_information_line4:,
        recipient_account_number_id:,
        type:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              amount: Integer,
              beneficiary_account_number: String,
              beneficiary_address_line1: T.nilable(String),
              beneficiary_address_line2: T.nilable(String),
              beneficiary_address_line3: T.nilable(String),
              beneficiary_name: T.nilable(String),
              beneficiary_routing_number: String,
              created_at: Time,
              currency: String,
              message_to_recipient: T.nilable(String),
              originator_account_number: String,
              originator_address_line1: T.nilable(String),
              originator_address_line2: T.nilable(String),
              originator_address_line3: T.nilable(String),
              originator_name: T.nilable(String),
              originator_routing_number: String,
              originator_to_beneficiary_information_line1: T.nilable(String),
              originator_to_beneficiary_information_line2: T.nilable(String),
              originator_to_beneficiary_information_line3: T.nilable(String),
              originator_to_beneficiary_information_line4: T.nilable(String),
              recipient_account_number_id: String,
              type: Increase::Models::InboundWireDrawdownRequest::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/inbound_wire_drawdown_request/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundWireDrawdownRequest::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundWireDrawdownRequest::Type::TaggedSymbol) }

        INBOUND_WIRE_DRAWDOWN_REQUEST =
          T.let(:inbound_wire_drawdown_request, Increase::Models::InboundWireDrawdownRequest::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundWireDrawdownRequest::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
