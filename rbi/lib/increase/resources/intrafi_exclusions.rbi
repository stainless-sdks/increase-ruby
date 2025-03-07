# typed: strong

module Increase
  module Resources
    class IntrafiExclusions
      sig do
        params(
          bank_name: String,
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::IntrafiExclusion)
      end
      def create(bank_name:, entity_id:, request_options: {})
      end

      sig do
        params(
          intrafi_exclusion_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::IntrafiExclusion)
      end
      def retrieve(intrafi_exclusion_id, request_options: {})
      end

      sig do
        params(
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::IntrafiExclusion])
      end
      def list(cursor: nil, entity_id: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      sig do
        params(
          intrafi_exclusion_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::IntrafiExclusion)
      end
      def archive(intrafi_exclusion_id, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
