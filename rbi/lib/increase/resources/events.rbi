# typed: strong

module Increase
  module Resources
    class Events
      sig do
        params(
          event_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Event)
      end
      def retrieve(event_id, request_options: {})
      end

      sig do
        params(
          associated_object_id: String,
          category: Increase::Models::EventListParams::Category,
          created_at: Increase::Models::EventListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::Event])
      end
      def list(
        associated_object_id: nil,
        category: nil,
        created_at: nil,
        cursor: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
