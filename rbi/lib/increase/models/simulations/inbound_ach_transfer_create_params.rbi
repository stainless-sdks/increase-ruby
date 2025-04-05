# typed: strong

module Increase
  module Models
    module Simulations
      class InboundACHTransferCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # The identifier of the Account Number the inbound ACH Transfer is for.
        sig { returns(String) }
        attr_accessor :account_number_id

        # The transfer amount in cents. A positive amount originates a credit transfer
        #   pushing funds to the receiving account. A negative amount originates a debit
        #   transfer pulling funds from the receiving account.
        sig { returns(Integer) }
        attr_accessor :amount

        # The description of the date of the transfer.
        sig { returns(T.nilable(String)) }
        attr_reader :company_descriptive_date

        sig { params(company_descriptive_date: String).void }
        attr_writer :company_descriptive_date

        # Data associated with the transfer set by the sender.
        sig { returns(T.nilable(String)) }
        attr_reader :company_discretionary_data

        sig { params(company_discretionary_data: String).void }
        attr_writer :company_discretionary_data

        # The description of the transfer set by the sender.
        sig { returns(T.nilable(String)) }
        attr_reader :company_entry_description

        sig { params(company_entry_description: String).void }
        attr_writer :company_entry_description

        # The sender's company ID.
        sig { returns(T.nilable(String)) }
        attr_reader :company_id

        sig { params(company_id: String).void }
        attr_writer :company_id

        # The name of the sender.
        sig { returns(T.nilable(String)) }
        attr_reader :company_name

        sig { params(company_name: String).void }
        attr_writer :company_name

        # The ID of the receiver of the transfer.
        sig { returns(T.nilable(String)) }
        attr_reader :receiver_id_number

        sig { params(receiver_id_number: String).void }
        attr_writer :receiver_id_number

        # The name of the receiver of the transfer.
        sig { returns(T.nilable(String)) }
        attr_reader :receiver_name

        sig { params(receiver_name: String).void }
        attr_writer :receiver_name

        # The time at which the transfer should be resolved. If not provided will resolve
        #   immediately.
        sig { returns(T.nilable(Time)) }
        attr_reader :resolve_at

        sig { params(resolve_at: Time).void }
        attr_writer :resolve_at

        # The standard entry class code for the transfer.
        sig do
          returns(
            T.nilable(Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol)
          )
        end
        attr_reader :standard_entry_class_code

        sig do
          params(
            standard_entry_class_code: Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol
          )
            .void
        end
        attr_writer :standard_entry_class_code

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
            standard_entry_class_code: Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
            request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
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
        ); end
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
                standard_entry_class_code: Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash; end

        # The standard entry class code for the transfer.
        module StandardEntryClassCode
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
              )
            end

          # Corporate Credit and Debit (CCD).
          CORPORATE_CREDIT_OR_DEBIT =
            T.let(
              :corporate_credit_or_debit,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Corporate Trade Exchange (CTX).
          CORPORATE_TRADE_EXCHANGE =
            T.let(
              :corporate_trade_exchange,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Prearranged Payments and Deposits (PPD).
          PREARRANGED_PAYMENTS_AND_DEPOSIT =
            T.let(
              :prearranged_payments_and_deposit,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Internet Initiated (WEB).
          INTERNET_INITIATED =
            T.let(
              :internet_initiated,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Point of Sale (POS).
          POINT_OF_SALE =
            T.let(
              :point_of_sale,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Telephone Initiated (TEL).
          TELEPHONE_INITIATED =
            T.let(
              :telephone_initiated,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Customer Initiated (CIE).
          CUSTOMER_INITIATED =
            T.let(
              :customer_initiated,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Accounts Receivable (ARC).
          ACCOUNTS_RECEIVABLE =
            T.let(
              :accounts_receivable,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Machine Transfer (MTE).
          MACHINE_TRANSFER =
            T.let(
              :machine_transfer,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Shared Network Transaction (SHR).
          SHARED_NETWORK_TRANSACTION =
            T.let(
              :shared_network_transaction,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Represented Check (RCK).
          REPRESENTED_CHECK =
            T.let(
              :represented_check,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Back Office Conversion (BOC).
          BACK_OFFICE_CONVERSION =
            T.let(
              :back_office_conversion,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Point of Purchase (POP).
          POINT_OF_PURCHASE =
            T.let(
              :point_of_purchase,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Check Truncation (TRC).
          CHECK_TRUNCATION =
            T.let(
              :check_truncation,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Destroyed Check (XCK).
          DESTROYED_CHECK =
            T.let(
              :destroyed_check,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # International ACH Transaction (IAT).
          INTERNATIONAL_ACH_TRANSACTION =
            T.let(
              :international_ach_transaction,
              Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end
    end
  end
end
