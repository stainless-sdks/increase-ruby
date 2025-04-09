# typed: strong

module Increase
  module Models
    class AccountCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_account_parameters/properties/name
      sig { returns(String) }
      attr_accessor :name

      # #/components/schemas/create_an_account_parameters/properties/entity_id
      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      # #/components/schemas/create_an_account_parameters/properties/informational_entity_id
      sig { returns(T.nilable(String)) }
      attr_reader :informational_entity_id

      sig { params(informational_entity_id: String).void }
      attr_writer :informational_entity_id

      # #/components/schemas/create_an_account_parameters/properties/program_id
      sig { returns(T.nilable(String)) }
      attr_reader :program_id

      sig { params(program_id: String).void }
      attr_writer :program_id

      sig do
        params(
          name: String,
          entity_id: String,
          informational_entity_id: String,
          program_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(name:, entity_id: nil, informational_entity_id: nil, program_id: nil, request_options: {})
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
      def to_hash; end
    end
  end
end
