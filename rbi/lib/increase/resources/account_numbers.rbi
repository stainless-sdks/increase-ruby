# typed: strong

module Increase
  module Resources
    class AccountNumbers
      sig do
        params(
          account_id: String,
          name: String,
          inbound_ach: Increase::Models::AccountNumberCreateParams::InboundACH,
          inbound_checks: Increase::Models::AccountNumberCreateParams::InboundChecks,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::AccountNumber)
      end
      def create(account_id:, name:, inbound_ach: nil, inbound_checks: nil, request_options: {})
      end

      sig do
        params(
          account_number_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::AccountNumber)
      end
      def retrieve(account_number_id, request_options: {})
      end

      sig do
        params(
          account_number_id: String,
          inbound_ach: Increase::Models::AccountNumberUpdateParams::InboundACH,
          inbound_checks: Increase::Models::AccountNumberUpdateParams::InboundChecks,
          name: String,
          status: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::AccountNumber)
      end
      def update(
        account_number_id,
        inbound_ach: nil,
        inbound_checks: nil,
        name: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        params(
          account_id: String,
          ach_debit_status: Increase::Models::AccountNumberListParams::ACHDebitStatus,
          created_at: Increase::Models::AccountNumberListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::AccountNumberListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::AccountNumber])
      end
      def list(
        account_id: nil,
        ach_debit_status: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
