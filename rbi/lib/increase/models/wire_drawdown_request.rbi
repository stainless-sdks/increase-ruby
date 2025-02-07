# typed: strong

module Increase
  module Models
    class WireDrawdownRequest < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_number_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :fulfillment_inbound_wire_transfer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(String) }
      attr_accessor :message_to_recipient

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_name

      sig { returns(String) }
      attr_accessor :recipient_account_number

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_address_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_address_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_address_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      sig { returns(String) }
      attr_accessor :recipient_routing_number

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(Increase::Models::WireDrawdownRequest::Submission)) }
      attr_accessor :submission

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
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
        override.returns(
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
        attr_accessor :input_message_accountability_data

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
