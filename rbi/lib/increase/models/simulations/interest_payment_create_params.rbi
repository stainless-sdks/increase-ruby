# typed: strong

module Increase
  module Models
    module Simulations
      class InterestPaymentCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(T.nilable(Time)) }
        def period_end
        end

        sig { params(_: Time).returns(Time) }
        def period_end=(_)
        end

        sig { returns(T.nilable(Time)) }
        def period_start
        end

        sig { params(_: Time).returns(Time) }
        def period_start=(_)
        end

        sig do
          params(
              account_id: String,
              amount: Integer,
              period_end: Time,
              period_start: Time,
              request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
            )
            .returns(T.attached_class)
        end
        def self.new(account_id:, amount:, period_end: nil, period_start: nil, request_options: {})
        end

        sig do
          override
            .returns(
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
