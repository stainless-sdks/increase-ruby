# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundCheckDeposits
        def initialize(client:)
          @client = client
        end

        # Simulates an Inbound Check Deposit against your account. This imitates someone
        #   depositing a check at their bank that was issued from your account. It may or
        #   may not be associated with a Check Transfer. Increase will evaluate the Check
        #   Deposit as we would in production and either create a Transaction or a Declined
        #   Transaction as a result. You can inspect the resulting Inbound Check Deposit
        #   object to see the result.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_number_id The identifier of the Account Number the Inbound Check Deposit will be against.
        # @option params [Integer] :amount The check amount in cents.
        # @option params [String] :check_number The check number on the check to be deposited.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::InboundCheckDeposit]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/inbound_check_deposits"
          req[:body] = params
          req[:model] = Increase::Models::InboundCheckDeposit
          @client.request(req, opts)
        end
      end
    end
  end
end
