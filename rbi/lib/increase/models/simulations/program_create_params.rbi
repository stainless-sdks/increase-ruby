# typed: strong

module Increase
  module Models
    module Simulations
      class ProgramCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The name of the program being added.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(name: String, request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(name:, request_options: {})
        end

        sig { override.returns({name: String, request_options: Increase::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
