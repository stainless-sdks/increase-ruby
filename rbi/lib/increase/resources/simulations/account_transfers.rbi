# typed: strong

module Increase
  module Resources
    class Simulations
      class AccountTransfers
        # @api private
        sig { void }
        private def initialize_resources; end

        # If your account is configured to require approval for each transfer, this
        # endpoint simulates the approval of an [Account Transfer](#account-transfers).
        # You can also approve sandbox Account Transfers in the dashboard. This transfer
        # must first have a `status` of `pending_approval`.
        sig do
          params(
            account_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::AccountTransfer)
        end
        def complete(
          # The identifier of the Account Transfer you wish to complete.
          account_transfer_id,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
