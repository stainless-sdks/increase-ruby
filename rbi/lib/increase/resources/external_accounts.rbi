# typed: strong

module Increase
  module Resources
    class ExternalAccounts
      sig do
        params(
            account_number: String,
            description: String,
            routing_number: String,
            account_holder: Symbol,
            funding: Symbol,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::ExternalAccount)
      end
      def create(account_number:, description:, routing_number:, account_holder: nil, funding: nil, request_options: {})
      end

      sig do
        params(
            external_account_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::ExternalAccount)
      end
      def retrieve(external_account_id, request_options: {})
      end

      sig do
        params(
            external_account_id: String,
            account_holder: Symbol,
            description: String,
            funding: Symbol,
            status: Symbol,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::ExternalAccount)
      end
      def update(external_account_id, account_holder: nil, description: nil, funding: nil, status: nil, request_options: {})
      end

      sig do
        params(
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            routing_number: String,
            status: Increase::Models::ExternalAccountListParams::Status,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::ExternalAccount])
      end
      def list(cursor: nil, idempotency_key: nil, limit: nil, routing_number: nil, status: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
