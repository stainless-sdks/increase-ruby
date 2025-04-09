# typed: strong

module Increase
  module Models
    class EntityArchiveBeneficialOwnerParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/archive_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner_id
      sig { returns(String) }
      attr_accessor :beneficial_owner_id

      sig do
        params(
          beneficial_owner_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(beneficial_owner_id:, request_options: {}); end

      sig { override.returns({beneficial_owner_id: String, request_options: Increase::RequestOptions}) }
      def to_hash; end
    end
  end
end
