# typed: strong

module Increase
  module Resources
    class WireTransfers
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
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::WireTransfer)
      end
      def create(
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
        params(
            wire_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::WireTransfer)
      end
      def retrieve(wire_transfer_id, request_options: {})
      end

      sig do
        params(
            account_id: String,
            created_at: Increase::Models::WireTransferListParams::CreatedAt,
            cursor: String,
            external_account_id: String,
            idempotency_key: String,
            limit: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::WireTransfer])
      end
      def list(
        account_id: nil,
        created_at: nil,
        cursor: nil,
        external_account_id: nil,
        idempotency_key: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig do
        params(
            wire_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::WireTransfer)
      end
      def approve(wire_transfer_id, request_options: {})
      end

      sig do
        params(
            wire_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::WireTransfer)
      end
      def cancel(wire_transfer_id, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
