# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ExternalAccounts#create
    class ExternalAccount < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/external_account/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_holder
      #   #/components/schemas/external_account/properties/account_holder
      #
      #   @return [Symbol, Increase::Models::ExternalAccount::AccountHolder]
      required :account_holder, enum: -> { Increase::Models::ExternalAccount::AccountHolder }

      # @!attribute account_number
      #   #/components/schemas/external_account/properties/account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute created_at
      #   #/components/schemas/external_account/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   #/components/schemas/external_account/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute funding
      #   #/components/schemas/external_account/properties/funding
      #
      #   @return [Symbol, Increase::Models::ExternalAccount::Funding]
      required :funding, enum: -> { Increase::Models::ExternalAccount::Funding }

      # @!attribute idempotency_key
      #   #/components/schemas/external_account/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute routing_number
      #   #/components/schemas/external_account/properties/routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute status
      #   #/components/schemas/external_account/properties/status
      #
      #   @return [Symbol, Increase::Models::ExternalAccount::Status]
      required :status, enum: -> { Increase::Models::ExternalAccount::Status }

      # @!attribute type
      #   #/components/schemas/external_account/properties/type
      #
      #   @return [Symbol, Increase::Models::ExternalAccount::Type]
      required :type, enum: -> { Increase::Models::ExternalAccount::Type }

      # @!attribute verification_status
      #   #/components/schemas/external_account/properties/verification_status
      #
      #   @return [Symbol, Increase::Models::ExternalAccount::VerificationStatus]
      required :verification_status, enum: -> { Increase::Models::ExternalAccount::VerificationStatus }

      # @!parse
      #   # #/components/schemas/external_account
      #   #
      #   # @param id [String]
      #   # @param account_holder [Symbol, Increase::Models::ExternalAccount::AccountHolder]
      #   # @param account_number [String]
      #   # @param created_at [Time]
      #   # @param description [String]
      #   # @param funding [Symbol, Increase::Models::ExternalAccount::Funding]
      #   # @param idempotency_key [String, nil]
      #   # @param routing_number [String]
      #   # @param status [Symbol, Increase::Models::ExternalAccount::Status]
      #   # @param type [Symbol, Increase::Models::ExternalAccount::Type]
      #   # @param verification_status [Symbol, Increase::Models::ExternalAccount::VerificationStatus]
      #   #
      #   def initialize(
      #     id:,
      #     account_holder:,
      #     account_number:,
      #     created_at:,
      #     description:,
      #     funding:,
      #     idempotency_key:,
      #     routing_number:,
      #     status:,
      #     type:,
      #     verification_status:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/external_account/properties/account_holder
      #
      # @see Increase::Models::ExternalAccount#account_holder
      module AccountHolder
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

      # #/components/schemas/external_account/properties/funding
      #
      # @see Increase::Models::ExternalAccount#funding
      module Funding
        extend Increase::Internal::Type::Enum

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/external_account/properties/status
      #
      # @see Increase::Models::ExternalAccount#status
      module Status
        extend Increase::Internal::Type::Enum

        # The External Account is active.
        ACTIVE = :active

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = :archived

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/external_account/properties/type
      #
      # @see Increase::Models::ExternalAccount#type
      module Type
        extend Increase::Internal::Type::Enum

        EXTERNAL_ACCOUNT = :external_account

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/external_account/properties/verification_status
      #
      # @see Increase::Models::ExternalAccount#verification_status
      module VerificationStatus
        extend Increase::Internal::Type::Enum

        # The External Account has not been verified.
        UNVERIFIED = :unverified

        # The External Account is in the process of being verified.
        PENDING = :pending

        # The External Account is verified.
        VERIFIED = :verified

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
