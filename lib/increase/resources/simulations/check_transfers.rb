# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CheckTransfers
        def initialize(client:)
          @client = client
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
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/check_transfers/#{check_transfer_id}/mail"
          req[:model] = Increase::Models::CheckTransfer
          @client.request(req, opts)
        end
      end
    end
  end
end
