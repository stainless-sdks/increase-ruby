# typed: strong

module Increase
  module Resources
    class Files
      # To upload a file to Increase, you'll need to send a request of Content-Type
      # `multipart/form-data`. The request should contain the file you would like to
      # upload, as well as the parameters for creating a file.
      sig do
        params(
          file: T.any(Pathname, StringIO),
          purpose: Increase::Models::FileCreateParams::Purpose::OrSymbol,
          description: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::File)
      end
      def create(
        # #/components/schemas/create_a_file_parameters/properties/file
        file:,
        # #/components/schemas/create_a_file_parameters/properties/purpose
        purpose:,
        # #/components/schemas/create_a_file_parameters/properties/description
        description: nil,
        request_options: {}
      ); end
      # Retrieve a File
      sig do
        params(
          file_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::File)
      end
      def retrieve(
        # #/paths//files/{file_id}/get/parameters/0/schema
        file_id,
        request_options: {}
      ); end
      # List Files
      sig do
        params(
          created_at: T.any(Increase::Models::FileListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          purpose: T.any(Increase::Models::FileListParams::Purpose, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::File])
      end
      def list(
        created_at: nil,
        # #/paths//files/get/parameters/0/schema
        cursor: nil,
        # #/paths//files/get/parameters/7/schema
        idempotency_key: nil,
        # #/paths//files/get/parameters/1/schema
        limit: nil,
        purpose: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
