# typed: strong

module Increase
  module Resources
    class RoutingNumbers
      sig do
        params(
          routing_number: String,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::RoutingNumberListResponse])
      end
      def list(routing_number:, cursor: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
