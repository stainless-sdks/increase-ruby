# typed: strong

module Increase
  module Resources
    class RoutingNumbers
      # You can use this API to confirm if a routing number is valid, such as when a
      # user is providing you with bank account details. Since routing numbers uniquely
      # identify a bank, this will always return 0 or 1 entry. In Sandbox, the only
      # valid routing number for this method is 110000000.
      sig do
        params(
          routing_number: String,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::RoutingNumberListResponse])
      end
      def list(
        # #/paths//routing_numbers/get/parameters/2/schema
        routing_number:,
        # #/paths//routing_numbers/get/parameters/0/schema
        cursor: nil,
        # #/paths//routing_numbers/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
