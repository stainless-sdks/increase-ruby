# typed: strong

module Increase
  module Resources
    class Simulations
      class CheckTransfers
        sig do
          params(
            check_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::CheckTransfer)
        end
        def mail(check_transfer_id, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
