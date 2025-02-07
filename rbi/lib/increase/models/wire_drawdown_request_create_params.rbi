# typed: strong

module Increase
  module Models
    class WireDrawdownRequestCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_number_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :message_to_recipient

      sig { returns(String) }
      attr_accessor :recipient_account_number

      sig { returns(String) }
      attr_accessor :recipient_name

      sig { returns(String) }
      attr_accessor :recipient_routing_number

      sig { returns(T.nilable(String)) }
      attr_reader :originator_address_line1

      sig { params(originator_address_line1: String).void }
      attr_writer :originator_address_line1

      sig { returns(T.nilable(String)) }
      attr_reader :originator_address_line2

      sig { params(originator_address_line2: String).void }
      attr_writer :originator_address_line2

      sig { returns(T.nilable(String)) }
      attr_reader :originator_address_line3

      sig { params(originator_address_line3: String).void }
      attr_writer :originator_address_line3

      sig { returns(T.nilable(String)) }
      attr_reader :originator_name

      sig { params(originator_name: String).void }
      attr_writer :originator_name

      sig { returns(T.nilable(String)) }
      attr_reader :recipient_address_line1

      sig { params(recipient_address_line1: String).void }
      attr_writer :recipient_address_line1

      sig { returns(T.nilable(String)) }
      attr_reader :recipient_address_line2

      sig { params(recipient_address_line2: String).void }
      attr_writer :recipient_address_line2

      sig { returns(T.nilable(String)) }
      attr_reader :recipient_address_line3

      sig { params(recipient_address_line3: String).void }
      attr_writer :recipient_address_line3

      sig do
        params(
          account_number_id: String,
          amount: Integer,
          message_to_recipient: String,
          recipient_account_number: String,
          recipient_name: String,
          recipient_routing_number: String,
          originator_address_line1: String,
          originator_address_line2: String,
          originator_address_line3: String,
          originator_name: String,
          recipient_address_line1: String,
          recipient_address_line2: String,
          recipient_address_line3: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        account_number_id:,
        amount:,
        message_to_recipient:,
        recipient_account_number:,
        recipient_name:,
        recipient_routing_number:,
        originator_address_line1: nil,
        originator_address_line2: nil,
        originator_address_line3: nil,
        originator_name: nil,
        recipient_address_line1: nil,
        recipient_address_line2: nil,
        recipient_address_line3: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_number_id: String,
            amount: Integer,
            message_to_recipient: String,
            recipient_account_number: String,
            recipient_name: String,
            recipient_routing_number: String,
            originator_address_line1: String,
            originator_address_line2: String,
            originator_address_line3: String,
            originator_name: String,
            recipient_address_line1: String,
            recipient_address_line2: String,
            recipient_address_line3: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
