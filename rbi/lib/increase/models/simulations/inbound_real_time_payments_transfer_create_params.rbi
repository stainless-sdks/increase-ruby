# typed: strong

module Increase
  module Models
    module Simulations
      class InboundRealTimePaymentsTransferCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/account_number_id
        sig { returns(String) }
        attr_accessor :account_number_id

        # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_account_number
        sig { returns(T.nilable(String)) }
        attr_reader :debtor_account_number

        sig { params(debtor_account_number: String).void }
        attr_writer :debtor_account_number

        # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_name
        sig { returns(T.nilable(String)) }
        attr_reader :debtor_name

        sig { params(debtor_name: String).void }
        attr_writer :debtor_name

        # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_routing_number
        sig { returns(T.nilable(String)) }
        attr_reader :debtor_routing_number

        sig { params(debtor_routing_number: String).void }
        attr_writer :debtor_routing_number

        # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/remittance_information
        sig { returns(T.nilable(String)) }
        attr_reader :remittance_information

        sig { params(remittance_information: String).void }
        attr_writer :remittance_information

        # #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/request_for_payment_id
        sig { returns(T.nilable(String)) }
        attr_reader :request_for_payment_id

        sig { params(request_for_payment_id: String).void }
        attr_writer :request_for_payment_id

        sig do
          params(
            account_number_id: String,
            amount: Integer,
            debtor_account_number: String,
            debtor_name: String,
            debtor_routing_number: String,
            remittance_information: String,
            request_for_payment_id: String,
            request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_number_id:,
          amount:,
          debtor_account_number: nil,
          debtor_name: nil,
          debtor_routing_number: nil,
          remittance_information: nil,
          request_for_payment_id: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                account_number_id: String,
                amount: Integer,
                debtor_account_number: String,
                debtor_name: String,
                debtor_routing_number: String,
                remittance_information: String,
                request_for_payment_id: String,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
