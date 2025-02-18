# typed: strong

module Increase
  module Models
    module Simulations
      class InboundRealTimePaymentsTransferCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        def account_number_id
        end

        sig { params(_: String).returns(String) }
        def account_number_id=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def debtor_account_number
        end

        sig { params(_: String).returns(String) }
        def debtor_account_number=(_)
        end

        sig { returns(T.nilable(String)) }
        def debtor_name
        end

        sig { params(_: String).returns(String) }
        def debtor_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def debtor_routing_number
        end

        sig { params(_: String).returns(String) }
        def debtor_routing_number=(_)
        end

        sig { returns(T.nilable(String)) }
        def remittance_information
        end

        sig { params(_: String).returns(String) }
        def remittance_information=(_)
        end

        sig { returns(T.nilable(String)) }
        def request_for_payment_id
        end

        sig { params(_: String).returns(String) }
        def request_for_payment_id=(_)
        end

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
