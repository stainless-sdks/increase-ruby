# typed: strong

module Increase
  module Models
    module Simulations
      class DocumentCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        attr_accessor :account_id

        sig do
          params(
            account_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(account_id:, request_options: {})
        end

        sig { override.returns({account_id: String, request_options: Increase::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
