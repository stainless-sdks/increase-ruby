# typed: strong

module Increase
  module Models
    module Simulations
      class InterestPaymentCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/account_id
        sig { returns(String) }
        attr_accessor :account_id

        # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/accrued_on_account_id
        sig { returns(T.nilable(String)) }
        attr_reader :accrued_on_account_id

        sig { params(accrued_on_account_id: String).void }
        attr_writer :accrued_on_account_id

        # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/period_end
        sig { returns(T.nilable(Time)) }
        attr_reader :period_end

        sig { params(period_end: Time).void }
        attr_writer :period_end

        # #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/period_start
        sig { returns(T.nilable(Time)) }
        attr_reader :period_start

        sig { params(period_start: Time).void }
        attr_writer :period_start

        sig do
          params(
            account_id: String,
            amount: Integer,
            accrued_on_account_id: String,
            period_end: Time,
            period_start: Time,
            request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_id:,
          amount:,
          accrued_on_account_id: nil,
          period_end: nil,
          period_start: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                account_id: String,
                amount: Integer,
                accrued_on_account_id: String,
                period_end: Time,
                period_start: Time,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
