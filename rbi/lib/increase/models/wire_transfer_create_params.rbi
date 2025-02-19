# typed: strong

module Increase
  module Models
    class WireTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(String) }
      def beneficiary_name
      end

      sig { params(_: String).returns(String) }
      def beneficiary_name=(_)
      end

      sig { returns(String) }
      def message_to_recipient
      end

      sig { params(_: String).returns(String) }
      def message_to_recipient=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line1
      end

      sig { params(_: String).returns(String) }
      def beneficiary_address_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line2
      end

      sig { params(_: String).returns(String) }
      def beneficiary_address_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line3
      end

      sig { params(_: String).returns(String) }
      def beneficiary_address_line3=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: String).returns(String) }
      def external_account_id=(_)
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

      sig { returns(T.nilable(T::Boolean)) }
      def require_approval
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def require_approval=(_)
      end

      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def source_account_number_id
      end

      sig { params(_: String).returns(String) }
      def source_account_number_id=(_)
      end

      sig do
        params(
          account_id: String,
          amount: Integer,
          beneficiary_name: String,
          message_to_recipient: String,
          account_number: String,
          beneficiary_address_line1: String,
          beneficiary_address_line2: String,
          beneficiary_address_line3: String,
          external_account_id: String,
          originator_address_line1: String,
          originator_address_line2: String,
          originator_address_line3: String,
          originator_name: String,
          require_approval: T::Boolean,
          routing_number: String,
          source_account_number_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        account_id:,
        amount:,
        beneficiary_name:,
        message_to_recipient:,
        account_number: nil,
        beneficiary_address_line1: nil,
        beneficiary_address_line2: nil,
        beneficiary_address_line3: nil,
        external_account_id: nil,
        originator_address_line1: nil,
        originator_address_line2: nil,
        originator_address_line3: nil,
        originator_name: nil,
        require_approval: nil,
        routing_number: nil,
        source_account_number_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: Integer,
            beneficiary_name: String,
            message_to_recipient: String,
            account_number: String,
            beneficiary_address_line1: String,
            beneficiary_address_line2: String,
            beneficiary_address_line3: String,
            external_account_id: String,
            originator_address_line1: String,
            originator_address_line2: String,
            originator_address_line3: String,
            originator_name: String,
            require_approval: T::Boolean,
            routing_number: String,
            source_account_number_id: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
