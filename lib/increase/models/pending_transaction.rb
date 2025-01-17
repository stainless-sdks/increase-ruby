# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # pending_transaction => {
    #   id: String,
    #   account_id: String,
    #   amount: Integer,
    #   completed_at: Time,
    #   created_at: Time,
    #   **_
    # }
    # ```
    class PendingTransaction < Increase::BaseModel
      # @!attribute id
      #   The Pending Transaction identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The identifier for the account this Pending Transaction belongs to.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   The Pending Transaction amount in the minor unit of its currency. For dollars, for example, this is cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute completed_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending Transaction was completed.
      #
      #   @return [Time, nil]
      required :completed_at, Time

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending Transaction occurred.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending Transaction's currency. This will match the currency on the Pending Transaction's Account.
      #
      #   @return [Symbol, Increase::Models::PendingTransaction::Currency]
      required :currency, enum: -> { Increase::Models::PendingTransaction::Currency }

      # @!attribute description
      #   For a Pending Transaction related to a transfer, this is the description you provide. For a Pending Transaction related to a payment, this is the description the vendor provides.
      #
      #   @return [String]
      required :description, String

      # @!attribute route_id
      #   The identifier for the route this Pending Transaction came through. Routes are things like cards and ACH details.
      #
      #   @return [String, nil]
      required :route_id, String

      # @!attribute route_type
      #   The type of the route this Pending Transaction came through.
      #
      #   @return [Symbol, Increase::Models::PendingTransaction::RouteType, nil]
      required :route_type, enum: -> { Increase::Models::PendingTransaction::RouteType }

      # @!attribute source
      #   This is an object giving more details on the network-level event that caused the Pending Transaction. For example, for a card transaction this lists the merchant's industry and location.
      #
      #   @return [Increase::Models::PendingTransaction::Source]
      required :source, -> { Increase::Models::PendingTransaction::Source }

      # @!attribute status
      #   Whether the Pending Transaction has been confirmed and has an associated Transaction.
      #
      #   @return [Symbol, Increase::Models::PendingTransaction::Status]
      required :status, enum: -> { Increase::Models::PendingTransaction::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `pending_transaction`.
      #
      #   @return [Symbol, Increase::Models::PendingTransaction::Type]
      required :type, enum: -> { Increase::Models::PendingTransaction::Type }

      # @!parse
      #   # Pending Transactions are potential future additions and removals of money from
      #   #   your bank account.
      #   #
      #   # @param id [String] The Pending Transaction identifier.
      #   #
      #   # @param account_id [String] The identifier for the account this Pending Transaction belongs to.
      #   #
      #   # @param amount [Integer] The Pending Transaction amount in the minor unit of its currency. For dollars,
      #   #   for example, this is cents.
      #   #
      #   # @param completed_at [String, nil] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending
      #   #   Transaction was completed.
      #   #
      #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending
      #   #   Transaction occurred.
      #   #
      #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending
      #   #   Transaction's currency. This will match the currency on the Pending
      #   #   Transaction's Account.
      #   #
      #   # @param description [String] For a Pending Transaction related to a transfer, this is the description you
      #   #   provide. For a Pending Transaction related to a payment, this is the description
      #   #   the vendor provides.
      #   #
      #   # @param route_id [String, nil] The identifier for the route this Pending Transaction came through. Routes are
      #   #   things like cards and ACH details.
      #   #
      #   # @param route_type [String, nil] The type of the route this Pending Transaction came through.
      #   #
      #   # @param source [Increase::Models::PendingTransaction::Source] This is an object giving more details on the network-level event that caused the
      #   #   Pending Transaction. For example, for a card transaction this lists the
      #   #   merchant's industry and location.
      #   #
      #   # @param status [String] Whether the Pending Transaction has been confirmed and has an associated
      #   #   Transaction.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `pending_transaction`.
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

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending Transaction's currency. This will match the currency on the Pending Transaction's Account.
      #
      # @example
      # ```ruby
      # case currency
      # in :CAD
      #   # ...
      # in :CHF
      #   # ...
      # in :EUR
      #   # ...
      # in :GBP
      #   # ...
      # in :JPY
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Currency < Increase::Enum
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
      end

      # The type of the route this Pending Transaction came through.
      #
      # @example
      # ```ruby
      # case route_type
      # in :account_number
      #   # ...
      # in :card
      #   # ...
      # in :lockbox
      #   # ...
      # end
      # ```
      class RouteType < Increase::Enum
        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox

        finalize!
      end

      # @example
      # ```ruby
      # source => {
      #   account_transfer_instruction: Increase::Models::PendingTransaction::Source::AccountTransferInstruction,
      #   ach_transfer_instruction: Increase::Models::PendingTransaction::Source::ACHTransferInstruction,
      #   card_authorization: Increase::Models::PendingTransaction::Source::CardAuthorization,
      #   category: enum: Increase::Models::PendingTransaction::Source::Category,
      #   check_deposit_instruction: Increase::Models::PendingTransaction::Source::CheckDepositInstruction,
      #   **_
      # }
      # ```
      class Source < Increase::BaseModel
        # @!attribute account_transfer_instruction
        #   An Account Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `account_transfer_instruction`.
        #
        #   @return [Increase::Models::PendingTransaction::Source::AccountTransferInstruction, nil]
        required :account_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::AccountTransferInstruction }

        # @!attribute ach_transfer_instruction
        #   An ACH Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_instruction`.
        #
        #   @return [Increase::Models::PendingTransaction::Source::ACHTransferInstruction, nil]
        required :ach_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::ACHTransferInstruction }

        # @!attribute card_authorization
        #   A Card Authorization object. This field will be present in the JSON response if and only if `category` is equal to `card_authorization`.
        #
        #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization, nil]
        required :card_authorization, -> { Increase::Models::PendingTransaction::Source::CardAuthorization }

        # @!attribute category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #
        #   @return [Symbol, Increase::Models::PendingTransaction::Source::Category]
        required :category, enum: -> { Increase::Models::PendingTransaction::Source::Category }

        # @!attribute check_deposit_instruction
        #   A Check Deposit Instruction object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_instruction`.
        #
        #   @return [Increase::Models::PendingTransaction::Source::CheckDepositInstruction, nil]
        required :check_deposit_instruction,
                 -> { Increase::Models::PendingTransaction::Source::CheckDepositInstruction }

        # @!attribute check_transfer_instruction
        #   A Check Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `check_transfer_instruction`.
        #
        #   @return [Increase::Models::PendingTransaction::Source::CheckTransferInstruction, nil]
        required :check_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::CheckTransferInstruction }

        # @!attribute inbound_funds_hold
        #   An Inbound Funds Hold object. This field will be present in the JSON response if and only if `category` is equal to `inbound_funds_hold`.
        #
        #   @return [Increase::Models::PendingTransaction::Source::InboundFundsHold, nil]
        required :inbound_funds_hold, -> { Increase::Models::PendingTransaction::Source::InboundFundsHold }

        # @!attribute other
        #   If the category of this Transaction source is equal to `other`, this field will contain an empty object, otherwise it will contain null.
        #
        #   @return [Object, nil]
        required :other, Increase::Unknown

        # @!attribute real_time_payments_transfer_instruction
        #   A Real-Time Payments Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `real_time_payments_transfer_instruction`.
        #
        #   @return [Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction, nil]
        required :real_time_payments_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction }

        # @!attribute wire_transfer_instruction
        #   A Wire Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `wire_transfer_instruction`.
        #
        #   @return [Increase::Models::PendingTransaction::Source::WireTransferInstruction, nil]
        required :wire_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::WireTransferInstruction }

        # @!parse
        #   # This is an object giving more details on the network-level event that caused the
        #   #   Pending Transaction. For example, for a card transaction this lists the
        #   #   merchant's industry and location.
        #   #
        #   # @param account_transfer_instruction [Increase::Models::PendingTransaction::Source::AccountTransferInstruction, nil] An Account Transfer Instruction object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `account_transfer_instruction`.
        #   #
        #   # @param ach_transfer_instruction [Increase::Models::PendingTransaction::Source::ACHTransferInstruction, nil] An ACH Transfer Instruction object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `ach_transfer_instruction`.
        #   #
        #   # @param card_authorization [Increase::Models::PendingTransaction::Source::CardAuthorization, nil] A Card Authorization object. This field will be present in the JSON response if
        #   #   and only if `category` is equal to `card_authorization`.
        #   #
        #   # @param category [String] The type of the resource. We may add additional possible values for this enum
        #   #   over time; your application should be able to handle such additions gracefully.
        #   #
        #   # @param check_deposit_instruction [Increase::Models::PendingTransaction::Source::CheckDepositInstruction, nil] A Check Deposit Instruction object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `check_deposit_instruction`.
        #   #
        #   # @param check_transfer_instruction [Increase::Models::PendingTransaction::Source::CheckTransferInstruction, nil] A Check Transfer Instruction object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `check_transfer_instruction`.
        #   #
        #   # @param inbound_funds_hold [Increase::Models::PendingTransaction::Source::InboundFundsHold, nil] An Inbound Funds Hold object. This field will be present in the JSON response if
        #   #   and only if `category` is equal to `inbound_funds_hold`.
        #   #
        #   # @param other [Object, nil] If the category of this Transaction source is equal to `other`, this field will
        #   #   contain an empty object, otherwise it will contain null.
        #   #
        #   # @param real_time_payments_transfer_instruction [Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction, nil] A Real-Time Payments Transfer Instruction object. This field will be present in
        #   #   the JSON response if and only if `category` is equal to
        #   #   `real_time_payments_transfer_instruction`.
        #   #
        #   # @param wire_transfer_instruction [Increase::Models::PendingTransaction::Source::WireTransferInstruction, nil] A Wire Transfer Instruction object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `wire_transfer_instruction`.
        #   #
        #   def initialize(
        #     account_transfer_instruction:,
        #     ach_transfer_instruction:,
        #     card_authorization:,
        #     category:,
        #     check_deposit_instruction:,
        #     check_transfer_instruction:,
        #     inbound_funds_hold:,
        #     other:,
        #     real_time_payments_transfer_instruction:,
        #     wire_transfer_instruction:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # account_transfer_instruction => {
        #   amount: Integer,
        #   currency: enum: Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency,
        #   transfer_id: String
        # }
        # ```
        class AccountTransferInstruction < Increase::BaseModel
          # @!attribute amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency
                   }

          # @!attribute transfer_id
          #   The identifier of the Account Transfer that led to this Pending Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An Account Transfer Instruction object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `account_transfer_instruction`.
          #   #
          #   # @param amount [Integer] The pending amount in the minor unit of the transaction's currency. For dollars,
          #   #   for example, this is cents.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   #   account currency.
          #   #
          #   # @param transfer_id [String] The identifier of the Account Transfer that led to this Pending Transaction.
          #   #
          #   def initialize(amount:, currency:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Currency < Increase::Enum
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
          end
        end

        # @example
        # ```ruby
        # ach_transfer_instruction => {
        #   amount: Integer,
        #   transfer_id: String
        # }
        # ```
        class ACHTransferInstruction < Increase::BaseModel
          # @!attribute amount
          #   The pending amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute transfer_id
          #   The identifier of the ACH Transfer that led to this Pending Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An ACH Transfer Instruction object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `ach_transfer_instruction`.
          #   #
          #   # @param amount [Integer] The pending amount in USD cents.
          #   #
          #   # @param transfer_id [String] The identifier of the ACH Transfer that led to this Pending Transaction.
          #   #
          #   def initialize(amount:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # card_authorization => {
        #   id: String,
        #   actioner: enum: Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner,
        #   amount: Integer,
        #   card_payment_id: String,
        #   currency: enum: Increase::Models::PendingTransaction::Source::CardAuthorization::Currency,
        #   **_
        # }
        # ```
        class CardAuthorization < Increase::BaseModel
          # @!attribute id
          #   The Card Authorization identifier.
          #
          #   @return [String]
          required :id, String

          # @!attribute actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner]
          required :actioner,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner
                   }

          # @!attribute amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CardAuthorization::Currency
                   }

          # @!attribute digital_wallet_token_id
          #   If the authorization was made via a Digital Wallet Token (such as an Apple Pay purchase), the identifier of the token that was used.
          #
          #   @return [String, nil]
          required :digital_wallet_token_id, String

          # @!attribute direction
          #   The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction]
          required :direction,
                   enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Direction }

          # @!attribute expires_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) when this authorization will expire and the pending transaction will be released.
          #
          #   @return [Time]
          required :expires_at, Time

          # @!attribute merchant_acceptor_id
          #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   The Merchant Category Code (commonly abbreviated as MCC) of the merchant the card is transacting with.
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   The city the merchant resides in.
          #
          #   @return [String, nil]
          required :merchant_city, String

          # @!attribute merchant_country
          #   The country the merchant resides in.
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_descriptor
          #   The merchant descriptor of the merchant the card is transacting with.
          #
          #   @return [String]
          required :merchant_descriptor, String

          # @!attribute merchant_postal_code
          #   The merchant's postal code. For US merchants this is either a 5-digit or 9-digit ZIP code, where the first 5 and last 4 are separated by a dash.
          #
          #   @return [String, nil]
          required :merchant_postal_code, String

          # @!attribute merchant_state
          #   The state the merchant resides in.
          #
          #   @return [String, nil]
          required :merchant_state, String

          # @!attribute network_details
          #   Fields specific to the `network`.
          #
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails]
          required :network_details,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails }

          # @!attribute network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers }

          # @!attribute network_risk_score
          #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #
          #   @return [Integer, nil]
          required :network_risk_score, Integer

          # @!attribute pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Transaction.
          #
          #   @return [String, nil]
          required :pending_transaction_id, String

          # @!attribute physical_card_id
          #   If the authorization was made in-person with a physical card, the Physical Card that was used.
          #
          #   @return [String, nil]
          required :physical_card_id, String

          # @!attribute presentment_amount
          #   The pending amount in the minor unit of the transaction's presentment currency.
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute processing_category
          #   The processing category describes the intent behind the authorization, such as whether it was used for bill payments or an automatic fuel dispenser.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory]
          required :processing_category,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory
                   }

          # @!attribute real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
          #
          #   @return [String, nil]
          required :real_time_decision_id, String

          # @!attribute terminal_id
          #   The terminal identifier (commonly abbreviated as TID) of the terminal the card is transacting with.
          #
          #   @return [String, nil]
          required :terminal_id, String

          # @!attribute type
          #   A constant representing the object's type. For this resource it will always be `card_authorization`.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Type]
          required :type, enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Type }

          # @!attribute verification
          #   Fields related to verification of cardholder-provided values.
          #
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification]
          required :verification,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification }

          # @!parse
          #   # A Card Authorization object. This field will be present in the JSON response if
          #   #   and only if `category` is equal to `card_authorization`.
          #   #
          #   # @param id [String] The Card Authorization identifier.
          #   #
          #   # @param actioner [String] Whether this authorization was approved by Increase, the card network through
          #   #   stand-in processing, or the user through a real-time decision.
          #   #
          #   # @param amount [Integer] The pending amount in the minor unit of the transaction's currency. For dollars,
          #   #   for example, this is cents.
          #   #
          #   # @param card_payment_id [String] The ID of the Card Payment this transaction belongs to.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's currency.
          #   #
          #   # @param digital_wallet_token_id [String, nil] If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   #   purchase), the identifier of the token that was used.
          #   #
          #   # @param direction [String] The direction describes the direction the funds will move, either from the
          #   #   cardholder to the merchant or from the merchant to the cardholder.
          #   #
          #   # @param expires_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) when this authorization
          #   #   will expire and the pending transaction will be released.
          #   #
          #   # @param merchant_acceptor_id [String] The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #   is transacting with.
          #   #
          #   # @param merchant_category_code [String] The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   #   card is transacting with.
          #   #
          #   # @param merchant_city [String, nil] The city the merchant resides in.
          #   #
          #   # @param merchant_country [String] The country the merchant resides in.
          #   #
          #   # @param merchant_descriptor [String] The merchant descriptor of the merchant the card is transacting with.
          #   #
          #   # @param merchant_postal_code [String, nil] The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   #   ZIP code, where the first 5 and last 4 are separated by a dash.
          #   #
          #   # @param merchant_state [String, nil] The state the merchant resides in.
          #   #
          #   # @param network_details [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails] Fields specific to the `network`.
          #   #
          #   # @param network_identifiers [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers] Network-specific identifiers for a specific request or transaction.
          #   #
          #   # @param network_risk_score [Integer, nil] The risk score generated by the card network. For Visa this is the Visa Advanced
          #   #   Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   #
          #   # @param pending_transaction_id [String, nil] The identifier of the Pending Transaction associated with this Transaction.
          #   #
          #   # @param physical_card_id [String, nil] If the authorization was made in-person with a physical card, the Physical Card
          #   #   that was used.
          #   #
          #   # @param presentment_amount [Integer] The pending amount in the minor unit of the transaction's presentment currency.
          #   #
          #   # @param presentment_currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's presentment currency.
          #   #
          #   # @param processing_category [String] The processing category describes the intent behind the authorization, such as
          #   #   whether it was used for bill payments or an automatic fuel dispenser.
          #   #
          #   # @param real_time_decision_id [String, nil] The identifier of the Real-Time Decision sent to approve or decline this
          #   #   transaction.
          #   #
          #   # @param terminal_id [String, nil] The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   #   is transacting with.
          #   #
          #   # @param type [String] A constant representing the object's type. For this resource it will always be
          #   #   `card_authorization`.
          #   #
          #   # @param verification [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification] Fields related to verification of cardholder-provided values.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #
          # @example
          # ```ruby
          # case actioner
          # in :user
          #   # ...
          # in :increase
          #   # ...
          # in :network
          #   # ...
          # end
          # ```
          class Actioner < Increase::Enum
            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            finalize!
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Currency < Increase::Enum
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
          end

          # The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
          #
          # @example
          # ```ruby
          # case direction
          # in :settlement
          #   # ...
          # in :refund
          #   # ...
          # end
          # ```
          class Direction < Increase::Enum
            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            finalize!
          end

          # @example
          # ```ruby
          # network_details => {
          #   category: enum: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category,
          #   visa: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa
          # }
          # ```
          class NetworkDetails < Increase::BaseModel
            # @!attribute category
            #   The payment network used to process this card authorization.
            #
            #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category]
            required :category,
                     enum: -> {
                       Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category
                     }

            # @!attribute visa
            #   Fields specific to the `visa` network.
            #
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa, nil]
            required :visa,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa }

            # @!parse
            #   # Fields specific to the `network`.
            #   #
            #   # @param category [String] The payment network used to process this card authorization.
            #   #
            #   # @param visa [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa, nil] Fields specific to the `visa` network.
            #   #
            #   def initialize(category:, visa:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # The payment network used to process this card authorization.
            #
            # @example
            # ```ruby
            # case category
            # in :visa
            #   # ...
            # end
            # ```
            class Category < Increase::Enum
              # Visa
              VISA = :visa

              finalize!
            end

            # @example
            # ```ruby
            # visa => {
            #   electronic_commerce_indicator: enum: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator,
            #   point_of_service_entry_mode: enum: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode,
            #   stand_in_processing_reason: enum: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason
            # }
            # ```
            class Visa < Increase::BaseModel
              # @!attribute electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              required :electronic_commerce_indicator,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator
                       }

              # @!attribute point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              required :point_of_service_entry_mode,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode
                       }

              # @!attribute stand_in_processing_reason
              #   Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason, nil]
              required :stand_in_processing_reason,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason
                       }

              # @!parse
              #   # Fields specific to the `visa` network.
              #   #
              #   # @param electronic_commerce_indicator [String, nil] For electronic commerce transactions, this identifies the level of security used
              #   #   in obtaining the customer's payment credential. For mail or telephone order
              #   #   transactions, identifies the type of mail or telephone order.
              #   #
              #   # @param point_of_service_entry_mode [String, nil] The method used to enter the cardholder's primary account number and card
              #   #   expiration date.
              #   #
              #   # @param stand_in_processing_reason [String, nil] Only present when `actioner: network`. Describes why a card authorization was
              #   #   approved or declined by Visa through stand-in processing.
              #   #
              #   def initialize(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void

              # For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #
              # @example
              # ```ruby
              # case electronic_commerce_indicator
              # in :mail_phone_order
              #   # ...
              # in :recurring
              #   # ...
              # in :installment
              #   # ...
              # in :unknown_mail_phone_order
              #   # ...
              # in :secure_electronic_commerce
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class ElectronicCommerceIndicator < Increase::Enum
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
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT = :non_authenticated_security_transaction_at_3ds_capable_merchant

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = :non_authenticated_security_transaction

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = :non_secure_transaction

                finalize!
              end

              # The method used to enter the cardholder's primary account number and card expiration date.
              #
              # @example
              # ```ruby
              # case point_of_service_entry_mode
              # in :unknown
              #   # ...
              # in :manual
              #   # ...
              # in :magnetic_stripe_no_cvv
              #   # ...
              # in :optical_code
              #   # ...
              # in :integrated_circuit_card
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class PointOfServiceEntryMode < Increase::Enum
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
              end

              # Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              #
              # @example
              # ```ruby
              # case stand_in_processing_reason
              # in :issuer_error
              #   # ...
              # in :invalid_physical_card
              #   # ...
              # in :invalid_cardholder_authentication_verification_value
              #   # ...
              # in :internal_visa_error
              #   # ...
              # in :merchant_transaction_advisory_service_authentication_required
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class StandInProcessingReason < Increase::Enum
                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = :issuer_error

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = :invalid_physical_card

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = :invalid_cardholder_authentication_verification_value

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = :internal_visa_error

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = :merchant_transaction_advisory_service_authentication_required

                # An unspecific reason for stand-in processing.
                OTHER = :other

                finalize!
              end
            end
          end

          # @example
          # ```ruby
          # network_identifiers => {
          #   retrieval_reference_number: String,
          #   trace_number: String,
          #   transaction_id: String
          # }
          # ```
          class NetworkIdentifiers < Increase::BaseModel
            # @!attribute retrieval_reference_number
            #   A life-cycle identifier used across e.g., an authorization and a reversal. Expected to be unique per acquirer within a window of time. For some card networks the retrieval reference number includes the trace counter.
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String

            # @!attribute trace_number
            #   A counter used to verify an individual authorization. Expected to be unique per acquirer within a window of time.
            #
            #   @return [String, nil]
            required :trace_number, String

            # @!attribute transaction_id
            #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
            #
            #   @return [String, nil]
            required :transaction_id, String

            # @!parse
            #   # Network-specific identifiers for a specific request or transaction.
            #   #
            #   # @param retrieval_reference_number [String, nil] A life-cycle identifier used across e.g., an authorization and a reversal.
            #   #   Expected to be unique per acquirer within a window of time. For some card
            #   #   networks the retrieval reference number includes the trace counter.
            #   #
            #   # @param trace_number [String, nil] A counter used to verify an individual authorization. Expected to be unique per
            #   #   acquirer within a window of time.
            #   #
            #   # @param transaction_id [String, nil] A globally unique transaction identifier provided by the card network, used
            #   #   across multiple life-cycle requests.
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # The processing category describes the intent behind the authorization, such as whether it was used for bill payments or an automatic fuel dispenser.
          #
          # @example
          # ```ruby
          # case processing_category
          # in :account_funding
          #   # ...
          # in :automatic_fuel_dispenser
          #   # ...
          # in :bill_payment
          #   # ...
          # in :purchase
          #   # ...
          # in :quasi_cash
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class ProcessingCategory < Increase::Enum
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
          end

          # A constant representing the object's type. For this resource it will always be `card_authorization`.
          #
          # @example
          # ```ruby
          # case type
          # in :card_authorization
          #   # ...
          # end
          # ```
          class Type < Increase::Enum
            CARD_AUTHORIZATION = :card_authorization

            finalize!
          end

          # @example
          # ```ruby
          # verification => {
          #   card_verification_code: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
          #   cardholder_address: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress
          # }
          # ```
          class Verification < Increase::BaseModel
            # @!attribute card_verification_code
            #   Fields related to verification of the Card Verification Code, a 3-digit code on the back of the card.
            #
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode }

            # @!attribute cardholder_address
            #   Cardholder address provided in the authorization request and the address on file we verified it against.
            #
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress }

            # @!parse
            #   # Fields related to verification of cardholder-provided values.
            #   #
            #   # @param card_verification_code [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode] Fields related to verification of the Card Verification Code, a 3-digit code on
            #   #   the back of the card.
            #   #
            #   # @param cardholder_address [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress] Cardholder address provided in the authorization request and the address on file
            #   #   we verified it against.
            #   #
            #   def initialize(card_verification_code:, cardholder_address:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # @example
            # ```ruby
            # card_verification_code => {
            #   result: enum: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result
            # }
            # ```
            class CardVerificationCode < Increase::BaseModel
              # @!attribute result
              #   The result of verifying the Card Verification Code.
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result
                       }

              # @!parse
              #   # Fields related to verification of the Card Verification Code, a 3-digit code on
              #   #   the back of the card.
              #   #
              #   # @param result [String] The result of verifying the Card Verification Code.
              #   #
              #   def initialize(result:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void

              # The result of verifying the Card Verification Code.
              #
              # @example
              # ```ruby
              # case result
              # in :not_checked
              #   # ...
              # in :match
              #   # ...
              # in :no_match
              #   # ...
              # end
              # ```
              class Result < Increase::Enum
                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                finalize!
              end
            end

            # @example
            # ```ruby
            # cardholder_address => {
            #   actual_line1: String,
            #   actual_postal_code: String,
            #   provided_line1: String,
            #   provided_postal_code: String,
            #   result: enum: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result
            # }
            # ```
            class CardholderAddress < Increase::BaseModel
              # @!attribute actual_line1
              #   Line 1 of the address on file for the cardholder.
              #
              #   @return [String, nil]
              required :actual_line1, String

              # @!attribute actual_postal_code
              #   The postal code of the address on file for the cardholder.
              #
              #   @return [String, nil]
              required :actual_postal_code, String

              # @!attribute provided_line1
              #   The cardholder address line 1 provided for verification in the authorization request.
              #
              #   @return [String, nil]
              required :provided_line1, String

              # @!attribute provided_postal_code
              #   The postal code provided for verification in the authorization request.
              #
              #   @return [String, nil]
              required :provided_postal_code, String

              # @!attribute result
              #   The address verification result returned to the card network.
              #
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result
                       }

              # @!parse
              #   # Cardholder address provided in the authorization request and the address on file
              #   #   we verified it against.
              #   #
              #   # @param actual_line1 [String, nil] Line 1 of the address on file for the cardholder.
              #   #
              #   # @param actual_postal_code [String, nil] The postal code of the address on file for the cardholder.
              #   #
              #   # @param provided_line1 [String, nil] The cardholder address line 1 provided for verification in the authorization
              #   #   request.
              #   #
              #   # @param provided_postal_code [String, nil] The postal code provided for verification in the authorization request.
              #   #
              #   # @param result [String] The address verification result returned to the card network.
              #   #
              #   def initialize(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void

              # The address verification result returned to the card network.
              #
              # @example
              # ```ruby
              # case result
              # in :not_checked
              #   # ...
              # in :postal_code_match_address_not_checked
              #   # ...
              # in :postal_code_match_address_no_match
              #   # ...
              # in :postal_code_no_match_address_match
              #   # ...
              # in :match
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class Result < Increase::Enum
                # No adress was provided in the authorization request.
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
              end
            end
          end
        end

        # The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #
        # @example
        # ```ruby
        # case category
        # in :account_transfer_instruction
        #   # ...
        # in :ach_transfer_instruction
        #   # ...
        # in :card_authorization
        #   # ...
        # in :check_deposit_instruction
        #   # ...
        # in :check_transfer_instruction
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Category < Increase::Enum
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
        end

        # @example
        # ```ruby
        # check_deposit_instruction => {
        #   amount: Integer,
        #   back_image_file_id: String,
        #   check_deposit_id: String,
        #   currency: enum: Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency,
        #   front_image_file_id: String
        # }
        # ```
        class CheckDepositInstruction < Increase::BaseModel
          # @!attribute amount
          #   The pending amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute back_image_file_id
          #   The identifier of the File containing the image of the back of the check that was deposited.
          #
          #   @return [String, nil]
          required :back_image_file_id, String

          # @!attribute check_deposit_id
          #   The identifier of the Check Deposit.
          #
          #   @return [String, nil]
          required :check_deposit_id, String

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency
                   }

          # @!attribute front_image_file_id
          #   The identifier of the File containing the image of the front of the check that was deposited.
          #
          #   @return [String]
          required :front_image_file_id, String

          # @!parse
          #   # A Check Deposit Instruction object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `check_deposit_instruction`.
          #   #
          #   # @param amount [Integer] The pending amount in USD cents.
          #   #
          #   # @param back_image_file_id [String, nil] The identifier of the File containing the image of the back of the check that
          #   #   was deposited.
          #   #
          #   # @param check_deposit_id [String, nil] The identifier of the Check Deposit.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's currency.
          #   #
          #   # @param front_image_file_id [String] The identifier of the File containing the image of the front of the check that
          #   #   was deposited.
          #   #
          #   def initialize(amount:, back_image_file_id:, check_deposit_id:, currency:, front_image_file_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Currency < Increase::Enum
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
          end
        end

        # @example
        # ```ruby
        # check_transfer_instruction => {
        #   amount: Integer,
        #   currency: enum: Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency,
        #   transfer_id: String
        # }
        # ```
        class CheckTransferInstruction < Increase::BaseModel
          # @!attribute amount
          #   The transfer amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency
                   }

          # @!attribute transfer_id
          #   The identifier of the Check Transfer that led to this Pending Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # A Check Transfer Instruction object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `check_transfer_instruction`.
          #   #
          #   # @param amount [Integer] The transfer amount in USD cents.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
          #   #   currency.
          #   #
          #   # @param transfer_id [String] The identifier of the Check Transfer that led to this Pending Transaction.
          #   #
          #   def initialize(amount:, currency:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Currency < Increase::Enum
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
          end
        end

        # @example
        # ```ruby
        # inbound_funds_hold => {
        #   id: String,
        #   amount: Integer,
        #   automatically_releases_at: Time,
        #   created_at: Time,
        #   currency: enum: Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency,
        #   **_
        # }
        # ```
        class InboundFundsHold < Increase::BaseModel
          # @!attribute id
          #   The Inbound Funds Hold identifier.
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   The held amount in the minor unit of the account's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute automatically_releases_at
          #   When the hold will be released automatically. Certain conditions may cause it to be released before this time.
          #
          #   @return [Time]
          required :automatically_releases_at, Time

          # @!attribute created_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency
                   }

          # @!attribute held_transaction_id
          #   The ID of the Transaction for which funds were held.
          #
          #   @return [String, nil]
          required :held_transaction_id, String

          # @!attribute pending_transaction_id
          #   The ID of the Pending Transaction representing the held funds.
          #
          #   @return [String, nil]
          required :pending_transaction_id, String

          # @!attribute released_at
          #   When the hold was released (if it has been released).
          #
          #   @return [Time, nil]
          required :released_at, Time

          # @!attribute status
          #   The status of the hold.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status]
          required :status,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::InboundFundsHold::Status
                   }

          # @!attribute type
          #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
          #
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Type]
          required :type, enum: -> { Increase::Models::PendingTransaction::Source::InboundFundsHold::Type }

          # @!parse
          #   # An Inbound Funds Hold object. This field will be present in the JSON response if
          #   #   and only if `category` is equal to `inbound_funds_hold`.
          #   #
          #   # @param id [String] The Inbound Funds Hold identifier.
          #   #
          #   # @param amount [Integer] The held amount in the minor unit of the account's currency. For dollars, for
          #   #   example, this is cents.
          #   #
          #   # @param automatically_releases_at [String] When the hold will be released automatically. Certain conditions may cause it to
          #   #   be released before this time.
          #   #
          #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold
          #   #   was created.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
          #   #   currency.
          #   #
          #   # @param held_transaction_id [String, nil] The ID of the Transaction for which funds were held.
          #   #
          #   # @param pending_transaction_id [String, nil] The ID of the Pending Transaction representing the held funds.
          #   #
          #   # @param released_at [String, nil] When the hold was released (if it has been released).
          #   #
          #   # @param status [String] The status of the hold.
          #   #
          #   # @param type [String] A constant representing the object's type. For this resource it will always be
          #   #   `inbound_funds_hold`.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Currency < Increase::Enum
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
          end

          # The status of the hold.
          #
          # @example
          # ```ruby
          # case status
          # in :held
          #   # ...
          # in :complete
          #   # ...
          # end
          # ```
          class Status < Increase::Enum
            # Funds are still being held.
            HELD = :held

            # Funds have been released.
            COMPLETE = :complete

            finalize!
          end

          # A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
          #
          # @example
          # ```ruby
          # case type
          # in :inbound_funds_hold
          #   # ...
          # end
          # ```
          class Type < Increase::Enum
            INBOUND_FUNDS_HOLD = :inbound_funds_hold

            finalize!
          end
        end

        # @example
        # ```ruby
        # real_time_payments_transfer_instruction => {
        #   amount: Integer,
        #   transfer_id: String
        # }
        # ```
        class RealTimePaymentsTransferInstruction < Increase::BaseModel
          # @!attribute amount
          #   The transfer amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Pending Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # A Real-Time Payments Transfer Instruction object. This field will be present in
          #   #   the JSON response if and only if `category` is equal to
          #   #   `real_time_payments_transfer_instruction`.
          #   #
          #   # @param amount [Integer] The transfer amount in USD cents.
          #   #
          #   # @param transfer_id [String] The identifier of the Real-Time Payments Transfer that led to this Pending
          #   #   Transaction.
          #   #
          #   def initialize(amount:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # wire_transfer_instruction => {
        #   account_number: String,
        #   amount: Integer,
        #   message_to_recipient: String,
        #   routing_number: String,
        #   transfer_id: String
        # }
        # ```
        class WireTransferInstruction < Increase::BaseModel
          # @!attribute account_number
          #   The account number for the destination account.
          #
          #   @return [String]
          required :account_number, String

          # @!attribute amount
          #   The transfer amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute message_to_recipient
          #   The message that will show on the recipient's bank statement.
          #
          #   @return [String]
          required :message_to_recipient, String

          # @!attribute routing_number
          #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the destination account.
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute transfer_id
          #   The identifier of the Wire Transfer that led to this Pending Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # A Wire Transfer Instruction object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `wire_transfer_instruction`.
          #   #
          #   # @param account_number [String] The account number for the destination account.
          #   #
          #   # @param amount [Integer] The transfer amount in USD cents.
          #   #
          #   # @param message_to_recipient [String] The message that will show on the recipient's bank statement.
          #   #
          #   # @param routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
          #   #   destination account.
          #   #
          #   # @param transfer_id [String] The identifier of the Wire Transfer that led to this Pending Transaction.
          #   #
          #   def initialize(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # Whether the Pending Transaction has been confirmed and has an associated Transaction.
      #
      # @example
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :complete
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The Pending Transaction is still awaiting confirmation.
        PENDING = :pending

        # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
        COMPLETE = :complete

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be `pending_transaction`.
      #
      # @example
      # ```ruby
      # case type
      # in :pending_transaction
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        PENDING_TRANSACTION = :pending_transaction

        finalize!
      end
    end
  end
end
