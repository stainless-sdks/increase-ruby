# typed: strong

module Increase
  module Models
    class WireTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :beneficiary_name

      sig { returns(String) }
      attr_accessor :message_to_recipient

      sig { returns(T.nilable(String)) }
      attr_reader :account_number

      sig { params(account_number: String).void }
      attr_writer :account_number

      sig { returns(T.nilable(String)) }
      attr_reader :beneficiary_address_line1

      sig { params(beneficiary_address_line1: String).void }
      attr_writer :beneficiary_address_line1

      sig { returns(T.nilable(String)) }
      attr_reader :beneficiary_address_line2

      sig { params(beneficiary_address_line2: String).void }
      attr_writer :beneficiary_address_line2

      sig { returns(T.nilable(String)) }
      attr_reader :beneficiary_address_line3

      sig { params(beneficiary_address_line3: String).void }
      attr_writer :beneficiary_address_line3

      sig { returns(T.nilable(String)) }
      attr_reader :external_account_id

      sig { params(external_account_id: String).void }
      attr_writer :external_account_id

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

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { params(routing_number: String).void }
      attr_writer :routing_number

      sig { returns(T.nilable(String)) }
      attr_reader :source_account_number_id

      sig { params(source_account_number_id: String).void }
      attr_writer :source_account_number_id

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
