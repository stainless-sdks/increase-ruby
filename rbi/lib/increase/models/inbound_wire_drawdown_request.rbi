# typed: strong

module Increase
  module Models
    class InboundWireDrawdownRequest < Increase::BaseModel
      # The Wire drawdown request identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The amount being requested in cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The drawdown request's beneficiary's account number.
      sig { returns(String) }
      def beneficiary_account_number
      end

      sig { params(_: String).returns(String) }
      def beneficiary_account_number=(_)
      end

      # Line 1 of the drawdown request's beneficiary's address.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line1=(_)
      end

      # Line 2 of the drawdown request's beneficiary's address.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line2=(_)
      end

      # Line 3 of the drawdown request's beneficiary's address.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line3=(_)
      end

      # The drawdown request's beneficiary's name.
      sig { returns(T.nilable(String)) }
      def beneficiary_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_name=(_)
      end

      # The drawdown request's beneficiary's routing number.
      sig { returns(String) }
      def beneficiary_routing_number
      end

      sig { params(_: String).returns(String) }
      def beneficiary_routing_number=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the inbound wire drawdown requested was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the amount being
      #   requested. Will always be "USD".
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # A message from the drawdown request's originator.
      sig { returns(T.nilable(String)) }
      def message_to_recipient
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def message_to_recipient=(_)
      end

      # The drawdown request's originator's account number.
      sig { returns(String) }
      def originator_account_number
      end

      sig { params(_: String).returns(String) }
      def originator_account_number=(_)
      end

      # Line 1 of the drawdown request's originator's address.
      sig { returns(T.nilable(String)) }
      def originator_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line1=(_)
      end

      # Line 2 of the drawdown request's originator's address.
      sig { returns(T.nilable(String)) }
      def originator_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line2=(_)
      end

      # Line 3 of the drawdown request's originator's address.
      sig { returns(T.nilable(String)) }
      def originator_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line3=(_)
      end

      # The drawdown request's originator's name.
      sig { returns(T.nilable(String)) }
      def originator_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_name=(_)
      end

      # The drawdown request's originator's routing number.
      sig { returns(String) }
      def originator_routing_number
      end

      sig { params(_: String).returns(String) }
      def originator_routing_number=(_)
      end

      # Line 1 of the information conveyed from the originator of the message to the
      #   beneficiary.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line1=(_)
      end

      # Line 2 of the information conveyed from the originator of the message to the
      #   beneficiary.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line2=(_)
      end

      # Line 3 of the information conveyed from the originator of the message to the
      #   beneficiary.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line3=(_)
      end

      # Line 4 of the information conveyed from the originator of the message to the
      #   beneficiary.
      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line4
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line4=(_)
      end

      # The Account Number from which the recipient of this request is being requested
      #   to send funds.
      sig { returns(String) }
      def recipient_account_number_id
      end

      sig { params(_: String).returns(String) }
      def recipient_account_number_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_wire_drawdown_request`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Inbound wire drawdown requests are requests from someone else to send them a
      #   wire. This feature is in beta; reach out to
      #   [support@increase.com](mailto:support@increase.com) to learn more.
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
          type: Symbol
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
      )
      end

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
              type: Symbol
            }
          )
      end
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_wire_drawdown_request`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        INBOUND_WIRE_DRAWDOWN_REQUEST = :inbound_wire_drawdown_request
      end
    end
  end
end
