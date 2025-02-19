# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundWireTransfers
        sig do
          params(
              account_number_id: String,
              amount: Integer,
              beneficiary_address_line1: String,
              beneficiary_address_line2: String,
              beneficiary_address_line3: String,
              beneficiary_name: String,
              beneficiary_reference: String,
              originator_address_line1: String,
              originator_address_line2: String,
              originator_address_line3: String,
              originator_name: String,
              originator_routing_number: String,
              originator_to_beneficiary_information_line1: String,
              originator_to_beneficiary_information_line2: String,
              originator_to_beneficiary_information_line3: String,
              originator_to_beneficiary_information_line4: String,
              sender_reference: String,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::InboundWireTransfer)
        end
        def create(
          account_number_id:,
          amount:,
          beneficiary_address_line1: nil,
          beneficiary_address_line2: nil,
          beneficiary_address_line3: nil,
          beneficiary_name: nil,
          beneficiary_reference: nil,
          originator_address_line1: nil,
          originator_address_line2: nil,
          originator_address_line3: nil,
          originator_name: nil,
          originator_routing_number: nil,
          originator_to_beneficiary_information_line1: nil,
          originator_to_beneficiary_information_line2: nil,
          originator_to_beneficiary_information_line3: nil,
          originator_to_beneficiary_information_line4: nil,
          sender_reference: nil,
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
