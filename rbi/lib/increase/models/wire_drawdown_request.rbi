# typed: strong

module Increase
  module Models
    class WireDrawdownRequest < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_number_id
      end

      sig { params(_: String).returns(String) }
      def account_number_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def fulfillment_inbound_wire_transfer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fulfillment_inbound_wire_transfer_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(String) }
      def message_to_recipient
      end

      sig { params(_: String).returns(String) }
      def message_to_recipient=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line3=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_name=(_)
      end

      sig { returns(String) }
      def recipient_account_number
      end

      sig { params(_: String).returns(String) }
      def recipient_account_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_address_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_address_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_address_line3=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_name=(_)
      end

      sig { returns(String) }
      def recipient_routing_number
      end

      sig { params(_: String).returns(String) }
      def recipient_routing_number=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Increase::Models::WireDrawdownRequest::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::WireDrawdownRequest::Submission))
          .returns(T.nilable(Increase::Models::WireDrawdownRequest::Submission))
      end
      def submission=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
          status: Symbol,
          submission: T.nilable(Increase::Models::WireDrawdownRequest::Submission),
          type: Symbol
        )
          .void
      end
      def initialize(
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
      )
      end

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
              status: Symbol,
              submission: T.nilable(Increase::Models::WireDrawdownRequest::Submission),
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The drawdown request is queued to be submitted to Fedwire.
        PENDING_SUBMISSION = :pending_submission

        # The drawdown request has been sent and the recipient should respond in some way.
        PENDING_RESPONSE = :pending_response

        # The drawdown request has been fulfilled by the recipient.
        FULFILLED = :fulfilled

        # The drawdown request has been refused by the recipient.
        REFUSED = :refused

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Submission < Increase::BaseModel
        sig { returns(String) }
        def input_message_accountability_data
        end

        sig { params(_: String).returns(String) }
        def input_message_accountability_data=(_)
        end

        sig { params(input_message_accountability_data: String).void }
        def initialize(input_message_accountability_data:)
        end

        sig { override.returns({input_message_accountability_data: String}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        WIRE_DRAWDOWN_REQUEST = :wire_drawdown_request

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
