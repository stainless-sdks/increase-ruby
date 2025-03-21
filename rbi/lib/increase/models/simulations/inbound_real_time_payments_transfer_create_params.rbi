# typed: strong

module Increase
  module Models
    module Simulations
      class InboundRealTimePaymentsTransferCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The identifier of the Account Number the inbound Real-Time Payments Transfer is
        #   for.
        sig { returns(String) }
        def account_number_id
        end

        sig { params(_: String).returns(String) }
        def account_number_id=(_)
        end

        # The transfer amount in USD cents. Must be positive.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The account number of the account that sent the transfer.
        sig { returns(T.nilable(String)) }
        def debtor_account_number
        end

        sig { params(_: String).returns(String) }
        def debtor_account_number=(_)
        end

        # The name provided by the sender of the transfer.
        sig { returns(T.nilable(String)) }
        def debtor_name
        end

        sig { params(_: String).returns(String) }
        def debtor_name=(_)
        end

        # The routing number of the account that sent the transfer.
        sig { returns(T.nilable(String)) }
        def debtor_routing_number
        end

        sig { params(_: String).returns(String) }
        def debtor_routing_number=(_)
        end

        # Additional information included with the transfer.
        sig { returns(T.nilable(String)) }
        def remittance_information
        end

        sig { params(_: String).returns(String) }
        def remittance_information=(_)
        end

        # The identifier of a pending Request for Payment that this transfer will fulfill.
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
            request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
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
        )
        end

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
        def to_hash
        end
      end
    end
  end
end
