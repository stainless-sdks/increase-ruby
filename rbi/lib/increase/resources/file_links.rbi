# typed: strong

module Increase
  module Resources
    class FileLinks
      # @api private
      sig { void }
      private def initialize_resources; end

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
        # The File to create a File Link for.
        file_id:,
        # The time at which the File Link will expire. The default is 1 hour from the time
        # of the request. The maxiumum is 1 day from the time of the request.
        expires_at: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
