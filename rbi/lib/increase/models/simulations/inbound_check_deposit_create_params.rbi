# typed: strong

module Increase
  module Models
    module Simulations
      class InboundCheckDepositCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # #/components/schemas/sandbox_create_an_inbound_check_deposit_parameters/properties/account_number_id
        sig { returns(String) }
        attr_accessor :account_number_id

        # #/components/schemas/sandbox_create_an_inbound_check_deposit_parameters/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/sandbox_create_an_inbound_check_deposit_parameters/properties/check_number
        sig { returns(String) }
        attr_accessor :check_number

        sig do
          params(
            account_number_id: String,
            amount: Integer,
            check_number: String,
            request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(account_number_id:, amount:, check_number:, request_options: {}); end

        sig do
          override
            .returns(
              {
                account_number_id: String,
                amount: Integer,
                check_number: String,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
