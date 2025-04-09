# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundCheckDeposits
        # Simulates an Inbound Check Deposit against your account. This imitates someone
        # depositing a check at their bank that was issued from your account. It may or
        # may not be associated with a Check Transfer. Increase will evaluate the Check
        # Deposit as we would in production and either create a Transaction or a Declined
        # Transaction as a result. You can inspect the resulting Inbound Check Deposit
        # object to see the result.
        sig do
          params(
            account_number_id: String,
            amount: Integer,
            check_number: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::InboundCheckDeposit)
        end
        def create(
          # #/components/schemas/sandbox_create_an_inbound_check_deposit_parameters/properties/account_number_id
          account_number_id:,
          # #/components/schemas/sandbox_create_an_inbound_check_deposit_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_create_an_inbound_check_deposit_parameters/properties/check_number
          check_number:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
