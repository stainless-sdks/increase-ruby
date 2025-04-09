# typed: strong

module Increase
  module Resources
    class Events
      # Retrieve an Event
      sig do
        params(
          event_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Event)
      end
      def retrieve(
        # #/paths//events/{event_id}/get/parameters/0/schema
        event_id,
        request_options: {}
      ); end
      # List Events
      sig do
        params(
          associated_object_id: String,
          category: T.any(Increase::Models::EventListParams::Category, Increase::Internal::AnyHash),
          created_at: T.any(Increase::Models::EventListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::Event])
      end
      def list(
        # #/paths//events/get/parameters/7/schema
        associated_object_id: nil,
        category: nil,
        created_at: nil,
        # #/paths//events/get/parameters/0/schema
        cursor: nil,
        # #/paths//events/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
