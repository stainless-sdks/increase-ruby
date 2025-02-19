# typed: strong

module Increase
  module Models
    module Simulations
      class InboundACHTransferCreateParams < Increase::BaseModel
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
        def company_descriptive_date
        end

        sig { params(_: String).returns(String) }
        def company_descriptive_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def company_discretionary_data
        end

        sig { params(_: String).returns(String) }
        def company_discretionary_data=(_)
        end

        sig { returns(T.nilable(String)) }
        def company_entry_description
        end

        sig { params(_: String).returns(String) }
        def company_entry_description=(_)
        end

        sig { returns(T.nilable(String)) }
        def company_id
        end

        sig { params(_: String).returns(String) }
        def company_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def company_name
        end

        sig { params(_: String).returns(String) }
        def company_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def receiver_id_number
        end

        sig { params(_: String).returns(String) }
        def receiver_id_number=(_)
        end

        sig { returns(T.nilable(String)) }
        def receiver_name
        end

        sig { params(_: String).returns(String) }
        def receiver_name=(_)
        end

        sig { returns(T.nilable(Time)) }
        def resolve_at
        end

        sig { params(_: Time).returns(Time) }
        def resolve_at=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def standard_entry_class_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def standard_entry_class_code=(_)
        end

        sig do
          params(
              account_number_id: String,
              amount: Integer,
              company_descriptive_date: String,
              company_discretionary_data: String,
              company_entry_description: String,
              company_id: String,
              company_name: String,
              receiver_id_number: String,
              receiver_name: String,
              resolve_at: Time,
              standard_entry_class_code: Symbol,
              request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
            )
            .void
        end
        def initialize(
          account_number_id:,
          amount:,
          company_descriptive_date: nil,
          company_discretionary_data: nil,
          company_entry_description: nil,
          company_id: nil,
          company_name: nil,
          receiver_id_number: nil,
          receiver_name: nil,
          resolve_at: nil,
          standard_entry_class_code: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                account_number_id: String,
                amount: Integer,
                company_descriptive_date: String,
                company_discretionary_data: String,
                company_entry_description: String,
                company_id: String,
                company_name: String,
                receiver_id_number: String,
                receiver_name: String,
                resolve_at: Time,
                standard_entry_class_code: Symbol,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash
        end

        class StandardEntryClassCode < Increase::Enum
          abstract!

          # Corporate Credit and Debit (CCD).
          CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

          # Corporate Trade Exchange (CTX).
          CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

          # Prearranged Payments and Deposits (PPD).
          PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

          # Internet Initiated (WEB).
          INTERNET_INITIATED = :internet_initiated

          # Point of Sale (POS).
          POINT_OF_SALE = :point_of_sale

          # Telephone Initiated (TEL).
          TELEPHONE_INITIATED = :telephone_initiated

          # Customer Initiated (CIE).
          CUSTOMER_INITIATED = :customer_initiated

          # Accounts Receivable (ARC).
          ACCOUNTS_RECEIVABLE = :accounts_receivable

          # Machine Transfer (MTE).
          MACHINE_TRANSFER = :machine_transfer

          # Shared Network Transaction (SHR).
          SHARED_NETWORK_TRANSACTION = :shared_network_transaction

          # Represented Check (RCK).
          REPRESENTED_CHECK = :represented_check

          # Back Office Conversion (BOC).
          BACK_OFFICE_CONVERSION = :back_office_conversion

          # Point of Purchase (POP).
          POINT_OF_PURCHASE = :point_of_purchase

          # Check Truncation (TRC).
          CHECK_TRUNCATION = :check_truncation

          # Destroyed Check (XCK).
          DESTROYED_CHECK = :destroyed_check

          # International ACH Transaction (IAT).
          INTERNATIONAL_ACH_TRANSACTION = :international_ach_transaction

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
