# typed: strong

module Increase
  module Models
    class IntrafiExclusionCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The name of the financial institution to be excluded.
      sig { returns(String) }
      def bank_name
      end

      sig { params(_: String).returns(String) }
      def bank_name=(_)
      end

      # The identifier of the Entity whose deposits will be excluded.
      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig do
        params(
          bank_name: String,
          entity_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(bank_name:, entity_id:, request_options: {})
      end

      sig do
        override.returns({bank_name: String, entity_id: String, request_options: Increase::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
