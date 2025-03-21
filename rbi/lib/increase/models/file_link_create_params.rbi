# typed: strong

module Increase
  module Models
    class FileLinkCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The File to create a File Link for.
      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      # The time at which the File Link will expire. The default is 1 hour from the time
      #   of the request. The maxiumum is 1 day from the time of the request.
      sig { returns(T.nilable(Time)) }
      def expires_at
      end

      sig { params(_: Time).returns(Time) }
      def expires_at=(_)
      end

      sig do
        params(
          file_id: String,
          expires_at: Time,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(file_id:, expires_at: nil, request_options: {})
      end

      sig { override.returns({file_id: String, expires_at: Time, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
