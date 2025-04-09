# typed: strong

module Increase
  module Models
    class SupplementalDocumentCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_supplemental_document_for_an_entity_parameters/properties/entity_id
      sig { returns(String) }
      attr_accessor :entity_id

      # #/components/schemas/create_a_supplemental_document_for_an_entity_parameters/properties/file_id
      sig { returns(String) }
      attr_accessor :file_id

      sig do
        params(
          entity_id: String,
          file_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(entity_id:, file_id:, request_options: {}); end

      sig do
        override.returns({entity_id: String, file_id: String, request_options: Increase::RequestOptions})
      end
      def to_hash; end
    end
  end
end
