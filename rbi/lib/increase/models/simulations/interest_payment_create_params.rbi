# typed: strong

module Increase
  module Models
    module Simulations
      class InterestPaymentCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The identifier of the Account the Interest Payment should be paid to is for.
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # The interest amount in cents. Must be positive.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The identifier of the Account the Interest accrued on. Defaults to `account_id`.
        sig { returns(T.nilable(String)) }
        def accrued_on_account_id
        end

        sig { params(_: String).returns(String) }
        def accrued_on_account_id=(_)
        end

        # The end of the interest period. If not provided, defaults to the current time.
        sig { returns(T.nilable(Time)) }
        def period_end
        end

        sig { params(_: Time).returns(Time) }
        def period_end=(_)
        end

        # The start of the interest period. If not provided, defaults to the current time.
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
            accrued_on_account_id: String,
            period_end: Time,
            period_start: Time,
            request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(account_id:, amount:, accrued_on_account_id: nil, period_end: nil, period_start: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                account_id: String,
                amount: Integer,
                accrued_on_account_id: String,
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
