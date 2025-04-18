# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundCheckDeposits
        # @api private
        private def initialize_resources; end

        # Simulates an Inbound Check Deposit against your account. This imitates someone
        # depositing a check at their bank that was issued from your account. It may or
        # may not be associated with a Check Transfer. Increase will evaluate the Check
        # Deposit as we would in production and either create a Transaction or a Declined
        # Transaction as a result. You can inspect the resulting Inbound Check Deposit
        # object to see the result.
        #
        # @overload create(account_number_id:, amount:, check_number:, request_options: {})
        #
        # @param account_number_id [String]
        # @param amount [Integer]
        # @param check_number [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::InboundCheckDeposit]
        #
        # @see Increase::Models::Simulations::InboundCheckDepositCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::InboundCheckDepositCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/inbound_check_deposits",
            body: parsed,
            model: Increase::Models::InboundCheckDeposit,
            options: options
          )
        end

        # @api private
        #
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
          initialize_resources
        end
      end
    end
  end
end
