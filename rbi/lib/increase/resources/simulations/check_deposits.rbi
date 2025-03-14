# typed: strong

module Increase
  module Resources
    class Simulations
      class CheckDeposits
        # Simulates the rejection of a [Check Deposit](#check-deposits) by Increase due to
        #   factors like poor image quality. This Check Deposit must first have a `status`
        #   of `pending`.
        sig do
          params(
            check_deposit_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::CheckDeposit)
        end
        def reject(check_deposit_id, request_options: {})
        end

        # Simulates the return of a [Check Deposit](#check-deposits). This Check Deposit
        #   must first have a `status` of `submitted`.
        sig do
          params(
            check_deposit_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::CheckDeposit)
        end
        def return_(check_deposit_id, request_options: {})
        end

        # Simulates the submission of a [Check Deposit](#check-deposits) to the Federal
        #   Reserve. This Check Deposit must first have a `status` of `pending`.
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
