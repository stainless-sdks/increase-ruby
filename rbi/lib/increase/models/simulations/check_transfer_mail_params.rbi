# typed: strong

module Increase
  module Models
    module Simulations
      class CheckTransferMailParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig do
          params(
            request_options: T.any(
              Increase::RequestOptions,
              Increase::Util::AnyHash
            )
          ).returns(T.attached_class)
        end
        def self.new(request_options: {})
        end

        sig { override.returns({request_options: Increase::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
