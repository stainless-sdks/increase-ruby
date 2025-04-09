# typed: strong

module Increase
  module Models
    class EntityUpdateIndustryCodeParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/update_the_industry_code_for_a_corporate_entity_parameters/properties/industry_code
      sig { returns(String) }
      attr_accessor :industry_code

      sig do
        params(
          industry_code: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(industry_code:, request_options: {}); end

      sig { override.returns({industry_code: String, request_options: Increase::RequestOptions}) }
      def to_hash; end
    end
  end
end
