# typed: strong

module Increase
  module Resources
    class Simulations
      class CheckTransfers
        # Simulates the mailing of a [Check Transfer](#check-transfers), which happens
        #   periodically throughout the day in production but can be sped up in sandbox.
        #   This transfer must first have a `status` of `pending_approval` or
        #   `pending_submission`.
        sig do
          params(
            check_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::CheckTransfer)
        end
        def mail(check_transfer_id, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
