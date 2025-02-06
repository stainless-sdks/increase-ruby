# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundWireDrawdownRequests
        sig do
          params(
            amount: Integer,
            beneficiary_account_number: String,
            beneficiary_routing_number: String,
            currency: String,
            message_to_recipient: String,
            originator_account_number: String,
            originator_routing_number: String,
            recipient_account_number_id: String,
            beneficiary_address_line1: String,
            beneficiary_address_line2: String,
            beneficiary_address_line3: String,
            beneficiary_name: String,
            originator_address_line1: String,
            originator_address_line2: String,
            originator_address_line3: String,
            originator_name: String,
            originator_to_beneficiary_information_line1: String,
            originator_to_beneficiary_information_line2: String,
            originator_to_beneficiary_information_line3: String,
            originator_to_beneficiary_information_line4: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Increase::Models::InboundWireDrawdownRequest)
        end
        def create(
          amount:,
          beneficiary_account_number:,
          beneficiary_routing_number:,
          currency:,
          message_to_recipient:,
          originator_account_number:,
          originator_routing_number:,
          recipient_account_number_id:,
          beneficiary_address_line1: nil,
          beneficiary_address_line2: nil,
          beneficiary_address_line3: nil,
          beneficiary_name: nil,
          originator_address_line1: nil,
          originator_address_line2: nil,
          originator_address_line3: nil,
          originator_name: nil,
          originator_to_beneficiary_information_line1: nil,
          originator_to_beneficiary_information_line2: nil,
          originator_to_beneficiary_information_line3: nil,
          originator_to_beneficiary_information_line4: nil,
          request_options: {}
        )
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
