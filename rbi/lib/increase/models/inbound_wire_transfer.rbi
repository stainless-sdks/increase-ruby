# typed: strong

module Increase
  module Models
    class InboundWireTransfer < Increase::BaseModel
      # The inbound wire transfer's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The Account to which the transfer belongs.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The identifier of the Account Number to which this transfer was sent.
      sig { returns(String) }
      def account_number_id
      end

      sig { params(_: String).returns(String) }
      def account_number_id=(_)
      end

      # The amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # A free-form address field set by the sender.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line1=(_)
      end

      # A free-form address field set by the sender.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line2=(_)
      end

      # A free-form address field set by the sender.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line3=(_)
      end

      # A name set by the sender.
      sig { returns(T.nilable(String)) }
      def beneficiary_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_name=(_)
      end

      # A free-form reference string set by the sender, to help identify the transfer.
      sig { returns(T.nilable(String)) }
      def beneficiary_reference
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_reference=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the inbound wire transfer was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # An Increase-constructed description of the transfer.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # A unique identifier available to the originating and receiving banks, commonly
      #   abbreviated as IMAD. It is created when the wire is submitted to the Fedwire
      #   service and is helpful when debugging wires with the originating bank.
      sig { returns(T.nilable(String)) }
      def input_message_accountability_data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def input_message_accountability_data=(_)
      end

      # The address of the wire originator, set by the sending bank.
      sig { returns(T.nilable(String)) }
      def originator_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line1=(_)
      end

      # The address of the wire originator, set by the sending bank.
      sig { returns(T.nilable(String)) }
      def originator_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line2=(_)
      end

      # The address of the wire originator, set by the sending bank.
      sig { returns(T.nilable(String)) }
      def originator_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line3=(_)
      end

      # The originator of the wire, set by the sending bank.
      sig { returns(T.nilable(String)) }
      def originator_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_name=(_)
      end

      # The American Banking Association (ABA) routing number of the bank originating
      #   the transfer.
      sig { returns(T.nilable(String)) }
      def originator_routing_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_routing_number=(_)
      end

      # An Increase-created concatenation of the Originator-to-Beneficiary lines.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information=(_)
      end

      # A free-form message set by the wire originator.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line1=(_)
      end

      # A free-form message set by the wire originator.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line2=(_)
      end

      # A free-form message set by the wire originator.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line3=(_)
      end

      # A free-form message set by the wire originator.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line4
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line4=(_)
      end

      # The sending bank's reference number for the wire transfer.
      sig { returns(T.nilable(String)) }
      def sender_reference
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def sender_reference=(_)
      end

      # The status of the transfer.
      sig { returns(Increase::Models::InboundWireTransfer::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::InboundWireTransfer::Status::TaggedSymbol)
          .returns(Increase::Models::InboundWireTransfer::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_wire_transfer`.
      sig { returns(Increase::Models::InboundWireTransfer::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::InboundWireTransfer::Type::TaggedSymbol)
          .returns(Increase::Models::InboundWireTransfer::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # An Inbound Wire Transfer is a wire transfer initiated outside of Increase to
      #   your account.
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
          status: Increase::Models::InboundWireTransfer::Status::TaggedSymbol,
          type: Increase::Models::InboundWireTransfer::Type::TaggedSymbol
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
      )
      end

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
      def to_hash
      end

      # The status of the transfer.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundWireTransfer::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::InboundWireTransfer::Status::TaggedSymbol) }

        # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = T.let(:pending, Increase::Models::InboundWireTransfer::Status::TaggedSymbol)

        # The Inbound Wire Transfer is accepted.
        ACCEPTED = T.let(:accepted, Increase::Models::InboundWireTransfer::Status::TaggedSymbol)

        # The Inbound Wire Transfer was declined.
        DECLINED = T.let(:declined, Increase::Models::InboundWireTransfer::Status::TaggedSymbol)

        # The Inbound Wire Transfer was reversed.
        REVERSED = T.let(:reversed, Increase::Models::InboundWireTransfer::Status::TaggedSymbol)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_wire_transfer`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundWireTransfer::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::InboundWireTransfer::Type::TaggedSymbol) }

        INBOUND_WIRE_TRANSFER =
          T.let(:inbound_wire_transfer, Increase::Models::InboundWireTransfer::Type::TaggedSymbol)
      end
    end
  end
end
