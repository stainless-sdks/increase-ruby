# typed: strong

module Increase
  module Models
    class InboundWireTransfer < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :account_number_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_name

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_reference

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :input_message_accountability_data

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_name

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_routing_number

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line4

      sig { returns(T.nilable(String)) }
      attr_accessor :sender_reference

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
      end
      def initialize(
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
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        INBOUND_WIRE_TRANSFER = :inbound_wire_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
