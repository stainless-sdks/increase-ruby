# typed: strong

module Increase
  module Models
    class WireDrawdownRequestCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

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

      sig { returns(String) }
      def message_to_recipient
      end

      sig { params(_: String).returns(String) }
      def message_to_recipient=(_)
      end

      sig { returns(String) }
      def recipient_account_number
      end

      sig { params(_: String).returns(String) }
      def recipient_account_number=(_)
      end

      sig { returns(String) }
      def recipient_name
      end

      sig { params(_: String).returns(String) }
      def recipient_name=(_)
      end

      sig { returns(String) }
      def recipient_routing_number
      end

      sig { params(_: String).returns(String) }
      def recipient_routing_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line1
      end

      sig { params(_: String).returns(String) }
      def originator_address_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line2
      end

      sig { params(_: String).returns(String) }
      def originator_address_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line3
      end

      sig { params(_: String).returns(String) }
      def originator_address_line3=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_name
      end

      sig { params(_: String).returns(String) }
      def originator_name=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_address_line1
      end

      sig { params(_: String).returns(String) }
      def recipient_address_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_address_line2
      end

      sig { params(_: String).returns(String) }
      def recipient_address_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_address_line3
      end

      sig { params(_: String).returns(String) }
      def recipient_address_line3=(_)
      end

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
          )
          .void
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
        override
          .returns(
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
