# typed: strong

module Increase
  module Resources
    class Lockboxes
      # Create a Lockbox
      sig do
        params(
          account_id: String,
          description: String,
          recipient_name: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Lockbox)
      end
      def create(
        # #/components/schemas/create_a_lockbox_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_a_lockbox_parameters/properties/description
        description: nil,
        # #/components/schemas/create_a_lockbox_parameters/properties/recipient_name
        recipient_name: nil,
        request_options: {}
      ); end
      # Retrieve a Lockbox
      sig do
        params(
          lockbox_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Lockbox)
      end
      def retrieve(
        # #/paths//lockboxes/{lockbox_id}/get/parameters/0/schema
        lockbox_id,
        request_options: {}
      ); end
      # Update a Lockbox
      sig do
        params(
          lockbox_id: String,
          description: String,
          recipient_name: String,
          status: Increase::Models::LockboxUpdateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Lockbox)
      end
      def update(
        # #/paths//lockboxes/{lockbox_id}/patch/parameters/0/schema
        lockbox_id,
        # #/components/schemas/update_a_lockbox_parameters/properties/description
        description: nil,
        # #/components/schemas/update_a_lockbox_parameters/properties/recipient_name
        recipient_name: nil,
        # #/components/schemas/update_a_lockbox_parameters/properties/status
        status: nil,
        request_options: {}
      ); end
      # List Lockboxes
      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::LockboxListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::Lockbox])
      end
      def list(
        # #/paths//lockboxes/get/parameters/2/schema
        account_id: nil,
        created_at: nil,
        # #/paths//lockboxes/get/parameters/0/schema
        cursor: nil,
        # #/paths//lockboxes/get/parameters/7/schema
        idempotency_key: nil,
        # #/paths//lockboxes/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
