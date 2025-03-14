# typed: strong

module Increase
  module Resources
    class Simulations
      class InterestPayments
        # Simulates an interest payment to your account. In production, this happens
        #   automatically on the first of each month.
        sig do
          params(
            account_id: String,
            amount: Integer,
            accrued_on_account_id: String,
            period_end: Time,
            period_start: Time,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::Transaction)
        end
        def create(
          account_id:,
          amount:,
          accrued_on_account_id: nil,
          period_end: nil,
          period_start: nil,
          request_options: {}
        )
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
