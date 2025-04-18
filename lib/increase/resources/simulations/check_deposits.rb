# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CheckDeposits
        # @api private
        private def initialize_resources; end

        # Simulates the rejection of a [Check Deposit](#check-deposits) by Increase due to
        # factors like poor image quality. This Check Deposit must first have a `status`
        # of `pending`.
        #
        # @overload reject(check_deposit_id, request_options: {})
        #
        # @param check_deposit_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::CheckDeposit]
        #
        # @see Increase::Models::Simulations::CheckDepositRejectParams
        def reject(check_deposit_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/check_deposits/%1$s/reject", check_deposit_id],
            model: Increase::Models::CheckDeposit,
            options: params[:request_options]
          )
        end

        # Simulates the return of a [Check Deposit](#check-deposits). This Check Deposit
        # must first have a `status` of `submitted`.
        #
        # @overload return_(check_deposit_id, request_options: {})
        #
        # @param check_deposit_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::CheckDeposit]
        #
        # @see Increase::Models::Simulations::CheckDepositReturnParams
        def return_(check_deposit_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/check_deposits/%1$s/return", check_deposit_id],
            model: Increase::Models::CheckDeposit,
            options: params[:request_options]
          )
        end

        # Simulates the submission of a [Check Deposit](#check-deposits) to the Federal
        # Reserve. This Check Deposit must first have a `status` of `pending`.
        #
        # @overload submit(check_deposit_id, request_options: {})
        #
        # @param check_deposit_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::CheckDeposit]
        #
        # @see Increase::Models::Simulations::CheckDepositSubmitParams
        def submit(check_deposit_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/check_deposits/%1$s/submit", check_deposit_id],
            model: Increase::Models::CheckDeposit,
            options: params[:request_options]
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
