# typed: strong

module Increase
  module Models
    class IntrafiExclusionCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(String) }
      attr_accessor :entity_id

      sig do
        params(
          bank_name: String,
          entity_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(bank_name:, entity_id:, request_options: {})
      end

      sig do
        override.returns({bank_name: String, entity_id: String, request_options: Increase::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
