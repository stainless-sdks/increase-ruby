# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundRealTimePaymentsTransfers
        # Simulates an
        # [Inbound Real-Time Payments Transfer](#inbound-real-time-payments-transfers) to
        # your account. Real-Time Payments are a beta feature.
        sig do
          params(
            account_number_id: String,
            amount: Integer,
            debtor_account_number: String,
            debtor_name: String,
            debtor_routing_number: String,
            remittance_information: String,
            request_for_payment_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::InboundRealTimePaymentsTransfer)
        end
        def create(
          # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/account_number_id
          account_number_id:,
          # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_account_number
          debtor_account_number: nil,
          # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_name
          debtor_name: nil,
          # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_routing_number
          debtor_routing_number: nil,
          # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/remittance_information
          remittance_information: nil,
          # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/request_for_payment_id
          request_for_payment_id: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
