# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CheckDeposits
        # Simulates the rejection of a [Check Deposit](#check-deposits) by Increase due to
        #   factors like poor image quality. This Check Deposit must first have a `status`
        #   of `pending`.
        #
        # @param check_deposit_id [String] The identifier of the Check Deposit you wish to reject.
        #
        # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CheckDeposit]
        #
        def reject(check_deposit_id, opts = {})
          req = {
            method: :post,
            path: ["simulations/check_deposits/%0s/reject", check_deposit_id],
            model: Increase::Models::CheckDeposit
          }
          @client.request(req, opts)
        end

        # Simulates the return of a [Check Deposit](#check-deposits). This Check Deposit
        #   must first have a `status` of `submitted`.
        #
        # @param check_deposit_id [String] The identifier of the Check Deposit you wish to return.
        #
        # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CheckDeposit]
        #
        def return_(check_deposit_id, opts = {})
          req = {
            method: :post,
            path: ["simulations/check_deposits/%0s/return", check_deposit_id],
            model: Increase::Models::CheckDeposit
          }
          @client.request(req, opts)
        end

        # Simulates the submission of a [Check Deposit](#check-deposits) to the Federal
        #   Reserve. This Check Deposit must first have a `status` of `pending`.
        #
        # @param check_deposit_id [String] The identifier of the Check Deposit you wish to submit.
        #
        # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CheckDeposit]
        #
        def submit(check_deposit_id, opts = {})
          req = {
            method: :post,
            path: ["simulations/check_deposits/%0s/submit", check_deposit_id],
            model: Increase::Models::CheckDeposit
          }
          @client.request(req, opts)
        end

        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
