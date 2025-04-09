# typed: strong

module Increase
  module Models
    class IntrafiExclusionCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_intrafi_exclusion_parameters/properties/bank_name
      sig { returns(String) }
      attr_accessor :bank_name

      # #/components/schemas/create_an_intrafi_exclusion_parameters/properties/entity_id
      sig { returns(String) }
      attr_accessor :entity_id

      sig do
        params(
          bank_name: String,
          entity_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(bank_name:, entity_id:, request_options: {}); end

      sig do
        override.returns({bank_name: String, entity_id: String, request_options: Increase::RequestOptions})
      end
      def to_hash; end
    end
  end
end
