# typed: strong

module Increase
  module Models
    class AccountCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def informational_entity_id
      end

      sig { params(_: String).returns(String) }
      def informational_entity_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def program_id
      end

      sig { params(_: String).returns(String) }
      def program_id=(_)
      end

      sig do
        params(
          name: String,
          entity_id: String,
          informational_entity_id: String,
          program_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        name:,
        entity_id: nil,
        informational_entity_id: nil,
        program_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              name: String,
              entity_id: String,
              informational_entity_id: String,
              program_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
