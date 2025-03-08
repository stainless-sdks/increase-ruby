# typed: strong

module Increase
  module Resources
    class Simulations
      class AccountStatements
        sig do
          params(
              account_id: String,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::AccountStatement)
        end
        def create(account_id:, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
