# typed: strong

module Increase
  module Resources
    class EventSubscriptions
      sig do
        params(
            url: String,
            oauth_connection_id: String,
            selected_event_category: Symbol,
            shared_secret: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::EventSubscription)
      end
      def create(url:, oauth_connection_id: nil, selected_event_category: nil, shared_secret: nil, request_options: {})
      end

      sig do
        params(
            event_subscription_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::EventSubscription)
      end
      def retrieve(event_subscription_id, request_options: {})
      end

      sig do
        params(
            event_subscription_id: String,
            status: Symbol,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::EventSubscription)
      end
      def update(event_subscription_id, status: nil, request_options: {})
      end

      sig do
        params(
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::EventSubscription])
      end
      def list(cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
