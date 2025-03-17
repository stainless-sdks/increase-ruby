# typed: strong

module Increase
  module Resources
    class FileLinks
      sig do
        params(
          file_id: String,
          expires_at: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::FileLink)
      end
      def create(file_id:, expires_at: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
