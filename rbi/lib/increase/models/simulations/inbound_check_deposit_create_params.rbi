# typed: strong

module Increase
  module Models
    module Simulations
      class InboundCheckDepositCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        def account_number_id
        end

        sig { params(_: String).returns(String) }
        def account_number_id=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(String) }
        def check_number
        end

        sig { params(_: String).returns(String) }
        def check_number=(_)
        end

        sig do
          params(
            account_number_id: String,
            amount: Integer,
            check_number: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(account_number_id:, amount:, check_number:, request_options: {})
        end

        sig do
          override.returns(
            {
              account_number_id: String,
              amount: Integer,
              check_number: String,
              request_options: Increase::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
