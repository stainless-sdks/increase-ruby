# typed: strong

module Increase
  module Models
    class SupplementalDocumentCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      sig do
        params(
          entity_id: String,
          file_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(entity_id:, file_id:, request_options: {})
      end

      sig do
        override.returns({entity_id: String, file_id: String, request_options: Increase::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
