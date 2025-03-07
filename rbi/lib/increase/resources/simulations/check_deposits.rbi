# typed: strong

module Increase
  module Resources
    class Simulations
      class CheckDeposits
        sig do
          params(
            check_deposit_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::CheckDeposit)
        end
        def reject(check_deposit_id, request_options: {})
        end

        sig do
          params(
            check_deposit_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::CheckDeposit)
        end
        def return_(check_deposit_id, request_options: {})
        end

        sig do
          params(
            check_deposit_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::CheckDeposit)
        end
        def submit(check_deposit_id, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
