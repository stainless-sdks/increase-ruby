# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ACHTransfers#create
    class ACHTransfer < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/ach_transfer/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/ach_transfer/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number
      #   #/components/schemas/ach_transfer/properties/account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute acknowledgement
      #   #/components/schemas/ach_transfer/properties/acknowledgement
      #
      #   @return [Increase::Models::ACHTransfer::Acknowledgement, nil]
      required :acknowledgement, -> { Increase::Models::ACHTransfer::Acknowledgement }, nil?: true

      # @!attribute addenda
      #   #/components/schemas/ach_transfer/properties/addenda
      #
      #   @return [Increase::Models::ACHTransfer::Addenda, nil]
      required :addenda, -> { Increase::Models::ACHTransfer::Addenda }, nil?: true

      # @!attribute amount
      #   #/components/schemas/ach_transfer/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute approval
      #   #/components/schemas/ach_transfer/properties/approval
      #
      #   @return [Increase::Models::ACHTransfer::Approval, nil]
      required :approval, -> { Increase::Models::ACHTransfer::Approval }, nil?: true

      # @!attribute cancellation
      #   #/components/schemas/ach_transfer/properties/cancellation
      #
      #   @return [Increase::Models::ACHTransfer::Cancellation, nil]
      required :cancellation, -> { Increase::Models::ACHTransfer::Cancellation }, nil?: true

      # @!attribute company_descriptive_date
      #   #/components/schemas/ach_transfer/properties/company_descriptive_date
      #
      #   @return [String, nil]
      required :company_descriptive_date, String, nil?: true

      # @!attribute company_discretionary_data
      #   #/components/schemas/ach_transfer/properties/company_discretionary_data
      #
      #   @return [String, nil]
      required :company_discretionary_data, String, nil?: true

      # @!attribute company_entry_description
      #   #/components/schemas/ach_transfer/properties/company_entry_description
      #
      #   @return [String, nil]
      required :company_entry_description, String, nil?: true

      # @!attribute company_name
      #   #/components/schemas/ach_transfer/properties/company_name
      #
      #   @return [String, nil]
      required :company_name, String, nil?: true

      # @!attribute created_at
      #   #/components/schemas/ach_transfer/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #   #/components/schemas/ach_transfer/properties/created_by
      #
      #   @return [Increase::Models::ACHTransfer::CreatedBy, nil]
      required :created_by, -> { Increase::Models::ACHTransfer::CreatedBy }, nil?: true

      # @!attribute currency
      #   #/components/schemas/ach_transfer/properties/currency
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Currency]
      required :currency, enum: -> { Increase::Models::ACHTransfer::Currency }

      # @!attribute destination_account_holder
      #   #/components/schemas/ach_transfer/properties/destination_account_holder
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::DestinationAccountHolder]
      required :destination_account_holder, enum: -> { Increase::Models::ACHTransfer::DestinationAccountHolder }

      # @!attribute external_account_id
      #   #/components/schemas/ach_transfer/properties/external_account_id
      #
      #   @return [String, nil]
      required :external_account_id, String, nil?: true

      # @!attribute funding
      #   #/components/schemas/ach_transfer/properties/funding
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Funding]
      required :funding, enum: -> { Increase::Models::ACHTransfer::Funding }

      # @!attribute idempotency_key
      #   #/components/schemas/ach_transfer/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute inbound_funds_hold
      #   #/components/schemas/ach_transfer/properties/inbound_funds_hold
      #
      #   @return [Increase::Models::ACHTransfer::InboundFundsHold, nil]
      required :inbound_funds_hold, -> { Increase::Models::ACHTransfer::InboundFundsHold }, nil?: true

      # @!attribute individual_id
      #   #/components/schemas/ach_transfer/properties/individual_id
      #
      #   @return [String, nil]
      required :individual_id, String, nil?: true

      # @!attribute individual_name
      #   #/components/schemas/ach_transfer/properties/individual_name
      #
      #   @return [String, nil]
      required :individual_name, String, nil?: true

      # @!attribute network
      #   #/components/schemas/ach_transfer/properties/network
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Network]
      required :network, enum: -> { Increase::Models::ACHTransfer::Network }

      # @!attribute notifications_of_change
      #   #/components/schemas/ach_transfer/properties/notifications_of_change
      #
      #   @return [Array<Increase::Models::ACHTransfer::NotificationsOfChange>]
      required :notifications_of_change,
               -> { Increase::Internal::Type::ArrayOf[Increase::Models::ACHTransfer::NotificationsOfChange] }

      # @!attribute pending_transaction_id
      #   #/components/schemas/ach_transfer/properties/pending_transaction_id
      #
      #   @return [String, nil]
      required :pending_transaction_id, String, nil?: true

      # @!attribute preferred_effective_date
      #   #/components/schemas/ach_transfer/properties/preferred_effective_date
      #
      #   @return [Increase::Models::ACHTransfer::PreferredEffectiveDate]
      required :preferred_effective_date, -> { Increase::Models::ACHTransfer::PreferredEffectiveDate }

      # @!attribute return_
      #   #/components/schemas/ach_transfer/properties/return
      #
      #   @return [Increase::Models::ACHTransfer::Return, nil]
      required :return_, -> { Increase::Models::ACHTransfer::Return }, api_name: :return, nil?: true

      # @!attribute routing_number
      #   #/components/schemas/ach_transfer/properties/routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute settlement
      #   #/components/schemas/ach_transfer/properties/settlement
      #
      #   @return [Increase::Models::ACHTransfer::Settlement, nil]
      required :settlement, -> { Increase::Models::ACHTransfer::Settlement }, nil?: true

      # @!attribute standard_entry_class_code
      #   #/components/schemas/ach_transfer/properties/standard_entry_class_code
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::StandardEntryClassCode]
      required :standard_entry_class_code, enum: -> { Increase::Models::ACHTransfer::StandardEntryClassCode }

      # @!attribute statement_descriptor
      #   #/components/schemas/ach_transfer/properties/statement_descriptor
      #
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute status
      #   #/components/schemas/ach_transfer/properties/status
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Status]
      required :status, enum: -> { Increase::Models::ACHTransfer::Status }

      # @!attribute submission
      #   #/components/schemas/ach_transfer/properties/submission
      #
      #   @return [Increase::Models::ACHTransfer::Submission, nil]
      required :submission, -> { Increase::Models::ACHTransfer::Submission }, nil?: true

      # @!attribute transaction_id
      #   #/components/schemas/ach_transfer/properties/transaction_id
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #   #/components/schemas/ach_transfer/properties/type
      #
      #   @return [Symbol, Increase::Models::ACHTransfer::Type]
      required :type, enum: -> { Increase::Models::ACHTransfer::Type }

      # @!parse
      #   # #/components/schemas/ach_transfer
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param account_number [String]
      #   # @param acknowledgement [Increase::Models::ACHTransfer::Acknowledgement, nil]
      #   # @param addenda [Increase::Models::ACHTransfer::Addenda, nil]
      #   # @param amount [Integer]
      #   # @param approval [Increase::Models::ACHTransfer::Approval, nil]
      #   # @param cancellation [Increase::Models::ACHTransfer::Cancellation, nil]
      #   # @param company_descriptive_date [String, nil]
      #   # @param company_discretionary_data [String, nil]
      #   # @param company_entry_description [String, nil]
      #   # @param company_name [String, nil]
      #   # @param created_at [Time]
      #   # @param created_by [Increase::Models::ACHTransfer::CreatedBy, nil]
      #   # @param currency [Symbol, Increase::Models::ACHTransfer::Currency]
      #   # @param destination_account_holder [Symbol, Increase::Models::ACHTransfer::DestinationAccountHolder]
      #   # @param external_account_id [String, nil]
      #   # @param funding [Symbol, Increase::Models::ACHTransfer::Funding]
      #   # @param idempotency_key [String, nil]
      #   # @param inbound_funds_hold [Increase::Models::ACHTransfer::InboundFundsHold, nil]
      #   # @param individual_id [String, nil]
      #   # @param individual_name [String, nil]
      #   # @param network [Symbol, Increase::Models::ACHTransfer::Network]
      #   # @param notifications_of_change [Array<Increase::Models::ACHTransfer::NotificationsOfChange>]
      #   # @param pending_transaction_id [String, nil]
      #   # @param preferred_effective_date [Increase::Models::ACHTransfer::PreferredEffectiveDate]
      #   # @param return_ [Increase::Models::ACHTransfer::Return, nil]
      #   # @param routing_number [String]
      #   # @param settlement [Increase::Models::ACHTransfer::Settlement, nil]
      #   # @param standard_entry_class_code [Symbol, Increase::Models::ACHTransfer::StandardEntryClassCode]
      #   # @param statement_descriptor [String]
      #   # @param status [Symbol, Increase::Models::ACHTransfer::Status]
      #   # @param submission [Increase::Models::ACHTransfer::Submission, nil]
      #   # @param transaction_id [String, nil]
      #   # @param type [Symbol, Increase::Models::ACHTransfer::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     account_number:,
      #     acknowledgement:,
      #     addenda:,
      #     amount:,
      #     approval:,
      #     cancellation:,
      #     company_descriptive_date:,
      #     company_discretionary_data:,
      #     company_entry_description:,
      #     company_name:,
      #     created_at:,
      #     created_by:,
      #     currency:,
      #     destination_account_holder:,
      #     external_account_id:,
      #     funding:,
      #     idempotency_key:,
      #     inbound_funds_hold:,
      #     individual_id:,
      #     individual_name:,
      #     network:,
      #     notifications_of_change:,
      #     pending_transaction_id:,
      #     preferred_effective_date:,
      #     return_:,
      #     routing_number:,
      #     settlement:,
      #     standard_entry_class_code:,
      #     statement_descriptor:,
      #     status:,
      #     submission:,
      #     transaction_id:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::ACHTransfer#acknowledgement
      class Acknowledgement < Increase::Internal::Type::BaseModel
        # @!attribute acknowledged_at
        #   #/components/schemas/ach_transfer/properties/acknowledgement/anyOf/0/properties/acknowledged_at
        #
        #   @return [String]
        required :acknowledged_at, String

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/acknowledgement
        #   #
        #   # @param acknowledged_at [String]
        #   #
        #   def initialize(acknowledged_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::ACHTransfer#addenda
      class Addenda < Increase::Internal::Type::BaseModel
        # @!attribute category
        #   #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::Addenda::Category]
        required :category, enum: -> { Increase::Models::ACHTransfer::Addenda::Category }

        # @!attribute freeform
        #   #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/freeform
        #
        #   @return [Increase::Models::ACHTransfer::Addenda::Freeform, nil]
        required :freeform, -> { Increase::Models::ACHTransfer::Addenda::Freeform }, nil?: true

        # @!attribute payment_order_remittance_advice
        #   #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/payment_order_remittance_advice
        #
        #   @return [Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice, nil]
        required :payment_order_remittance_advice,
                 -> { Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice },
                 nil?: true

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/addenda
        #   #
        #   # @param category [Symbol, Increase::Models::ACHTransfer::Addenda::Category]
        #   # @param freeform [Increase::Models::ACHTransfer::Addenda::Freeform, nil]
        #   # @param payment_order_remittance_advice [Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice, nil]
        #   #
        #   def initialize(category:, freeform:, payment_order_remittance_advice:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/category
        #
        # @see Increase::Models::ACHTransfer::Addenda#category
        module Category
          extend Increase::Internal::Type::Enum

          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice

          # Unknown addenda type.
          OTHER = :other

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::ACHTransfer::Addenda#freeform
        class Freeform < Increase::Internal::Type::BaseModel
          # @!attribute entries
          #   #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries
          #
          #   @return [Array<Increase::Models::ACHTransfer::Addenda::Freeform::Entry>]
          required :entries,
                   -> { Increase::Internal::Type::ArrayOf[Increase::Models::ACHTransfer::Addenda::Freeform::Entry] }

          # @!parse
          #   # #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/freeform
          #   #
          #   # @param entries [Array<Increase::Models::ACHTransfer::Addenda::Freeform::Entry>]
          #   #
          #   def initialize(entries:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          class Entry < Increase::Internal::Type::BaseModel
            # @!attribute payment_related_information
            #   #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries/items/properties/payment_related_information
            #
            #   @return [String]
            required :payment_related_information, String

            # @!parse
            #   # #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries/items
            #   #
            #   # @param payment_related_information [String]
            #   #
            #   def initialize(payment_related_information:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end
        end

        # @see Increase::Models::ACHTransfer::Addenda#payment_order_remittance_advice
        class PaymentOrderRemittanceAdvice < Increase::Internal::Type::BaseModel
          # @!attribute invoices
          #   #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/payment_order_remittance_advice/anyOf/0/properties/invoices
          #
          #   @return [Array<Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          required :invoices,
                   -> { Increase::Internal::Type::ArrayOf[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice] }

          # @!parse
          #   # #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/payment_order_remittance_advice
          #   #
          #   # @param invoices [Array<Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          #   #
          #   def initialize(invoices:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          class Invoice < Increase::Internal::Type::BaseModel
            # @!attribute invoice_number
            #   #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/payment_order_remittance_advice/anyOf/0/properties/invoices/items/properties/invoice_number
            #
            #   @return [String]
            required :invoice_number, String

            # @!attribute paid_amount
            #   #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/payment_order_remittance_advice/anyOf/0/properties/invoices/items/properties/paid_amount
            #
            #   @return [Integer]
            required :paid_amount, Integer

            # @!parse
            #   # #/components/schemas/ach_transfer/properties/addenda/anyOf/0/properties/payment_order_remittance_advice/anyOf/0/properties/invoices/items
            #   #
            #   # @param invoice_number [String]
            #   # @param paid_amount [Integer]
            #   #
            #   def initialize(invoice_number:, paid_amount:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end
        end
      end

      # @see Increase::Models::ACHTransfer#approval
      class Approval < Increase::Internal::Type::BaseModel
        # @!attribute approved_at
        #   #/components/schemas/ach_transfer/properties/approval/anyOf/0/properties/approved_at
        #
        #   @return [Time]
        required :approved_at, Time

        # @!attribute approved_by
        #   #/components/schemas/ach_transfer/properties/approval/anyOf/0/properties/approved_by
        #
        #   @return [String, nil]
        required :approved_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/approval
        #   #
        #   # @param approved_at [Time]
        #   # @param approved_by [String, nil]
        #   #
        #   def initialize(approved_at:, approved_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::ACHTransfer#cancellation
      class Cancellation < Increase::Internal::Type::BaseModel
        # @!attribute canceled_at
        #   #/components/schemas/ach_transfer/properties/cancellation/anyOf/0/properties/canceled_at
        #
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute canceled_by
        #   #/components/schemas/ach_transfer/properties/cancellation/anyOf/0/properties/canceled_by
        #
        #   @return [String, nil]
        required :canceled_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/cancellation
        #   #
        #   # @param canceled_at [Time]
        #   # @param canceled_by [String, nil]
        #   #
        #   def initialize(canceled_at:, canceled_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::ACHTransfer#created_by
      class CreatedBy < Increase::Internal::Type::BaseModel
        # @!attribute api_key
        #   #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/api_key
        #
        #   @return [Increase::Models::ACHTransfer::CreatedBy::APIKey, nil]
        required :api_key, -> { Increase::Models::ACHTransfer::CreatedBy::APIKey }, nil?: true

        # @!attribute category
        #   #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::ACHTransfer::CreatedBy::Category }

        # @!attribute oauth_application
        #   #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/oauth_application
        #
        #   @return [Increase::Models::ACHTransfer::CreatedBy::OAuthApplication, nil]
        required :oauth_application, -> { Increase::Models::ACHTransfer::CreatedBy::OAuthApplication }, nil?: true

        # @!attribute user
        #   #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/user
        #
        #   @return [Increase::Models::ACHTransfer::CreatedBy::User, nil]
        required :user, -> { Increase::Models::ACHTransfer::CreatedBy::User }, nil?: true

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/created_by
        #   #
        #   # @param api_key [Increase::Models::ACHTransfer::CreatedBy::APIKey, nil]
        #   # @param category [Symbol, Increase::Models::ACHTransfer::CreatedBy::Category]
        #   # @param oauth_application [Increase::Models::ACHTransfer::CreatedBy::OAuthApplication, nil]
        #   # @param user [Increase::Models::ACHTransfer::CreatedBy::User, nil]
        #   #
        #   def initialize(api_key:, category:, oauth_application:, user:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::ACHTransfer::CreatedBy#api_key
        class APIKey < Increase::Internal::Type::BaseModel
          # @!attribute description
          #   #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/api_key/anyOf/0/properties/description
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!parse
          #   # #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/api_key
          #   #
          #   # @param description [String, nil]
          #   #
          #   def initialize(description:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/category
        #
        # @see Increase::Models::ACHTransfer::CreatedBy#category
        module Category
          extend Increase::Internal::Type::Enum

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::ACHTransfer::CreatedBy#oauth_application
        class OAuthApplication < Increase::Internal::Type::BaseModel
          # @!attribute name
          #   #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/oauth_application/anyOf/0/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/oauth_application
          #   #
          #   # @param name [String]
          #   #
          #   def initialize(name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::ACHTransfer::CreatedBy#user
        class User < Increase::Internal::Type::BaseModel
          # @!attribute email
          #   #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/user/anyOf/0/properties/email
          #
          #   @return [String]
          required :email, String

          # @!parse
          #   # #/components/schemas/ach_transfer/properties/created_by/anyOf/0/properties/user
          #   #
          #   # @param email [String]
          #   #
          #   def initialize(email:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/ach_transfer/properties/currency
      #
      # @see Increase::Models::ACHTransfer#currency
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

      # #/components/schemas/ach_transfer/properties/destination_account_holder
      #
      # @see Increase::Models::ACHTransfer#destination_account_holder
      module DestinationAccountHolder
        extend Increase::Internal::Type::Enum

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/ach_transfer/properties/funding
      #
      # @see Increase::Models::ACHTransfer#funding
      module Funding
        extend Increase::Internal::Type::Enum

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::ACHTransfer#inbound_funds_hold
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
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Currency]
        required :currency, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Currency }

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
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Status]
        required :status, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Status }

        # @!attribute type
        #   #/components/schemas/inbound_funds_hold/properties/type
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Type]
        required :type, enum: -> { Increase::Models::ACHTransfer::InboundFundsHold::Type }

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/inbound_funds_hold
        #   #
        #   # @param id [String]
        #   # @param amount [Integer]
        #   # @param automatically_releases_at [Time]
        #   # @param created_at [Time]
        #   # @param currency [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Currency]
        #   # @param held_transaction_id [String, nil]
        #   # @param pending_transaction_id [String, nil]
        #   # @param released_at [Time, nil]
        #   # @param status [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Status]
        #   # @param type [Symbol, Increase::Models::ACHTransfer::InboundFundsHold::Type]
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
        # @see Increase::Models::ACHTransfer::InboundFundsHold#currency
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
        # @see Increase::Models::ACHTransfer::InboundFundsHold#status
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
        # @see Increase::Models::ACHTransfer::InboundFundsHold#type
        module Type
          extend Increase::Internal::Type::Enum

          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/ach_transfer/properties/network
      #
      # @see Increase::Models::ACHTransfer#network
      module Network
        extend Increase::Internal::Type::Enum

        ACH = :ach

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class NotificationsOfChange < Increase::Internal::Type::BaseModel
        # @!attribute change_code
        #   #/components/schemas/ach_transfer/properties/notifications_of_change/items/properties/change_code
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode]
        required :change_code, enum: -> { Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode }

        # @!attribute corrected_data
        #   #/components/schemas/ach_transfer/properties/notifications_of_change/items/properties/corrected_data
        #
        #   @return [String]
        required :corrected_data, String

        # @!attribute created_at
        #   #/components/schemas/ach_transfer/properties/notifications_of_change/items/properties/created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/notifications_of_change/items
        #   #
        #   # @param change_code [Symbol, Increase::Models::ACHTransfer::NotificationsOfChange::ChangeCode]
        #   # @param corrected_data [String]
        #   # @param created_at [Time]
        #   #
        #   def initialize(change_code:, corrected_data:, created_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/ach_transfer/properties/notifications_of_change/items/properties/change_code
        #
        # @see Increase::Models::ACHTransfer::NotificationsOfChange#change_code
        module ChangeCode
          extend Increase::Internal::Type::Enum

          # The account number was incorrect.
          INCORRECT_ACCOUNT_NUMBER = :incorrect_account_number

          # The routing number was incorrect.
          INCORRECT_ROUTING_NUMBER = :incorrect_routing_number

          # Both the routing number and the account number were incorrect.
          INCORRECT_ROUTING_NUMBER_AND_ACCOUNT_NUMBER = :incorrect_routing_number_and_account_number

          # The transaction code was incorrect. Try changing the `funding` parameter from checking to savings or vice-versa.
          INCORRECT_TRANSACTION_CODE = :incorrect_transaction_code

          # The account number and the transaction code were incorrect.
          INCORRECT_ACCOUNT_NUMBER_AND_TRANSACTION_CODE = :incorrect_account_number_and_transaction_code

          # The routing number, account number, and transaction code were incorrect.
          INCORRECT_ROUTING_NUMBER_ACCOUNT_NUMBER_AND_TRANSACTION_CODE =
            :incorrect_routing_number_account_number_and_transaction_code

          # The receiving depository financial institution identification was incorrect.
          INCORRECT_RECEIVING_DEPOSITORY_FINANCIAL_INSTITUTION_IDENTIFICATION =
            :incorrect_receiving_depository_financial_institution_identification

          # The individual identification number was incorrect.
          INCORRECT_INDIVIDUAL_IDENTIFICATION_NUMBER = :incorrect_individual_identification_number

          # The addenda had an incorrect format.
          ADDENDA_FORMAT_ERROR = :addenda_format_error

          # The standard entry class code was incorrect for an outbound international payment.
          INCORRECT_STANDARD_ENTRY_CLASS_CODE_FOR_OUTBOUND_INTERNATIONAL_PAYMENT =
            :incorrect_standard_entry_class_code_for_outbound_international_payment

          # The notification of change was misrouted.
          MISROUTED_NOTIFICATION_OF_CHANGE = :misrouted_notification_of_change

          # The trace number was incorrect.
          INCORRECT_TRACE_NUMBER = :incorrect_trace_number

          # The company identification number was incorrect.
          INCORRECT_COMPANY_IDENTIFICATION_NUMBER = :incorrect_company_identification_number

          # The individual identification number or identification number was incorrect.
          INCORRECT_IDENTIFICATION_NUMBER = :incorrect_identification_number

          # The corrected data was incorrectly formatted.
          INCORRECTLY_FORMATTED_CORRECTED_DATA = :incorrectly_formatted_corrected_data

          # The discretionary data was incorrect.
          INCORRECT_DISCRETIONARY_DATA = :incorrect_discretionary_data

          # The routing number was not from the original entry detail record.
          ROUTING_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD =
            :routing_number_not_from_original_entry_detail_record

          # The depository financial institution account number was not from the original entry detail record.
          DEPOSITORY_FINANCIAL_INSTITUTION_ACCOUNT_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD =
            :depository_financial_institution_account_number_not_from_original_entry_detail_record

          # The transaction code was incorrect, initiated by the originating depository financial institution.
          INCORRECT_TRANSACTION_CODE_BY_ORIGINATING_DEPOSITORY_FINANCIAL_INSTITUTION =
            :incorrect_transaction_code_by_originating_depository_financial_institution

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::ACHTransfer#preferred_effective_date
      class PreferredEffectiveDate < Increase::Internal::Type::BaseModel
        # @!attribute date
        #   #/components/schemas/ach_transfer/properties/preferred_effective_date/properties/date
        #
        #   @return [Date, nil]
        required :date, Date, nil?: true

        # @!attribute settlement_schedule
        #   #/components/schemas/ach_transfer/properties/preferred_effective_date/properties/settlement_schedule
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule, nil]
        required :settlement_schedule,
                 enum: -> { Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule },
                 nil?: true

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/preferred_effective_date
        #   #
        #   # @param date [Date, nil]
        #   # @param settlement_schedule [Symbol, Increase::Models::ACHTransfer::PreferredEffectiveDate::SettlementSchedule, nil]
        #   #
        #   def initialize(date:, settlement_schedule:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/ach_transfer/properties/preferred_effective_date/properties/settlement_schedule
        #
        # @see Increase::Models::ACHTransfer::PreferredEffectiveDate#settlement_schedule
        module SettlementSchedule
          extend Increase::Internal::Type::Enum

          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted.
          # This is necessary, but not sufficient for the transfer to be settled same-day:
          # it must also be submitted before the last same-day cutoff
          # and be less than or equal to $1,000.000.00.
          SAME_DAY = :same_day

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = :future_dated

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::ACHTransfer#return_
      class Return < Increase::Internal::Type::BaseModel
        # @!attribute created_at
        #   #/components/schemas/ach_transfer/properties/return/anyOf/0/properties/created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute raw_return_reason_code
        #   #/components/schemas/ach_transfer/properties/return/anyOf/0/properties/raw_return_reason_code
        #
        #   @return [String]
        required :raw_return_reason_code, String

        # @!attribute return_reason_code
        #   #/components/schemas/ach_transfer/properties/return/anyOf/0/properties/return_reason_code
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::Return::ReturnReasonCode]
        required :return_reason_code, enum: -> { Increase::Models::ACHTransfer::Return::ReturnReasonCode }

        # @!attribute trace_number
        #   #/components/schemas/ach_transfer/properties/return/anyOf/0/properties/trace_number
        #
        #   @return [String]
        required :trace_number, String

        # @!attribute transaction_id
        #   #/components/schemas/ach_transfer/properties/return/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!attribute transfer_id
        #   #/components/schemas/ach_transfer/properties/return/anyOf/0/properties/transfer_id
        #
        #   @return [String]
        required :transfer_id, String

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/return
        #   #
        #   # @param created_at [Time]
        #   # @param raw_return_reason_code [String]
        #   # @param return_reason_code [Symbol, Increase::Models::ACHTransfer::Return::ReturnReasonCode]
        #   # @param trace_number [String]
        #   # @param transaction_id [String]
        #   # @param transfer_id [String]
        #   #
        #   def initialize(
        #     created_at:,
        #     raw_return_reason_code:,
        #     return_reason_code:,
        #     trace_number:,
        #     transaction_id:,
        #     transfer_id:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/ach_transfer/properties/return/anyOf/0/properties/return_reason_code
        #
        # @see Increase::Models::ACHTransfer::Return#return_reason_code
        module ReturnReasonCode
          extend Increase::Internal::Type::Enum

          # Code R01. Insufficient funds in the receiving account. Sometimes abbreviated to NSF.
          INSUFFICIENT_FUND = :insufficient_fund

          # Code R03. The account does not exist or the receiving bank was unable to locate it.
          NO_ACCOUNT = :no_account

          # Code R02. The account is closed at the receiving bank.
          ACCOUNT_CLOSED = :account_closed

          # Code R04. The account number is invalid at the receiving bank.
          INVALID_ACCOUNT_NUMBER_STRUCTURE = :invalid_account_number_structure

          # Code R16. The account at the receiving bank was frozen per the Office of Foreign Assets Control.
          ACCOUNT_FROZEN_ENTRY_RETURNED_PER_OFAC_INSTRUCTION = :account_frozen_entry_returned_per_ofac_instruction

          # Code R23. The receiving bank account refused a credit transfer.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

          # Code R05. The receiving bank rejected because of an incorrect Standard Entry Class code.
          UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE =
            :unauthorized_debit_to_consumer_account_using_corporate_sec_code

          # Code R29. The corporate customer at the receiving bank reversed the transfer.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

          # Code R08. The receiving bank stopped payment on this transfer.
          PAYMENT_STOPPED = :payment_stopped

          # Code R20. The receiving bank account does not perform transfers.
          NON_TRANSACTION_ACCOUNT = :non_transaction_account

          # Code R09. The receiving bank account does not have enough available balance for the transfer.
          UNCOLLECTED_FUNDS = :uncollected_funds

          # Code R28. The routing number is incorrect.
          ROUTING_NUMBER_CHECK_DIGIT_ERROR = :routing_number_check_digit_error

          # Code R10. The customer at the receiving bank reversed the transfer.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
            :customer_advised_unauthorized_improper_ineligible_or_incomplete

          # Code R19. The amount field is incorrect or too large.
          AMOUNT_FIELD_ERROR = :amount_field_error

          # Code R07. The customer at the receiving institution informed their bank that they have revoked authorization for a previously authorized transfer.
          AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

          # Code R13. The routing number is invalid.
          INVALID_ACH_ROUTING_NUMBER = :invalid_ach_routing_number

          # Code R17. The receiving bank is unable to process a field in the transfer.
          FILE_RECORD_EDIT_CRITERIA = :file_record_edit_criteria

          # Code R45. The individual name field was invalid.
          ENR_INVALID_INDIVIDUAL_NAME = :enr_invalid_individual_name

          # Code R06. The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
          RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

          # Code R34. The receiving bank's regulatory supervisor has limited their participation in the ACH network.
          LIMITED_PARTICIPATION_DFI = :limited_participation_dfi

          # Code R85. The outbound international ACH transfer was incorrect.
          INCORRECTLY_CODED_OUTBOUND_INTERNATIONAL_PAYMENT = :incorrectly_coded_outbound_international_payment

          # Code R12. A rare return reason. The account was sold to another bank.
          ACCOUNT_SOLD_TO_ANOTHER_DFI = :account_sold_to_another_dfi

          # Code R25. The addenda record is incorrect or missing.
          ADDENDA_ERROR = :addenda_error

          # Code R15. A rare return reason. The account holder is deceased.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

          # Code R11. A rare return reason. The customer authorized some payment to the sender, but this payment was not in error.
          CUSTOMER_ADVISED_NOT_WITHIN_AUTHORIZATION_TERMS = :customer_advised_not_within_authorization_terms

          # Code R74. A rare return reason. Sent in response to a return that was returned with code `field_error`. The latest return should include the corrected field(s).
          CORRECTED_RETURN = :corrected_return

          # Code R24. A rare return reason. The receiving bank received an exact duplicate entry with the same trace number and amount.
          DUPLICATE_ENTRY = :duplicate_entry

          # Code R67. A rare return reason. The return this message refers to was a duplicate.
          DUPLICATE_RETURN = :duplicate_return

          # Code R47. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_DUPLICATE_ENROLLMENT = :enr_duplicate_enrollment

          # Code R43. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_DFI_ACCOUNT_NUMBER = :enr_invalid_dfi_account_number

          # Code R44. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_INDIVIDUAL_ID_NUMBER = :enr_invalid_individual_id_number

          # Code R46. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_REPRESENTATIVE_PAYEE_INDICATOR = :enr_invalid_representative_payee_indicator

          # Code R41. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_TRANSACTION_CODE = :enr_invalid_transaction_code

          # Code R40. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_RETURN_OF_ENR_ENTRY = :enr_return_of_enr_entry

          # Code R42. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_ROUTING_NUMBER_CHECK_DIGIT_ERROR = :enr_routing_number_check_digit_error

          # Code R84. A rare return reason. The International ACH Transfer cannot be processed by the gateway.
          ENTRY_NOT_PROCESSED_BY_GATEWAY = :entry_not_processed_by_gateway

          # Code R69. A rare return reason. One or more of the fields in the ACH were malformed.
          FIELD_ERROR = :field_error

          # Code R83. A rare return reason. The Foreign receiving bank was unable to settle this ACH transfer.
          FOREIGN_RECEIVING_DFI_UNABLE_TO_SETTLE = :foreign_receiving_dfi_unable_to_settle

          # Code R80. A rare return reason. The International ACH Transfer is malformed.
          IAT_ENTRY_CODING_ERROR = :iat_entry_coding_error

          # Code R18. A rare return reason. The ACH has an improper effective entry date field.
          IMPROPER_EFFECTIVE_ENTRY_DATE = :improper_effective_entry_date

          # Code R39. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          IMPROPER_SOURCE_DOCUMENT_SOURCE_DOCUMENT_PRESENTED = :improper_source_document_source_document_presented

          # Code R21. A rare return reason. The Company ID field of the ACH was invalid.
          INVALID_COMPANY_ID = :invalid_company_id

          # Code R82. A rare return reason. The foreign receiving bank identifier for an International ACH Transfer was invalid.
          INVALID_FOREIGN_RECEIVING_DFI_IDENTIFICATION = :invalid_foreign_receiving_dfi_identification

          # Code R22. A rare return reason. The Individual ID number field of the ACH was invalid.
          INVALID_INDIVIDUAL_ID_NUMBER = :invalid_individual_id_number

          # Code R53. A rare return reason. Both the Represented Check ("RCK") entry and the original check were presented to the bank.
          ITEM_AND_RCK_ENTRY_PRESENTED_FOR_PAYMENT = :item_and_rck_entry_presented_for_payment

          # Code R51. A rare return reason. The Represented Check ("RCK") entry is ineligible.
          ITEM_RELATED_TO_RCK_ENTRY_IS_INELIGIBLE = :item_related_to_rck_entry_is_ineligible

          # Code R26. A rare return reason. The ACH is missing a required field.
          MANDATORY_FIELD_ERROR = :mandatory_field_error

          # Code R71. A rare return reason. The receiving bank does not recognize the routing number in a dishonored return entry.
          MISROUTED_DISHONORED_RETURN = :misrouted_dishonored_return

          # Code R61. A rare return reason. The receiving bank does not recognize the routing number in a return entry.
          MISROUTED_RETURN = :misrouted_return

          # Code R76. A rare return reason. Sent in response to a return, the bank does not find the errors alleged by the returning bank.
          NO_ERRORS_FOUND = :no_errors_found

          # Code R77. A rare return reason. The receiving bank does not accept the return of the erroneous debit. The funds are not available at the receiving bank.
          NON_ACCEPTANCE_OF_R62_DISHONORED_RETURN = :non_acceptance_of_r62_dishonored_return

          # Code R81. A rare return reason. The receiving bank does not accept International ACH Transfers.
          NON_PARTICIPANT_IN_IAT_PROGRAM = :non_participant_in_iat_program

          # Code R31. A rare return reason. A return that has been agreed to be accepted by the receiving bank, despite falling outside of the usual return timeframe.
          PERMISSIBLE_RETURN_ENTRY = :permissible_return_entry

          # Code R70. A rare return reason. The receiving bank had not approved this return.
          PERMISSIBLE_RETURN_ENTRY_NOT_ACCEPTED = :permissible_return_entry_not_accepted

          # Code R32. A rare return reason. The receiving bank could not settle this transaction.
          RDFI_NON_SETTLEMENT = :rdfi_non_settlement

          # Code R30. A rare return reason. The receiving bank does not accept Check Truncation ACH transfers.
          RDFI_PARTICIPANT_IN_CHECK_TRUNCATION_PROGRAM = :rdfi_participant_in_check_truncation_program

          # Code R14. A rare return reason. The payee is deceased.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
            :representative_payee_deceased_or_unable_to_continue_in_that_capacity

          # Code R75. A rare return reason. The originating bank disputes that an earlier `duplicate_entry` return was actually a duplicate.
          RETURN_NOT_A_DUPLICATE = :return_not_a_duplicate

          # Code R62. A rare return reason. The originating financial institution made a mistake and this return corrects it.
          RETURN_OF_ERRONEOUS_OR_REVERSING_DEBIT = :return_of_erroneous_or_reversing_debit

          # Code R36. A rare return reason. Return of a malformed credit entry.
          RETURN_OF_IMPROPER_CREDIT_ENTRY = :return_of_improper_credit_entry

          # Code R35. A rare return reason. Return of a malformed debit entry.
          RETURN_OF_IMPROPER_DEBIT_ENTRY = :return_of_improper_debit_entry

          # Code R33. A rare return reason. Return of a Destroyed Check ("XKC") entry.
          RETURN_OF_XCK_ENTRY = :return_of_xck_entry

          # Code R37. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          SOURCE_DOCUMENT_PRESENTED_FOR_PAYMENT = :source_document_presented_for_payment

          # Code R50. A rare return reason. State law prevents the bank from accepting the Represented Check ("RCK") entry.
          STATE_LAW_AFFECTING_RCK_ACCEPTANCE = :state_law_affecting_rck_acceptance

          # Code R52. A rare return reason. A stop payment was issued on a Represented Check ("RCK") entry.
          STOP_PAYMENT_ON_ITEM_RELATED_TO_RCK_ENTRY = :stop_payment_on_item_related_to_rck_entry

          # Code R38. A rare return reason. The source attached to the ACH, usually an ACH check conversion, includes a stop payment.
          STOP_PAYMENT_ON_SOURCE_DOCUMENT = :stop_payment_on_source_document

          # Code R73. A rare return reason. The bank receiving an `untimely_return` believes it was on time.
          TIMELY_ORIGINAL_RETURN = :timely_original_return

          # Code R27. A rare return reason. An ACH return's trace number does not match an originated ACH.
          TRACE_NUMBER_ERROR = :trace_number_error

          # Code R72. A rare return reason. The dishonored return was sent too late.
          UNTIMELY_DISHONORED_RETURN = :untimely_dishonored_return

          # Code R68. A rare return reason. The return was sent too late.
          UNTIMELY_RETURN = :untimely_return

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::ACHTransfer#settlement
      class Settlement < Increase::Internal::Type::BaseModel
        # @!attribute settled_at
        #   #/components/schemas/ach_transfer/properties/settlement/anyOf/0/properties/settled_at
        #
        #   @return [Time]
        required :settled_at, Time

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/settlement
        #   #
        #   # @param settled_at [Time]
        #   #
        #   def initialize(settled_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/ach_transfer/properties/standard_entry_class_code
      #
      # @see Increase::Models::ACHTransfer#standard_entry_class_code
      module StandardEntryClassCode
        extend Increase::Internal::Type::Enum

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/ach_transfer/properties/status
      #
      # @see Increase::Models::ACHTransfer#status
      module Status
        extend Increase::Internal::Type::Enum

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer belongs to a Transfer Session that is pending confirmation.
        PENDING_TRANSFER_SESSION_CONFIRMATION = :pending_transfer_session_confirmation

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending submission to the Federal Reserve.
        PENDING_SUBMISSION = :pending_submission

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer has been rejected.
        REJECTED = :rejected

        # The transfer is complete.
        SUBMITTED = :submitted

        # The transfer has been returned.
        RETURNED = :returned

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::ACHTransfer#submission
      class Submission < Increase::Internal::Type::BaseModel
        # @!attribute effective_date
        #   #/components/schemas/ach_transfer/properties/submission/anyOf/0/properties/effective_date
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute expected_funds_settlement_at
        #   #/components/schemas/ach_transfer/properties/submission/anyOf/0/properties/expected_funds_settlement_at
        #
        #   @return [Time]
        required :expected_funds_settlement_at, Time

        # @!attribute expected_settlement_schedule
        #   #/components/schemas/ach_transfer/properties/submission/anyOf/0/properties/expected_settlement_schedule
        #
        #   @return [Symbol, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule]
        required :expected_settlement_schedule,
                 enum: -> { Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule }

        # @!attribute submitted_at
        #   #/components/schemas/ach_transfer/properties/submission/anyOf/0/properties/submitted_at
        #
        #   @return [Time]
        required :submitted_at, Time

        # @!attribute trace_number
        #   #/components/schemas/ach_transfer/properties/submission/anyOf/0/properties/trace_number
        #
        #   @return [String]
        required :trace_number, String

        # @!parse
        #   # #/components/schemas/ach_transfer/properties/submission
        #   #
        #   # @param effective_date [Date]
        #   # @param expected_funds_settlement_at [Time]
        #   # @param expected_settlement_schedule [Symbol, Increase::Models::ACHTransfer::Submission::ExpectedSettlementSchedule]
        #   # @param submitted_at [Time]
        #   # @param trace_number [String]
        #   #
        #   def initialize(
        #     effective_date:,
        #     expected_funds_settlement_at:,
        #     expected_settlement_schedule:,
        #     submitted_at:,
        #     trace_number:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/ach_transfer/properties/submission/anyOf/0/properties/expected_settlement_schedule
        #
        # @see Increase::Models::ACHTransfer::Submission#expected_settlement_schedule
        module ExpectedSettlementSchedule
          extend Increase::Internal::Type::Enum

          # The transfer is expected to settle same-day.
          SAME_DAY = :same_day

          # The transfer is expected to settle on a future date.
          FUTURE_DATED = :future_dated

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/ach_transfer/properties/type
      #
      # @see Increase::Models::ACHTransfer#type
      module Type
        extend Increase::Internal::Type::Enum

        ACH_TRANSFER = :ach_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
