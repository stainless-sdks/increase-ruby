# typed: strong

module Increase
  module Models
    class WireDrawdownRequest < Increase::BaseModel
      # The Wire drawdown request identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The Account Number to which the recipient of this request is being requested to
      #   send funds.
      sig { returns(String) }
      def account_number_id
      end

      sig { params(_: String).returns(String) }
      def account_number_id=(_)
      end

      # The amount being requested in cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the wire drawdown request was created.
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

      # If the recipient fulfills the drawdown request by sending funds, then this will
      #   be the identifier of the corresponding Transaction.
      sig { returns(T.nilable(String)) }
      def fulfillment_inbound_wire_transfer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fulfillment_inbound_wire_transfer_id=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # The message the recipient will see as part of the drawdown request.
      sig { returns(String) }
      def message_to_recipient
      end

      sig { params(_: String).returns(String) }
      def message_to_recipient=(_)
      end

      # The originator's address line 1.
      sig { returns(T.nilable(String)) }
      def originator_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line1=(_)
      end

      # The originator's address line 2.
      sig { returns(T.nilable(String)) }
      def originator_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line2=(_)
      end

      # The originator's address line 3.
      sig { returns(T.nilable(String)) }
      def originator_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line3=(_)
      end

      # The originator's name.
      sig { returns(T.nilable(String)) }
      def originator_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_name=(_)
      end

      # The drawdown request's recipient's account number.
      sig { returns(String) }
      def recipient_account_number
      end

      sig { params(_: String).returns(String) }
      def recipient_account_number=(_)
      end

      # Line 1 of the drawdown request's recipient's address.
      sig { returns(T.nilable(String)) }
      def recipient_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_address_line1=(_)
      end

      # Line 2 of the drawdown request's recipient's address.
      sig { returns(T.nilable(String)) }
      def recipient_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_address_line2=(_)
      end

      # Line 3 of the drawdown request's recipient's address.
      sig { returns(T.nilable(String)) }
      def recipient_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_address_line3=(_)
      end

      # The drawdown request's recipient's name.
      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_name=(_)
      end

      # The drawdown request's recipient's routing number.
      sig { returns(String) }
      def recipient_routing_number
      end

      sig { params(_: String).returns(String) }
      def recipient_routing_number=(_)
      end

      # The lifecycle status of the drawdown request.
      sig { returns(Increase::Models::WireDrawdownRequest::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)
          .returns(Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # After the drawdown request is submitted to Fedwire, this will contain
      #   supplemental details.
      sig { returns(T.nilable(Increase::Models::WireDrawdownRequest::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::WireDrawdownRequest::Submission, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::WireDrawdownRequest::Submission, Increase::Util::AnyHash)))
      end
      def submission=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `wire_drawdown_request`.
      sig { returns(Increase::Models::WireDrawdownRequest::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::WireDrawdownRequest::Type::TaggedSymbol)
          .returns(Increase::Models::WireDrawdownRequest::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Wire drawdown requests enable you to request that someone else send you a wire.
      #   This feature is in beta; reach out to
      #   [support@increase.com](mailto:support@increase.com) to learn more.
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
          submission: T.nilable(T.any(Increase::Models::WireDrawdownRequest::Submission, Increase::Util::AnyHash)),
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
              status: Increase::Models::WireDrawdownRequest::Status::TaggedSymbol,
              submission: T.nilable(Increase::Models::WireDrawdownRequest::Submission),
              type: Increase::Models::WireDrawdownRequest::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The lifecycle status of the drawdown request.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireDrawdownRequest::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol) }

        # The drawdown request is queued to be submitted to Fedwire.
        PENDING_SUBMISSION =
          T.let(:pending_submission, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)

        # The drawdown request has been sent and the recipient should respond in some way.
        PENDING_RESPONSE = T.let(:pending_response, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)

        # The drawdown request has been fulfilled by the recipient.
        FULFILLED = T.let(:fulfilled, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)

        # The drawdown request has been refused by the recipient.
        REFUSED = T.let(:refused, Increase::Models::WireDrawdownRequest::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::WireDrawdownRequest::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      class Submission < Increase::BaseModel
        # The input message accountability data (IMAD) uniquely identifying the submission
        #   with Fedwire.
        sig { returns(String) }
        def input_message_accountability_data
        end

        sig { params(_: String).returns(String) }
        def input_message_accountability_data=(_)
        end

        # After the drawdown request is submitted to Fedwire, this will contain
        #   supplemental details.
        sig { params(input_message_accountability_data: String).returns(T.attached_class) }
        def self.new(input_message_accountability_data:)
        end

        sig { override.returns({input_message_accountability_data: String}) }
        def to_hash
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `wire_drawdown_request`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireDrawdownRequest::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::WireDrawdownRequest::Type::TaggedSymbol) }

        WIRE_DRAWDOWN_REQUEST =
          T.let(:wire_drawdown_request, Increase::Models::WireDrawdownRequest::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::WireDrawdownRequest::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
