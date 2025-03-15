# typed: strong

module Increase
  module Resources
    class FileLinks
      # Create a File Link
      sig do
        params(
          file_id: String,
          expires_at: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::FileLink)
      end
      def create(
        # The File to create a File Link for.
        file_id:,
        # The time at which the File Link will expire. The default is 1 hour from the time
        #   of the request. The maxiumum is 1 day from the time of the request.
        expires_at: nil,
        request_options: {}
      )
      end

      # Retrieve a File Link
      sig do
        params(
          file_link_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::FileLink)
      end
      def retrieve(
        # The identifier of the File Link.
        file_link_id,
        request_options: {}
      )
      end

      # List File Links
      sig do
        params(
          file_id: String,
          created_at: Increase::Models::FileLinkListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::FileLink])
      end
      def list(
        # The identifier of the File to list File Links for.
        file_id:,
        created_at: nil,
        # Return the page of entries after this one.
        cursor: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
        #   that object. This value is unique across Increase and is used to ensure that a
        #   request is only processed once. Learn more about
        #   [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key: nil,
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
