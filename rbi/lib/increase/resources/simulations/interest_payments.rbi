# typed: strong

module Increase
  module Resources
    class Simulations
      class InterestPayments
        # Simulates an interest payment to your account. In production, this happens
        # automatically on the first of each month.
        sig do
          params(
            account_id: String,
            amount: Integer,
            accrued_on_account_id: String,
            period_end: Time,
            period_start: Time,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::Transaction)
        end
        def create(
          # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/account_id
          account_id:,
          # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/accrued_on_account_id
          accrued_on_account_id: nil,
          # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/period_end
          period_end: nil,
          # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/period_start
          period_start: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
