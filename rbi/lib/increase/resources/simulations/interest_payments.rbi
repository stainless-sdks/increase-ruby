# typed: strong

module Increase
  module Resources
    class Simulations
      class InterestPayments
        sig do
          params(
              account_id: String,
              amount: Integer,
              period_end: Time,
              period_start: Time,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::Transaction)
        end
        def create(account_id:, amount:, period_end: nil, period_start: nil, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
