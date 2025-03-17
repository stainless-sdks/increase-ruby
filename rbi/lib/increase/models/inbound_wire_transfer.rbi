# typed: strong

module Increase
  module Models
    class InboundWireTransfer < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
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

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line3=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_name=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_reference
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_reference=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def input_message_accountability_data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def input_message_accountability_data=(_)
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

      sig { returns(T.nilable(String)) }
      def originator_routing_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_routing_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line3=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line4
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_to_beneficiary_information_line4=(_)
      end

      sig { returns(T.nilable(String)) }
      def sender_reference
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def sender_reference=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
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
          status: Symbol,
          type: Symbol
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
              status: Symbol,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound Wire Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound Wire Transfer was declined.
        DECLINED = :declined

        # The Inbound Wire Transfer was reversed.
        REVERSED = :reversed

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        INBOUND_WIRE_TRANSFER = :inbound_wire_transfer

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
