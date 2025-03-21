# typed: strong

module Increase
  module Resources
    class Events
      # Retrieve an Event
      sig do
        params(
          event_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Util::AnyHash))
        )
          .returns(Increase::Models::Event)
      end
      def retrieve(
        # The identifier of the Event.
        event_id,
        request_options: {}
      )
      end

      # List Events
      sig do
        params(
          associated_object_id: String,
          category: Increase::Models::EventListParams::Category,
          created_at: Increase::Models::EventListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Util::AnyHash))
        )
          .returns(Increase::Page[Increase::Models::Event])
      end
      def list(
        # Filter Events to those belonging to the object with the provided identifier.
        associated_object_id: nil,
        category: nil,
        created_at: nil,
        # Return the page of entries after this one.
        cursor: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        #   objects.
        limit: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
