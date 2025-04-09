# typed: strong

module Increase
  module Resources
    class FileLinks
      # Create a File Link
      sig do
        params(
          file_id: String,
          expires_at: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::FileLink)
      end
      def create(
        # #/components/schemas/create_a_file_link_parameters/properties/file_id
        file_id:,
        # #/components/schemas/create_a_file_link_parameters/properties/expires_at
        expires_at: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
