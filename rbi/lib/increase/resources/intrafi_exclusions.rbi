# typed: strong

module Increase
  module Resources
    class IntrafiExclusions
      # Create an IntraFi Exclusion
      sig do
        params(
          bank_name: String,
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::IntrafiExclusion)
      end
      def create(
        # #/components/schemas/create_an_intrafi_exclusion_parameters/properties/bank_name
        bank_name:,
        # #/components/schemas/create_an_intrafi_exclusion_parameters/properties/entity_id
        entity_id:,
        request_options: {}
      ); end
      # Get an IntraFi Exclusion
      sig do
        params(
          intrafi_exclusion_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::IntrafiExclusion)
      end
      def retrieve(
        # #/paths//intrafi_exclusions/{intrafi_exclusion_id}/get/parameters/0/schema
        intrafi_exclusion_id,
        request_options: {}
      ); end
      # List IntraFi Exclusions
      sig do
        params(
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::IntrafiExclusion])
      end
      def list(
        # #/paths//intrafi_exclusions/get/parameters/0/schema
        cursor: nil,
        # #/paths//intrafi_exclusions/get/parameters/2/schema
        entity_id: nil,
        # #/paths//intrafi_exclusions/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//intrafi_exclusions/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # Archive an IntraFi Exclusion
      sig do
        params(
          intrafi_exclusion_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::IntrafiExclusion)
      end
      def archive(
        # #/paths//intrafi_exclusions/{intrafi_exclusion_id}/archive/post/parameters/0/schema
        intrafi_exclusion_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
