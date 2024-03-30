# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CheckTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates a [Check Transfer](#check-transfers) being deposited at a bank. This
        #   transfer must first have a `status` of `mailed`.
        #
        # @param check_transfer_id [String] The identifier of the Check Transfer you wish to mark deposited.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CheckTransfer]
        def deposit(check_transfer_id, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/check_transfers/#{check_transfer_id}/deposit"
          request[:model] = Increase::Models::CheckTransfer
          request.merge!(opts)
          @client.request(request)
        end

        # Simulates the mailing of a [Check Transfer](#check-transfers), which happens
        #   once per weekday in production but can be sped up in sandbox. This transfer must
        #   first have a `status` of `pending_approval` or `pending_submission`.
        #
        # @param check_transfer_id [String] The identifier of the Check Transfer you wish to mail.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CheckTransfer]
        def mail(check_transfer_id, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/check_transfers/#{check_transfer_id}/mail"
          request[:model] = Increase::Models::CheckTransfer
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
