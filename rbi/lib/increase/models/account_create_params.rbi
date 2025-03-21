# typed: strong

module Increase
  module Models
    class AccountCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The name you choose for the Account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The identifier for the Entity that will own the Account.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      # The identifier of an Entity that, while not owning the Account, is associated
      #   with its activity. Its relationship to your group must be `informational`.
      sig { returns(T.nilable(String)) }
      def informational_entity_id
      end

      sig { params(_: String).returns(String) }
      def informational_entity_id=(_)
      end

      # The identifier for the Program that this Account falls under. Required if you
      #   operate more than one Program.
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
      def to_hash
      end
    end
  end
end
