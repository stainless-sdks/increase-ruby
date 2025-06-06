# typed: strong

module Increase
  module Models
    module Simulations
      class InterestPaymentCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Increase::Simulations::InterestPaymentCreateParams,
              Increase::Internal::AnyHash
            )
          end

        # The identifier of the Account the Interest Payment should be paid to is for.
        sig { returns(String) }
        attr_accessor :account_id

        # The interest amount in cents. Must be positive.
        sig { returns(Integer) }
        attr_accessor :amount

        # The identifier of the Account the Interest accrued on. Defaults to `account_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :accrued_on_account_id

        sig { params(accrued_on_account_id: String).void }
        attr_writer :accrued_on_account_id

        # The end of the interest period. If not provided, defaults to the current time.
        sig { returns(T.nilable(Time)) }
        attr_reader :period_end

        sig { params(period_end: Time).void }
        attr_writer :period_end

        # The start of the interest period. If not provided, defaults to the current time.
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
            request_options: Increase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The identifier of the Account the Interest Payment should be paid to is for.
          account_id:,
          # The interest amount in cents. Must be positive.
          amount:,
          # The identifier of the Account the Interest accrued on. Defaults to `account_id`.
          accrued_on_account_id: nil,
          # The end of the interest period. If not provided, defaults to the current time.
          period_end: nil,
          # The start of the interest period. If not provided, defaults to the current time.
          period_start: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
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
        def to_hash
        end
      end
    end
  end
end
