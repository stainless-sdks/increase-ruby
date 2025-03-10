# typed: strong

module Increase
  module Resources
    class Simulations
      class AccountTransfers
        sig do
          params(
            account_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::AccountTransfer)
        end
        def complete(account_transfer_id, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
