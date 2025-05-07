# typed: strong

module Increase
  module Models
    module Simulations
      class ProgramCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, Increase::Internal::AnyHash) }

        # The name of the program being added.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            name: String,
            request_options:
              T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the program being added.
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { name: String, request_options: Increase::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
