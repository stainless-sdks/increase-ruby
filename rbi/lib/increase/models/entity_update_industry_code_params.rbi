# typed: strong

module Increase
  module Models
    class EntityUpdateIndustryCodeParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :industry_code

      sig do
        params(
          industry_code: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(industry_code:, request_options: {})
      end

      sig { override.returns({industry_code: String, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
