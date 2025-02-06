# typed: strong

module Increase
  module Models
    module Simulations
      class InterestPaymentCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        attr_accessor :account_id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(T.nilable(Time)) }
        attr_reader :period_end

        sig { params(period_end: Time).void }
        attr_writer :period_end

        sig { returns(T.nilable(Time)) }
        attr_reader :period_start

        sig { params(period_start: Time).void }
        attr_writer :period_start

        sig do
          params(
            account_id: String,
            amount: Integer,
            period_end: Time,
            period_start: Time,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(account_id:, amount:, period_end: nil, period_start: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              account_id: String,
              amount: Integer,
              period_end: Time,
              period_start: Time,
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
