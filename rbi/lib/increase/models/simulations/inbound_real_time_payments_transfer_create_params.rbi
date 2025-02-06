# typed: strong

module Increase
  module Models
    module Simulations
      class InboundRealTimePaymentsTransferCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        attr_accessor :account_number_id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(T.nilable(String)) }
        attr_reader :debtor_account_number

        sig { params(debtor_account_number: String).void }
        attr_writer :debtor_account_number

        sig { returns(T.nilable(String)) }
        attr_reader :debtor_name

        sig { params(debtor_name: String).void }
        attr_writer :debtor_name

        sig { returns(T.nilable(String)) }
        attr_reader :debtor_routing_number

        sig { params(debtor_routing_number: String).void }
        attr_writer :debtor_routing_number

        sig { returns(T.nilable(String)) }
        attr_reader :remittance_information

        sig { params(remittance_information: String).void }
        attr_writer :remittance_information

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
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          account_number_id:,
          amount:,
          debtor_account_number: nil,
          debtor_name: nil,
          debtor_routing_number: nil,
          remittance_information: nil,
          request_for_payment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
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
        def to_hash
        end
      end
    end
  end
end
