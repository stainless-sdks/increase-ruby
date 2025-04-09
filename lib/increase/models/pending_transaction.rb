# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PendingTransactions#retrieve
    class PendingTransaction < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/pending_transaction/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/pending_transaction/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/pending_transaction/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute completed_at
      #   #/components/schemas/pending_transaction/properties/completed_at
      #
      #   @return [Time, nil]
      required :completed_at, Time, nil?: true

      # @!attribute created_at
      #   #/components/schemas/pending_transaction/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   #/components/schemas/pending_transaction/properties/currency
      #
      #   @return [Symbol, Increase::Models::PendingTransaction::Currency]
      required :currency, enum: -> { Increase::Models::PendingTransaction::Currency }

      # @!attribute description
      #   #/components/schemas/pending_transaction/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute route_id
      #   #/components/schemas/pending_transaction/properties/route_id
      #
      #   @return [String, nil]
      required :route_id, String, nil?: true

      # @!attribute route_type
      #   #/components/schemas/pending_transaction/properties/route_type
      #
      #   @return [Symbol, Increase::Models::PendingTransaction::RouteType, nil]
      required :route_type, enum: -> { Increase::Models::PendingTransaction::RouteType }, nil?: true

      # @!attribute source
      #   #/components/schemas/pending_transaction/properties/source
      #
      #   @return [Increase::Models::PendingTransaction::Source]
      required :source, -> { Increase::Models::PendingTransaction::Source }

      # @!attribute status
      #   #/components/schemas/pending_transaction/properties/status
      #
      #   @return [Symbol, Increase::Models::PendingTransaction::Status]
      required :status, enum: -> { Increase::Models::PendingTransaction::Status }

      # @!attribute type
      #   #/components/schemas/pending_transaction/properties/type
      #
      #   @return [Symbol, Increase::Models::PendingTransaction::Type]
      required :type, enum: -> { Increase::Models::PendingTransaction::Type }

      # @!parse
      #   # #/components/schemas/pending_transaction
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param completed_at [Time, nil]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, Increase::Models::PendingTransaction::Currency]
      #   # @param description [String]
      #   # @param route_id [String, nil]
      #   # @param route_type [Symbol, Increase::Models::PendingTransaction::RouteType, nil]
      #   # @param source [Increase::Models::PendingTransaction::Source]
      #   # @param status [Symbol, Increase::Models::PendingTransaction::Status]
      #   # @param type [Symbol, Increase::Models::PendingTransaction::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     amount:,
      #     completed_at:,
      #     created_at:,
      #     currency:,
      #     description:,
      #     route_id:,
      #     route_type:,
      #     source:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/pending_transaction/properties/currency
      #
      # @see Increase::Models::PendingTransaction#currency
      module Currency
        extend Increase::Internal::Type::Enum

        # Canadian Dollar (CAD)
        CAD = :CAD

        # Swiss Franc (CHF)
        CHF = :CHF

        # Euro (EUR)
        EUR = :EUR

        # British Pound (GBP)
        GBP = :GBP

        # Japanese Yen (JPY)
        JPY = :JPY

        # US Dollar (USD)
        USD = :USD

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/pending_transaction/properties/route_type
      #
      # @see Increase::Models::PendingTransaction#route_type
      module RouteType
        extend Increase::Internal::Type::Enum

        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::PendingTransaction#source
      class Source < Increase::Internal::Type::BaseModel
        # @!attribute account_transfer_instruction
        #   #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction
        #
        #   @return [Increase::Models::PendingTransaction::Source::AccountTransferInstruction, nil]
        required :account_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::AccountTransferInstruction },
                 nil?: true

        # @!attribute ach_transfer_instruction
        #   #/components/schemas/pending_transaction/properties/source/properties/ach_transfer_instruction
        #
        #   @return [Increase::Models::PendingTransaction::Source::ACHTransferInstruction, nil]
        required :ach_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::ACHTransferInstruction },
                 nil?: true

        # @!attribute card_authorization
        #   #/components/schemas/pending_transaction/properties/source/properties/card_authorization
        #
        #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization, nil]
        required :card_authorization,
                 -> { Increase::Models::PendingTransaction::Source::CardAuthorization },
                 nil?: true

        # @!attribute category
        #   #/components/schemas/pending_transaction/properties/source/properties/category
        #
        #   @return [Symbol, Increase::Models::PendingTransaction::Source::Category]
        required :category, enum: -> { Increase::Models::PendingTransaction::Source::Category }

        # @!attribute check_deposit_instruction
        #   #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction
        #
        #   @return [Increase::Models::PendingTransaction::Source::CheckDepositInstruction, nil]
        required :check_deposit_instruction,
                 -> { Increase::Models::PendingTransaction::Source::CheckDepositInstruction },
                 nil?: true

        # @!attribute check_transfer_instruction
        #   #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction
        #
        #   @return [Increase::Models::PendingTransaction::Source::CheckTransferInstruction, nil]
        required :check_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::CheckTransferInstruction },
                 nil?: true

        # @!attribute inbound_funds_hold
        #   #/components/schemas/pending_transaction/properties/source/properties/inbound_funds_hold
        #
        #   @return [Increase::Models::PendingTransaction::Source::InboundFundsHold, nil]
        required :inbound_funds_hold,
                 -> { Increase::Models::PendingTransaction::Source::InboundFundsHold },
                 nil?: true

        # @!attribute inbound_wire_transfer_reversal
        #   #/components/schemas/pending_transaction/properties/source/properties/inbound_wire_transfer_reversal
        #
        #   @return [Increase::Models::PendingTransaction::Source::InboundWireTransferReversal, nil]
        required :inbound_wire_transfer_reversal,
                 -> { Increase::Models::PendingTransaction::Source::InboundWireTransferReversal },
                 nil?: true

        # @!attribute other
        #   #/components/schemas/pending_transaction/properties/source/properties/other
        #
        #   @return [Object, nil]
        required :other, Increase::Internal::Type::Unknown, nil?: true

        # @!attribute real_time_payments_transfer_instruction
        #   #/components/schemas/pending_transaction/properties/source/properties/real_time_payments_transfer_instruction
        #
        #   @return [Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction, nil]
        required :real_time_payments_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction },
                 nil?: true

        # @!attribute wire_transfer_instruction
        #   #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction
        #
        #   @return [Increase::Models::PendingTransaction::Source::WireTransferInstruction, nil]
        required :wire_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::WireTransferInstruction },
                 nil?: true

        # @!parse
        #   # #/components/schemas/pending_transaction/properties/source
        #   #
        #   # @param account_transfer_instruction [Increase::Models::PendingTransaction::Source::AccountTransferInstruction, nil]
        #   # @param ach_transfer_instruction [Increase::Models::PendingTransaction::Source::ACHTransferInstruction, nil]
        #   # @param card_authorization [Increase::Models::PendingTransaction::Source::CardAuthorization, nil]
        #   # @param category [Symbol, Increase::Models::PendingTransaction::Source::Category]
        #   # @param check_deposit_instruction [Increase::Models::PendingTransaction::Source::CheckDepositInstruction, nil]
        #   # @param check_transfer_instruction [Increase::Models::PendingTransaction::Source::CheckTransferInstruction, nil]
        #   # @param inbound_funds_hold [Increase::Models::PendingTransaction::Source::InboundFundsHold, nil]
        #   # @param inbound_wire_transfer_reversal [Increase::Models::PendingTransaction::Source::InboundWireTransferReversal, nil]
        #   # @param other [Object, nil]
        #   # @param real_time_payments_transfer_instruction [Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction, nil]
        #   # @param wire_transfer_instruction [Increase::Models::PendingTransaction::Source::WireTransferInstruction, nil]
        #   #
        #   def initialize(
        #     account_transfer_instruction:,
        #     ach_transfer_instruction:,
        #     card_authorization:,
        #     category:,
        #     check_deposit_instruction:,
        #     check_transfer_instruction:,
        #     inbound_funds_hold:,
        #     inbound_wire_transfer_reversal:,
        #     other:,
        #     real_time_payments_transfer_instruction:,
        #     wire_transfer_instruction:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::PendingTransaction::Source#account_transfer_instruction
        class AccountTransferInstruction < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency]
          required :currency,
                   enum: -> { Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency }

          # @!attribute transfer_id
          #   #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction
          #   #
          #   # @param amount [Integer]
          #   # @param currency [Symbol, Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(amount:, currency:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction/anyOf/0/properties/currency
          #
          # @see Increase::Models::PendingTransaction::Source::AccountTransferInstruction#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::PendingTransaction::Source#ach_transfer_instruction
        class ACHTransferInstruction < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/pending_transaction/properties/source/properties/ach_transfer_instruction/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute transfer_id
          #   #/components/schemas/pending_transaction/properties/source/properties/ach_transfer_instruction/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/ach_transfer_instruction
          #   #
          #   # @param amount [Integer]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(amount:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::PendingTransaction::Source#card_authorization
        class CardAuthorization < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_authorization/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute actioner
          #   #/components/schemas/card_authorization/properties/actioner
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner]
          required :actioner, enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner }

          # @!attribute amount
          #   #/components/schemas/card_authorization/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_payment_id
          #   #/components/schemas/card_authorization/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute currency
          #   #/components/schemas/card_authorization/properties/currency
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency]
          required :currency, enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Currency }

          # @!attribute digital_wallet_token_id
          #   #/components/schemas/card_authorization/properties/digital_wallet_token_id
          #
          #   @return [String, nil]
          required :digital_wallet_token_id, String, nil?: true

          # @!attribute direction
          #   #/components/schemas/card_authorization/properties/direction
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction]
          required :direction,
                   enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Direction }

          # @!attribute expires_at
          #   #/components/schemas/card_authorization/properties/expires_at
          #
          #   @return [Time]
          required :expires_at, Time

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_authorization/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_authorization/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_authorization/properties/merchant_city
          #
          #   @return [String, nil]
          required :merchant_city, String, nil?: true

          # @!attribute merchant_country
          #   #/components/schemas/card_authorization/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_descriptor
          #   #/components/schemas/card_authorization/properties/merchant_descriptor
          #
          #   @return [String]
          required :merchant_descriptor, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_authorization/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_authorization/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_details
          #   #/components/schemas/card_authorization/properties/network_details
          #
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails]
          required :network_details,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails }

          # @!attribute network_identifiers
          #   #/components/schemas/card_authorization/properties/network_identifiers
          #
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers }

          # @!attribute network_risk_score
          #   #/components/schemas/card_authorization/properties/network_risk_score
          #
          #   @return [Integer, nil]
          required :network_risk_score, Integer, nil?: true

          # @!attribute pending_transaction_id
          #   #/components/schemas/card_authorization/properties/pending_transaction_id
          #
          #   @return [String, nil]
          required :pending_transaction_id, String, nil?: true

          # @!attribute physical_card_id
          #   #/components/schemas/card_authorization/properties/physical_card_id
          #
          #   @return [String, nil]
          required :physical_card_id, String, nil?: true

          # @!attribute presentment_amount
          #   #/components/schemas/card_authorization/properties/presentment_amount
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   #/components/schemas/card_authorization/properties/presentment_currency
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute processing_category
          #   #/components/schemas/card_authorization/properties/processing_category
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory]
          required :processing_category,
                   enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory }

          # @!attribute real_time_decision_id
          #   #/components/schemas/card_authorization/properties/real_time_decision_id
          #
          #   @return [String, nil]
          required :real_time_decision_id, String, nil?: true

          # @!attribute terminal_id
          #   #/components/schemas/card_authorization/properties/terminal_id
          #
          #   @return [String, nil]
          required :terminal_id, String, nil?: true

          # @!attribute type
          #   #/components/schemas/card_authorization/properties/type
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Type]
          required :type, enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Type }

          # @!attribute verification
          #   #/components/schemas/card_authorization/properties/verification
          #
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification]
          required :verification,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification }

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/card_authorization
          #   #
          #   # @param id [String]
          #   # @param actioner [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner]
          #   # @param amount [Integer]
          #   # @param card_payment_id [String]
          #   # @param currency [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency]
          #   # @param digital_wallet_token_id [String, nil]
          #   # @param direction [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction]
          #   # @param expires_at [Time]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String, nil]
          #   # @param merchant_country [String]
          #   # @param merchant_descriptor [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_details [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails]
          #   # @param network_identifiers [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers]
          #   # @param network_risk_score [Integer, nil]
          #   # @param pending_transaction_id [String, nil]
          #   # @param physical_card_id [String, nil]
          #   # @param presentment_amount [Integer]
          #   # @param presentment_currency [String]
          #   # @param processing_category [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory]
          #   # @param real_time_decision_id [String, nil]
          #   # @param terminal_id [String, nil]
          #   # @param type [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Type]
          #   # @param verification [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification]
          #   #
          #   def initialize(
          #     id:,
          #     actioner:,
          #     amount:,
          #     card_payment_id:,
          #     currency:,
          #     digital_wallet_token_id:,
          #     direction:,
          #     expires_at:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_descriptor:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_details:,
          #     network_identifiers:,
          #     network_risk_score:,
          #     pending_transaction_id:,
          #     physical_card_id:,
          #     presentment_amount:,
          #     presentment_currency:,
          #     processing_category:,
          #     real_time_decision_id:,
          #     terminal_id:,
          #     type:,
          #     verification:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_authorization/properties/actioner
          #
          # @see Increase::Models::PendingTransaction::Source::CardAuthorization#actioner
          module Actioner
            extend Increase::Internal::Type::Enum

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authorization/properties/currency
          #
          # @see Increase::Models::PendingTransaction::Source::CardAuthorization#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authorization/properties/direction
          #
          # @see Increase::Models::PendingTransaction::Source::CardAuthorization#direction
          module Direction
            extend Increase::Internal::Type::Enum

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::PendingTransaction::Source::CardAuthorization#network_details
          class NetworkDetails < Increase::Internal::Type::BaseModel
            # @!attribute category
            #   #/components/schemas/card_authorization/properties/network_details/properties/category
            #
            #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category]
            required :category,
                     enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category }

            # @!attribute visa
            #   #/components/schemas/card_authorization/properties/network_details/properties/visa
            #
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa, nil]
            required :visa,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa },
                     nil?: true

            # @!parse
            #   # #/components/schemas/card_authorization/properties/network_details
            #   #
            #   # @param category [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category]
            #   # @param visa [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa, nil]
            #   #
            #   def initialize(category:, visa:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_authorization/properties/network_details/properties/category
            #
            # @see Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails#category
            module Category
              extend Increase::Internal::Type::Enum

              # Visa
              VISA = :visa

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails#visa
            class Visa < Increase::Internal::Type::BaseModel
              # @!attribute electronic_commerce_indicator
              #   #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              required :electronic_commerce_indicator,
                       enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator },
                       nil?: true

              # @!attribute point_of_service_entry_mode
              #   #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              required :point_of_service_entry_mode,
                       enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode },
                       nil?: true

              # @!attribute stand_in_processing_reason
              #   #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason, nil]
              required :stand_in_processing_reason,
                       enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason },
                       nil?: true

              # @!parse
              #   # #/components/schemas/card_authorization/properties/network_details/properties/visa
              #   #
              #   # @param electronic_commerce_indicator [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              #   # @param point_of_service_entry_mode [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              #   # @param stand_in_processing_reason [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason, nil]
              #   #
              #   def initialize(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              # @see Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa#electronic_commerce_indicator
              module ElectronicCommerceIndicator
                extend Increase::Internal::Type::Enum

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = :mail_phone_order

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = :recurring

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = :installment

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = :unknown_mail_phone_order

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = :secure_electronic_commerce

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  :non_authenticated_security_transaction_at_3ds_capable_merchant

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = :non_authenticated_security_transaction

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = :non_secure_transaction

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              # @see Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa#point_of_service_entry_mode
              module PointOfServiceEntryMode
                extend Increase::Internal::Type::Enum

                # Unknown
                UNKNOWN = :unknown

                # Manual key entry
                MANUAL = :manual

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = :magnetic_stripe_no_cvv

                # Optical code
                OPTICAL_CODE = :optical_code

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = :integrated_circuit_card

                # Contactless read of chip card
                CONTACTLESS = :contactless

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = :credential_on_file

                # Magnetic stripe read
                MAGNETIC_STRIPE = :magnetic_stripe

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = :contactless_magnetic_stripe

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = :integrated_circuit_card_no_cvv

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              # @see Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa#stand_in_processing_reason
              module StandInProcessingReason
                extend Increase::Internal::Type::Enum

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = :issuer_error

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = :invalid_physical_card

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                  :invalid_cardholder_authentication_verification_value

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = :internal_visa_error

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                  :merchant_transaction_advisory_service_authentication_required

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = :payment_fraud_disruption_acquirer_block

                # An unspecific reason for stand-in processing.
                OTHER = :other

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          # @see Increase::Models::PendingTransaction::Source::CardAuthorization#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute retrieval_reference_number
            #   #/components/schemas/card_authorization/properties/network_identifiers/properties/retrieval_reference_number
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!attribute trace_number
            #   #/components/schemas/card_authorization/properties/network_identifiers/properties/trace_number
            #
            #   @return [String, nil]
            required :trace_number, String, nil?: true

            # @!attribute transaction_id
            #   #/components/schemas/card_authorization/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_authorization/properties/network_identifiers
            #   #
            #   # @param retrieval_reference_number [String, nil]
            #   # @param trace_number [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # #/components/schemas/card_authorization/properties/processing_category
          #
          # @see Increase::Models::PendingTransaction::Source::CardAuthorization#processing_category
          module ProcessingCategory
            extend Increase::Internal::Type::Enum

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING = :account_funding

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER = :automatic_fuel_dispenser

            # A transaction used to pay a bill.
            BILL_PAYMENT = :bill_payment

            # A regular purchase.
            PURCHASE = :purchase

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH = :quasi_cash

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authorization/properties/type
          #
          # @see Increase::Models::PendingTransaction::Source::CardAuthorization#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_AUTHORIZATION = :card_authorization

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::PendingTransaction::Source::CardAuthorization#verification
          class Verification < Increase::Internal::Type::BaseModel
            # @!attribute card_verification_code
            #   #/components/schemas/card_authorization/properties/verification/properties/card_verification_code
            #
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode }

            # @!attribute cardholder_address
            #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address
            #
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress }

            # @!parse
            #   # #/components/schemas/card_authorization/properties/verification
            #   #
            #   # @param card_verification_code [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode]
            #   # @param cardholder_address [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress]
            #   #
            #   def initialize(card_verification_code:, cardholder_address:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::PendingTransaction::Source::CardAuthorization::Verification#card_verification_code
            class CardVerificationCode < Increase::Internal::Type::BaseModel
              # @!attribute result
              #   #/components/schemas/card_authorization/properties/verification/properties/card_verification_code/properties/result
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result }

              # @!parse
              #   # #/components/schemas/card_authorization/properties/verification/properties/card_verification_code
              #   #
              #   # @param result [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result]
              #   #
              #   def initialize(result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_authorization/properties/verification/properties/card_verification_code/properties/result
              #
              # @see Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode#result
              module Result
                extend Increase::Internal::Type::Enum

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::PendingTransaction::Source::CardAuthorization::Verification#cardholder_address
            class CardholderAddress < Increase::Internal::Type::BaseModel
              # @!attribute actual_line1
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/actual_line1
              #
              #   @return [String, nil]
              required :actual_line1, String, nil?: true

              # @!attribute actual_postal_code
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/actual_postal_code
              #
              #   @return [String, nil]
              required :actual_postal_code, String, nil?: true

              # @!attribute provided_line1
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/provided_line1
              #
              #   @return [String, nil]
              required :provided_line1, String, nil?: true

              # @!attribute provided_postal_code
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/provided_postal_code
              #
              #   @return [String, nil]
              required :provided_postal_code, String, nil?: true

              # @!attribute result
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/result
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result }

              # @!parse
              #   # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address
              #   #
              #   # @param actual_line1 [String, nil]
              #   # @param actual_postal_code [String, nil]
              #   # @param provided_line1 [String, nil]
              #   # @param provided_postal_code [String, nil]
              #   # @param result [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result]
              #   #
              #   def initialize(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/result
              #
              # @see Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress#result
              module Result
                extend Increase::Internal::Type::Enum

                # No address was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED = :postal_code_match_address_not_checked

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH = :postal_code_match_address_no_match

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH = :postal_code_no_match_address_match

                # Postal code and street address match.
                MATCH = :match

                # Postal code and street address do not match.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end
        end

        # #/components/schemas/pending_transaction/properties/source/properties/category
        #
        # @see Increase::Models::PendingTransaction::Source#category
        module Category
          extend Increase::Internal::Type::Enum

          # Account Transfer Instruction: details will be under the `account_transfer_instruction` object.
          ACCOUNT_TRANSFER_INSTRUCTION = :account_transfer_instruction

          # ACH Transfer Instruction: details will be under the `ach_transfer_instruction` object.
          ACH_TRANSFER_INSTRUCTION = :ach_transfer_instruction

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION = :card_authorization

          # Check Deposit Instruction: details will be under the `check_deposit_instruction` object.
          CHECK_DEPOSIT_INSTRUCTION = :check_deposit_instruction

          # Check Transfer Instruction: details will be under the `check_transfer_instruction` object.
          CHECK_TRANSFER_INSTRUCTION = :check_transfer_instruction

          # Inbound Funds Hold: details will be under the `inbound_funds_hold` object.
          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          # Real-Time Payments Transfer Instruction: details will be under the `real_time_payments_transfer_instruction` object.
          REAL_TIME_PAYMENTS_TRANSFER_INSTRUCTION = :real_time_payments_transfer_instruction

          # Wire Transfer Instruction: details will be under the `wire_transfer_instruction` object.
          WIRE_TRANSFER_INSTRUCTION = :wire_transfer_instruction

          # Inbound Wire Transfer Reversal: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL = :inbound_wire_transfer_reversal

          # The Pending Transaction was made for an undocumented or deprecated reason.
          OTHER = :other

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::PendingTransaction::Source#check_deposit_instruction
        class CheckDepositInstruction < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute back_image_file_id
          #   #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/back_image_file_id
          #
          #   @return [String, nil]
          required :back_image_file_id, String, nil?: true

          # @!attribute check_deposit_id
          #   #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/check_deposit_id
          #
          #   @return [String, nil]
          required :check_deposit_id, String, nil?: true

          # @!attribute currency
          #   #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency]
          required :currency,
                   enum: -> { Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency }

          # @!attribute front_image_file_id
          #   #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/front_image_file_id
          #
          #   @return [String]
          required :front_image_file_id, String

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction
          #   #
          #   # @param amount [Integer]
          #   # @param back_image_file_id [String, nil]
          #   # @param check_deposit_id [String, nil]
          #   # @param currency [Symbol, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency]
          #   # @param front_image_file_id [String]
          #   #
          #   def initialize(amount:, back_image_file_id:, check_deposit_id:, currency:, front_image_file_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/currency
          #
          # @see Increase::Models::PendingTransaction::Source::CheckDepositInstruction#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::PendingTransaction::Source#check_transfer_instruction
        class CheckTransferInstruction < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency]
          required :currency,
                   enum: -> { Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency }

          # @!attribute transfer_id
          #   #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction
          #   #
          #   # @param amount [Integer]
          #   # @param currency [Symbol, Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(amount:, currency:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction/anyOf/0/properties/currency
          #
          # @see Increase::Models::PendingTransaction::Source::CheckTransferInstruction#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::PendingTransaction::Source#inbound_funds_hold
        class InboundFundsHold < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/inbound_funds_hold/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   #/components/schemas/inbound_funds_hold/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute automatically_releases_at
          #   #/components/schemas/inbound_funds_hold/properties/automatically_releases_at
          #
          #   @return [Time]
          required :automatically_releases_at, Time

          # @!attribute created_at
          #   #/components/schemas/inbound_funds_hold/properties/created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute currency
          #   #/components/schemas/inbound_funds_hold/properties/currency
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency]
          required :currency, enum: -> { Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency }

          # @!attribute held_transaction_id
          #   #/components/schemas/inbound_funds_hold/properties/held_transaction_id
          #
          #   @return [String, nil]
          required :held_transaction_id, String, nil?: true

          # @!attribute pending_transaction_id
          #   #/components/schemas/inbound_funds_hold/properties/pending_transaction_id
          #
          #   @return [String, nil]
          required :pending_transaction_id, String, nil?: true

          # @!attribute released_at
          #   #/components/schemas/inbound_funds_hold/properties/released_at
          #
          #   @return [Time, nil]
          required :released_at, Time, nil?: true

          # @!attribute status
          #   #/components/schemas/inbound_funds_hold/properties/status
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status]
          required :status, enum: -> { Increase::Models::PendingTransaction::Source::InboundFundsHold::Status }

          # @!attribute type
          #   #/components/schemas/inbound_funds_hold/properties/type
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Type]
          required :type, enum: -> { Increase::Models::PendingTransaction::Source::InboundFundsHold::Type }

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/inbound_funds_hold
          #   #
          #   # @param id [String]
          #   # @param amount [Integer]
          #   # @param automatically_releases_at [Time]
          #   # @param created_at [Time]
          #   # @param currency [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency]
          #   # @param held_transaction_id [String, nil]
          #   # @param pending_transaction_id [String, nil]
          #   # @param released_at [Time, nil]
          #   # @param status [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status]
          #   # @param type [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Type]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     automatically_releases_at:,
          #     created_at:,
          #     currency:,
          #     held_transaction_id:,
          #     pending_transaction_id:,
          #     released_at:,
          #     status:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/inbound_funds_hold/properties/currency
          #
          # @see Increase::Models::PendingTransaction::Source::InboundFundsHold#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/inbound_funds_hold/properties/status
          #
          # @see Increase::Models::PendingTransaction::Source::InboundFundsHold#status
          module Status
            extend Increase::Internal::Type::Enum

            # Funds are still being held.
            HELD = :held

            # Funds have been released.
            COMPLETE = :complete

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/inbound_funds_hold/properties/type
          #
          # @see Increase::Models::PendingTransaction::Source::InboundFundsHold#type
          module Type
            extend Increase::Internal::Type::Enum

            INBOUND_FUNDS_HOLD = :inbound_funds_hold

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::PendingTransaction::Source#inbound_wire_transfer_reversal
        class InboundWireTransferReversal < Increase::Internal::Type::BaseModel
          # @!attribute inbound_wire_transfer_id
          #   #/components/schemas/inbound_wire_transfer_reversal/properties/inbound_wire_transfer_id
          #
          #   @return [String]
          required :inbound_wire_transfer_id, String

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/inbound_wire_transfer_reversal
          #   #
          #   # @param inbound_wire_transfer_id [String]
          #   #
          #   def initialize(inbound_wire_transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::PendingTransaction::Source#real_time_payments_transfer_instruction
        class RealTimePaymentsTransferInstruction < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/pending_transaction/properties/source/properties/real_time_payments_transfer_instruction/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute transfer_id
          #   #/components/schemas/pending_transaction/properties/source/properties/real_time_payments_transfer_instruction/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/real_time_payments_transfer_instruction
          #   #
          #   # @param amount [Integer]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(amount:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::PendingTransaction::Source#wire_transfer_instruction
        class WireTransferInstruction < Increase::Internal::Type::BaseModel
          # @!attribute account_number
          #   #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute amount
          #   #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute message_to_recipient
          #   #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/message_to_recipient
          #
          #   @return [String]
          required :message_to_recipient, String

          # @!attribute routing_number
          #   #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/routing_number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute transfer_id
          #   #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction
          #   #
          #   # @param account_number [String]
          #   # @param amount [Integer]
          #   # @param message_to_recipient [String]
          #   # @param routing_number [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/pending_transaction/properties/status
      #
      # @see Increase::Models::PendingTransaction#status
      module Status
        extend Increase::Internal::Type::Enum

        # The Pending Transaction is still awaiting confirmation.
        PENDING = :pending

        # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
        COMPLETE = :complete

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/pending_transaction/properties/type
      #
      # @see Increase::Models::PendingTransaction#type
      module Type
        extend Increase::Internal::Type::Enum

        PENDING_TRANSACTION = :pending_transaction

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
