# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::AccountTransfers#create
    class AccountTransfer < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/account_transfer/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/account_transfer/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/account_transfer/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute approval
      #   #/components/schemas/account_transfer/properties/approval
      #
      #   @return [Increase::Models::AccountTransfer::Approval, nil]
      required :approval, -> { Increase::Models::AccountTransfer::Approval }, nil?: true

      # @!attribute cancellation
      #   #/components/schemas/account_transfer/properties/cancellation
      #
      #   @return [Increase::Models::AccountTransfer::Cancellation, nil]
      required :cancellation, -> { Increase::Models::AccountTransfer::Cancellation }, nil?: true

      # @!attribute created_at
      #   #/components/schemas/account_transfer/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #   #/components/schemas/account_transfer/properties/created_by
      #
      #   @return [Increase::Models::AccountTransfer::CreatedBy, nil]
      required :created_by, -> { Increase::Models::AccountTransfer::CreatedBy }, nil?: true

      # @!attribute currency
      #   #/components/schemas/account_transfer/properties/currency
      #
      #   @return [Symbol, Increase::Models::AccountTransfer::Currency]
      required :currency, enum: -> { Increase::Models::AccountTransfer::Currency }

      # @!attribute description
      #   #/components/schemas/account_transfer/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute destination_account_id
      #   #/components/schemas/account_transfer/properties/destination_account_id
      #
      #   @return [String]
      required :destination_account_id, String

      # @!attribute destination_transaction_id
      #   #/components/schemas/account_transfer/properties/destination_transaction_id
      #
      #   @return [String, nil]
      required :destination_transaction_id, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/account_transfer/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute network
      #   #/components/schemas/account_transfer/properties/network
      #
      #   @return [Symbol, Increase::Models::AccountTransfer::Network]
      required :network, enum: -> { Increase::Models::AccountTransfer::Network }

      # @!attribute pending_transaction_id
      #   #/components/schemas/account_transfer/properties/pending_transaction_id
      #
      #   @return [String, nil]
      required :pending_transaction_id, String, nil?: true

      # @!attribute status
      #   #/components/schemas/account_transfer/properties/status
      #
      #   @return [Symbol, Increase::Models::AccountTransfer::Status]
      required :status, enum: -> { Increase::Models::AccountTransfer::Status }

      # @!attribute transaction_id
      #   #/components/schemas/account_transfer/properties/transaction_id
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #   #/components/schemas/account_transfer/properties/type
      #
      #   @return [Symbol, Increase::Models::AccountTransfer::Type]
      required :type, enum: -> { Increase::Models::AccountTransfer::Type }

      # @!parse
      #   # #/components/schemas/account_transfer
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param approval [Increase::Models::AccountTransfer::Approval, nil]
      #   # @param cancellation [Increase::Models::AccountTransfer::Cancellation, nil]
      #   # @param created_at [Time]
      #   # @param created_by [Increase::Models::AccountTransfer::CreatedBy, nil]
      #   # @param currency [Symbol, Increase::Models::AccountTransfer::Currency]
      #   # @param description [String]
      #   # @param destination_account_id [String]
      #   # @param destination_transaction_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param network [Symbol, Increase::Models::AccountTransfer::Network]
      #   # @param pending_transaction_id [String, nil]
      #   # @param status [Symbol, Increase::Models::AccountTransfer::Status]
      #   # @param transaction_id [String, nil]
      #   # @param type [Symbol, Increase::Models::AccountTransfer::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     amount:,
      #     approval:,
      #     cancellation:,
      #     created_at:,
      #     created_by:,
      #     currency:,
      #     description:,
      #     destination_account_id:,
      #     destination_transaction_id:,
      #     idempotency_key:,
      #     network:,
      #     pending_transaction_id:,
      #     status:,
      #     transaction_id:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::AccountTransfer#approval
      class Approval < Increase::Internal::Type::BaseModel
        # @!attribute approved_at
        #   #/components/schemas/account_transfer/properties/approval/anyOf/0/properties/approved_at
        #
        #   @return [Time]
        required :approved_at, Time

        # @!attribute approved_by
        #   #/components/schemas/account_transfer/properties/approval/anyOf/0/properties/approved_by
        #
        #   @return [String, nil]
        required :approved_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/account_transfer/properties/approval
        #   #
        #   # @param approved_at [Time]
        #   # @param approved_by [String, nil]
        #   #
        #   def initialize(approved_at:, approved_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::AccountTransfer#cancellation
      class Cancellation < Increase::Internal::Type::BaseModel
        # @!attribute canceled_at
        #   #/components/schemas/account_transfer/properties/cancellation/anyOf/0/properties/canceled_at
        #
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute canceled_by
        #   #/components/schemas/account_transfer/properties/cancellation/anyOf/0/properties/canceled_by
        #
        #   @return [String, nil]
        required :canceled_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/account_transfer/properties/cancellation
        #   #
        #   # @param canceled_at [Time]
        #   # @param canceled_by [String, nil]
        #   #
        #   def initialize(canceled_at:, canceled_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::AccountTransfer#created_by
      class CreatedBy < Increase::Internal::Type::BaseModel
        # @!attribute api_key
        #   #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/api_key
        #
        #   @return [Increase::Models::AccountTransfer::CreatedBy::APIKey, nil]
        required :api_key, -> { Increase::Models::AccountTransfer::CreatedBy::APIKey }, nil?: true

        # @!attribute category
        #   #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::AccountTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::AccountTransfer::CreatedBy::Category }

        # @!attribute oauth_application
        #   #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/oauth_application
        #
        #   @return [Increase::Models::AccountTransfer::CreatedBy::OAuthApplication, nil]
        required :oauth_application,
                 -> { Increase::Models::AccountTransfer::CreatedBy::OAuthApplication },
                 nil?: true

        # @!attribute user
        #   #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/user
        #
        #   @return [Increase::Models::AccountTransfer::CreatedBy::User, nil]
        required :user, -> { Increase::Models::AccountTransfer::CreatedBy::User }, nil?: true

        # @!parse
        #   # #/components/schemas/account_transfer/properties/created_by
        #   #
        #   # @param api_key [Increase::Models::AccountTransfer::CreatedBy::APIKey, nil]
        #   # @param category [Symbol, Increase::Models::AccountTransfer::CreatedBy::Category]
        #   # @param oauth_application [Increase::Models::AccountTransfer::CreatedBy::OAuthApplication, nil]
        #   # @param user [Increase::Models::AccountTransfer::CreatedBy::User, nil]
        #   #
        #   def initialize(api_key:, category:, oauth_application:, user:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::AccountTransfer::CreatedBy#api_key
        class APIKey < Increase::Internal::Type::BaseModel
          # @!attribute description
          #   #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/api_key/anyOf/0/properties/description
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!parse
          #   # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/api_key
          #   #
          #   # @param description [String, nil]
          #   #
          #   def initialize(description:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/category
        #
        # @see Increase::Models::AccountTransfer::CreatedBy#category
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

        # @see Increase::Models::AccountTransfer::CreatedBy#oauth_application
        class OAuthApplication < Increase::Internal::Type::BaseModel
          # @!attribute name
          #   #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/oauth_application/anyOf/0/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/oauth_application
          #   #
          #   # @param name [String]
          #   #
          #   def initialize(name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::AccountTransfer::CreatedBy#user
        class User < Increase::Internal::Type::BaseModel
          # @!attribute email
          #   #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/user/anyOf/0/properties/email
          #
          #   @return [String]
          required :email, String

          # @!parse
          #   # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/user
          #   #
          #   # @param email [String]
          #   #
          #   def initialize(email:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/account_transfer/properties/currency
      #
      # @see Increase::Models::AccountTransfer#currency
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

      # #/components/schemas/account_transfer/properties/network
      #
      # @see Increase::Models::AccountTransfer#network
      module Network
        extend Increase::Internal::Type::Enum

        ACCOUNT = :account

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/account_transfer/properties/status
      #
      # @see Increase::Models::AccountTransfer#status
      module Status
        extend Increase::Internal::Type::Enum

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer has been completed.
        COMPLETE = :complete

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/account_transfer/properties/type
      #
      # @see Increase::Models::AccountTransfer#type
      module Type
        extend Increase::Internal::Type::Enum

        ACCOUNT_TRANSFER = :account_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
