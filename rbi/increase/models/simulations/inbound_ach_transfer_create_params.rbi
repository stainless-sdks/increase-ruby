# typed: strong

module Increase
  module Models
    module Simulations
      class InboundACHTransferCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(Increase::Simulations::InboundACHTransferCreateParams, Increase::Internal::AnyHash) }

        # The identifier of the Account Number the inbound ACH Transfer is for.
        sig { returns(String) }
        attr_accessor :account_number_id

        # The transfer amount in cents. A positive amount originates a credit transfer
        # pushing funds to the receiving account. A negative amount originates a debit
        # transfer pulling funds from the receiving account.
        sig { returns(Integer) }
        attr_accessor :amount

        # Additional information to include in the transfer.
        sig { returns(T.nilable(Increase::Simulations::InboundACHTransferCreateParams::Addenda)) }
        attr_reader :addenda

        sig { params(addenda: Increase::Simulations::InboundACHTransferCreateParams::Addenda::OrHash).void }
        attr_writer :addenda

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
        # immediately.
        sig { returns(T.nilable(Time)) }
        attr_reader :resolve_at

        sig { params(resolve_at: Time).void }
        attr_writer :resolve_at

        # The standard entry class code for the transfer.
        sig do
          returns(
            T.nilable(Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol)
          )
        end
        attr_reader :standard_entry_class_code

        sig do
          params(
            standard_entry_class_code: Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol
          )
            .void
        end
        attr_writer :standard_entry_class_code

        sig do
          params(
            account_number_id: String,
            amount: Integer,
            addenda: Increase::Simulations::InboundACHTransferCreateParams::Addenda::OrHash,
            company_descriptive_date: String,
            company_discretionary_data: String,
            company_entry_description: String,
            company_id: String,
            company_name: String,
            receiver_id_number: String,
            receiver_name: String,
            resolve_at: Time,
            standard_entry_class_code: Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
            request_options: Increase::RequestOptions::OrHash
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The identifier of the Account Number the inbound ACH Transfer is for.
        account_number_id:,
          # The transfer amount in cents. A positive amount originates a credit transfer
        # pushing funds to the receiving account. A negative amount originates a debit
        # transfer pulling funds from the receiving account.
        amount:,
          # Additional information to include in the transfer.
        addenda: nil,
          # The description of the date of the transfer.
        company_descriptive_date: nil,
          # Data associated with the transfer set by the sender.
        company_discretionary_data: nil,
          # The description of the transfer set by the sender.
        company_entry_description: nil,
          # The sender's company ID.
        company_id: nil,
          # The name of the sender.
        company_name: nil,
          # The ID of the receiver of the transfer.
        receiver_id_number: nil,
          # The name of the receiver of the transfer.
        receiver_name: nil,
          # The time at which the transfer should be resolved. If not provided will resolve
        # immediately.
        resolve_at: nil,
          # The standard entry class code for the transfer.
        standard_entry_class_code: nil,
          request_options: {}
        ); end

        sig do
          override
            .returns(
              {
                account_number_id: String,
                amount: Integer,
                addenda: Increase::Simulations::InboundACHTransferCreateParams::Addenda,
                company_descriptive_date: String,
                company_discretionary_data: String,
                company_entry_description: String,
                company_id: String,
                company_name: String,
                receiver_id_number: String,
                receiver_name: String,
                resolve_at: Time,
                standard_entry_class_code: Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash; end

        class Addenda < Increase::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Increase::Simulations::InboundACHTransferCreateParams::Addenda, Increase::Internal::AnyHash) }

          # The type of addenda to simulate being sent with the transfer.
          sig { returns(Increase::Simulations::InboundACHTransferCreateParams::Addenda::Category::OrSymbol) }
          attr_accessor :category

          # Unstructured `payment_related_information` passed through with the transfer.
          sig { returns(T.nilable(Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform)) }
          attr_reader :freeform

          sig { params(freeform: Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform::OrHash).void }
          attr_writer :freeform

          # Additional information to include in the transfer.
          sig do
            params(
              category: Increase::Simulations::InboundACHTransferCreateParams::Addenda::Category::OrSymbol,
              freeform: Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform::OrHash
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The type of addenda to simulate being sent with the transfer.
          category:,
            # Unstructured `payment_related_information` passed through with the transfer.
          freeform: nil
          ); end

          sig do
            override
              .returns(
                {
                  category: Increase::Simulations::InboundACHTransferCreateParams::Addenda::Category::OrSymbol,
                  freeform: Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform
                }
              )
          end
          def to_hash; end

          # The type of addenda to simulate being sent with the transfer.
          module Category
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Simulations::InboundACHTransferCreateParams::Addenda::Category) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            # Unstructured `payment_related_information` passed through with the transfer.
            FREEFORM =
              T.let(:freeform, Increase::Simulations::InboundACHTransferCreateParams::Addenda::Category::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Simulations::InboundACHTransferCreateParams::Addenda::Category::TaggedSymbol])
            end
            def self.values; end
          end

          class Freeform < Increase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform,
                  Increase::Internal::AnyHash
                )
              end

            # Each entry represents an addendum sent with the transfer.
            sig { returns(T::Array[Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform::Entry]) }
            attr_accessor :entries

            # Unstructured `payment_related_information` passed through with the transfer.
            sig do
              params(
                entries: T::Array[Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform::Entry::OrHash]
              )
                .returns(T.attached_class)
            end
            def self.new(
              # Each entry represents an addendum sent with the transfer.
            entries:
            ); end

            sig do
              override
                .returns(
                  {entries: T::Array[Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform::Entry]}
                )
            end
            def to_hash; end

            class Entry < Increase::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Increase::Simulations::InboundACHTransferCreateParams::Addenda::Freeform::Entry,
                    Increase::Internal::AnyHash
                  )
                end

              # The payment related information passed in the addendum.
              sig { returns(String) }
              attr_accessor :payment_related_information

              sig { params(payment_related_information: String).returns(T.attached_class) }
              def self.new(
                # The payment related information passed in the addendum.
              payment_related_information:
              ); end

              sig { override.returns({payment_related_information: String}) }
              def to_hash; end
            end
          end
        end

        # The standard entry class code for the transfer.
        module StandardEntryClassCode
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # Corporate Credit and Debit (CCD).
          CORPORATE_CREDIT_OR_DEBIT =
            T.let(
              :corporate_credit_or_debit,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Corporate Trade Exchange (CTX).
          CORPORATE_TRADE_EXCHANGE =
            T.let(
              :corporate_trade_exchange,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Prearranged Payments and Deposits (PPD).
          PREARRANGED_PAYMENTS_AND_DEPOSIT =
            T.let(
              :prearranged_payments_and_deposit,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Internet Initiated (WEB).
          INTERNET_INITIATED =
            T.let(
              :internet_initiated,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Point of Sale (POS).
          POINT_OF_SALE =
            T.let(
              :point_of_sale,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Telephone Initiated (TEL).
          TELEPHONE_INITIATED =
            T.let(
              :telephone_initiated,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Customer Initiated (CIE).
          CUSTOMER_INITIATED =
            T.let(
              :customer_initiated,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Accounts Receivable (ARC).
          ACCOUNTS_RECEIVABLE =
            T.let(
              :accounts_receivable,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Machine Transfer (MTE).
          MACHINE_TRANSFER =
            T.let(
              :machine_transfer,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Shared Network Transaction (SHR).
          SHARED_NETWORK_TRANSACTION =
            T.let(
              :shared_network_transaction,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Represented Check (RCK).
          REPRESENTED_CHECK =
            T.let(
              :represented_check,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Back Office Conversion (BOC).
          BACK_OFFICE_CONVERSION =
            T.let(
              :back_office_conversion,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Point of Purchase (POP).
          POINT_OF_PURCHASE =
            T.let(
              :point_of_purchase,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Check Truncation (TRC).
          CHECK_TRUNCATION =
            T.let(
              :check_truncation,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # Destroyed Check (XCK).
          DESTROYED_CHECK =
            T.let(
              :destroyed_check,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          # International ACH Transaction (IAT).
          INTERNATIONAL_ACH_TRANSACTION =
            T.let(
              :international_ach_transaction,
              Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Increase::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end
    end
  end
end
