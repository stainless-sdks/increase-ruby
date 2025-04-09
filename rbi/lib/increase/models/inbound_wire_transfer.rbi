# typed: strong

module Increase
  module Models
    class InboundWireTransfer < Increase::Internal::Type::BaseModel
      # #/components/schemas/inbound_wire_transfer/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/inbound_wire_transfer/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/inbound_wire_transfer/properties/account_number_id
      sig { returns(String) }
      attr_accessor :account_number_id

      # #/components/schemas/inbound_wire_transfer/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/inbound_wire_transfer/properties/beneficiary_address_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line1

      # #/components/schemas/inbound_wire_transfer/properties/beneficiary_address_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line2

      # #/components/schemas/inbound_wire_transfer/properties/beneficiary_address_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line3

      # #/components/schemas/inbound_wire_transfer/properties/beneficiary_name
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_name

      # #/components/schemas/inbound_wire_transfer/properties/beneficiary_reference
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_reference

      # #/components/schemas/inbound_wire_transfer/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/inbound_wire_transfer/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/inbound_wire_transfer/properties/input_message_accountability_data
      sig { returns(T.nilable(String)) }
      attr_accessor :input_message_accountability_data

      # #/components/schemas/inbound_wire_transfer/properties/originator_address_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line1

      # #/components/schemas/inbound_wire_transfer/properties/originator_address_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line2

      # #/components/schemas/inbound_wire_transfer/properties/originator_address_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line3

      # #/components/schemas/inbound_wire_transfer/properties/originator_name
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_name

      # #/components/schemas/inbound_wire_transfer/properties/originator_routing_number
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_routing_number

      # #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information

      # #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line1

      # #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line2

      # #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line3

      # #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information_line4
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line4

      # #/components/schemas/inbound_wire_transfer/properties/sender_reference
      sig { returns(T.nilable(String)) }
      attr_accessor :sender_reference

      # #/components/schemas/inbound_wire_transfer/properties/status
      sig { returns(Increase::Models::InboundWireTransfer::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/inbound_wire_transfer/properties/type
      sig { returns(Increase::Models::InboundWireTransfer::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/inbound_wire_transfer
      sig do
        params(
          id: String,
          account_id: String,
          account_number_id: String,
          amount: Integer,
          beneficiary_address_line1: T.nilable(String),
          beneficiary_address_line2: T.nilable(String),
          beneficiary_address_line3: T.nilable(String),
          beneficiary_name: T.nilable(String),
          beneficiary_reference: T.nilable(String),
          created_at: Time,
          description: String,
          input_message_accountability_data: T.nilable(String),
          originator_address_line1: T.nilable(String),
          originator_address_line2: T.nilable(String),
          originator_address_line3: T.nilable(String),
          originator_name: T.nilable(String),
          originator_routing_number: T.nilable(String),
          originator_to_beneficiary_information: T.nilable(String),
          originator_to_beneficiary_information_line1: T.nilable(String),
          originator_to_beneficiary_information_line2: T.nilable(String),
          originator_to_beneficiary_information_line3: T.nilable(String),
          originator_to_beneficiary_information_line4: T.nilable(String),
          sender_reference: T.nilable(String),
          status: Increase::Models::InboundWireTransfer::Status::OrSymbol,
          type: Increase::Models::InboundWireTransfer::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        account_number_id:,
        amount:,
        beneficiary_address_line1:,
        beneficiary_address_line2:,
        beneficiary_address_line3:,
        beneficiary_name:,
        beneficiary_reference:,
        created_at:,
        description:,
        input_message_accountability_data:,
        originator_address_line1:,
        originator_address_line2:,
        originator_address_line3:,
        originator_name:,
        originator_routing_number:,
        originator_to_beneficiary_information:,
        originator_to_beneficiary_information_line1:,
        originator_to_beneficiary_information_line2:,
        originator_to_beneficiary_information_line3:,
        originator_to_beneficiary_information_line4:,
        sender_reference:,
        status:,
        type:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              account_number_id: String,
              amount: Integer,
              beneficiary_address_line1: T.nilable(String),
              beneficiary_address_line2: T.nilable(String),
              beneficiary_address_line3: T.nilable(String),
              beneficiary_name: T.nilable(String),
              beneficiary_reference: T.nilable(String),
              created_at: Time,
              description: String,
              input_message_accountability_data: T.nilable(String),
              originator_address_line1: T.nilable(String),
              originator_address_line2: T.nilable(String),
              originator_address_line3: T.nilable(String),
              originator_name: T.nilable(String),
              originator_routing_number: T.nilable(String),
              originator_to_beneficiary_information: T.nilable(String),
              originator_to_beneficiary_information_line1: T.nilable(String),
              originator_to_beneficiary_information_line2: T.nilable(String),
              originator_to_beneficiary_information_line3: T.nilable(String),
              originator_to_beneficiary_information_line4: T.nilable(String),
              sender_reference: T.nilable(String),
              status: Increase::Models::InboundWireTransfer::Status::TaggedSymbol,
              type: Increase::Models::InboundWireTransfer::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/inbound_wire_transfer/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundWireTransfer::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundWireTransfer::Status::TaggedSymbol) }

        # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = T.let(:pending, Increase::Models::InboundWireTransfer::Status::TaggedSymbol)

        # The Inbound Wire Transfer is accepted.
        ACCEPTED = T.let(:accepted, Increase::Models::InboundWireTransfer::Status::TaggedSymbol)

        # The Inbound Wire Transfer was declined.
        DECLINED = T.let(:declined, Increase::Models::InboundWireTransfer::Status::TaggedSymbol)

        # The Inbound Wire Transfer was reversed.
        REVERSED = T.let(:reversed, Increase::Models::InboundWireTransfer::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundWireTransfer::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/inbound_wire_transfer/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundWireTransfer::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundWireTransfer::Type::TaggedSymbol) }

        INBOUND_WIRE_TRANSFER =
          T.let(:inbound_wire_transfer, Increase::Models::InboundWireTransfer::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundWireTransfer::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
