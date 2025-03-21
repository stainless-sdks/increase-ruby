# typed: strong

module Increase
  module Models
    module Simulations
      class AccountStatementCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The identifier of the Account the statement is for.
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig do
          params(
            account_id: String,
            request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(account_id:, request_options: {})
        end

        sig { override.returns({account_id: String, request_options: Increase::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
