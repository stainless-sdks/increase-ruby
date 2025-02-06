# typed: strong

module Increase
  module Models
    class InboundWireDrawdownRequest < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :beneficiary_account_number

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_name

      sig { returns(String) }
      attr_accessor :beneficiary_routing_number

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :message_to_recipient

      sig { returns(String) }
      attr_accessor :originator_account_number

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_name

      sig { returns(String) }
      attr_accessor :originator_routing_number

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_to_beneficiary_information_line4

      sig { returns(String) }
      attr_accessor :recipient_account_number_id

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
      end
      def initialize(
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
        override.returns(
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

      class Type < Increase::Enum
        abstract!

        INBOUND_WIRE_DRAWDOWN_REQUEST = :inbound_wire_drawdown_request

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
