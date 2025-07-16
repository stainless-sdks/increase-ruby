# typed: strong

module Increase
  module Models
    module Simulations
      class AccountStatementCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(Increase::Simulations::AccountStatementCreateParams, Increase::Internal::AnyHash) }

        # The identifier of the Account the statement is for.
        sig { returns(String) }
        attr_accessor :account_id

        sig { params(account_id: String, request_options: Increase::RequestOptions::OrHash).returns(T.attached_class) }
        def self.new(
          # The identifier of the Account the statement is for.
        account_id:,
          request_options: {}
        ); end

        sig { override.returns({account_id: String, request_options: Increase::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
