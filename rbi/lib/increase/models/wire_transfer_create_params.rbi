# typed: strong

module Increase
  module Models
    class WireTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier for the account that will send the transfer.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The transfer amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The beneficiary's name.
      sig { returns(String) }
      def beneficiary_name
      end

      sig { params(_: String).returns(String) }
      def beneficiary_name=(_)
      end

      # The message that will show on the recipient's bank statement.
      sig { returns(String) }
      def message_to_recipient
      end

      sig { params(_: String).returns(String) }
      def message_to_recipient=(_)
      end

      # The account number for the destination account.
      sig { returns(T.nilable(String)) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # The beneficiary's address line 1.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line1
      end

      sig { params(_: String).returns(String) }
      def beneficiary_address_line1=(_)
      end

      # The beneficiary's address line 2.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line2
      end

      sig { params(_: String).returns(String) }
      def beneficiary_address_line2=(_)
      end

      # The beneficiary's address line 3.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line3
      end

      sig { params(_: String).returns(String) }
      def beneficiary_address_line3=(_)
      end

      # The ID of an External Account to initiate a transfer to. If this parameter is
      #   provided, `account_number` and `routing_number` must be absent.
      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: String).returns(String) }
      def external_account_id=(_)
      end

      # The originator's address line 1. This is only necessary if you're transferring
      #   from a commingled account. Otherwise, we'll use the associated entity's details.
      sig { returns(T.nilable(String)) }
      def originator_address_line1
      end

      sig { params(_: String).returns(String) }
      def originator_address_line1=(_)
      end

      # The originator's address line 2. This is only necessary if you're transferring
      #   from a commingled account. Otherwise, we'll use the associated entity's details.
      sig { returns(T.nilable(String)) }
      def originator_address_line2
      end

      sig { params(_: String).returns(String) }
      def originator_address_line2=(_)
      end

      # The originator's address line 3. This is only necessary if you're transferring
      #   from a commingled account. Otherwise, we'll use the associated entity's details.
      sig { returns(T.nilable(String)) }
      def originator_address_line3
      end

      sig { params(_: String).returns(String) }
      def originator_address_line3=(_)
      end

      # The originator's name. This is only necessary if you're transferring from a
      #   commingled account. Otherwise, we'll use the associated entity's details.
      sig { returns(T.nilable(String)) }
      def originator_name
      end

      sig { params(_: String).returns(String) }
      def originator_name=(_)
      end

      # Whether the transfer requires explicit approval via the dashboard or API.
      sig { returns(T.nilable(T::Boolean)) }
      def require_approval
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def require_approval=(_)
      end

      # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The ID of an Account Number that will be passed to the wire's recipient
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
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
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
