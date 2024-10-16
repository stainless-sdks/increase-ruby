# frozen_string_literal: true

module Increase
  module Models
    class ExternalAccount < BaseModel
      # @!attribute [rw] id
      #   The External Account's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_holder
      #   The type of entity that owns the External Account.
      #   @return [Symbol, Increase::Models::ExternalAccount::AccountHolder]
      required :account_holder, enum: -> { Increase::Models::ExternalAccount::AccountHolder }

      # @!attribute [rw] account_number
      #   The destination account number.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the External Account was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   The External Account's description for display purposes.
      #   @return [String]
      required :description, String

      # @!attribute [rw] funding
      #   The type of the account to which the transfer will be sent.
      #   @return [Symbol, Increase::Models::ExternalAccount::Funding]
      required :funding, enum: -> { Increase::Models::ExternalAccount::Funding }

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] status
      #   The External Account's status.
      #   @return [Symbol, Increase::Models::ExternalAccount::Status]
      required :status, enum: -> { Increase::Models::ExternalAccount::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `external_account`.
      #   @return [Symbol, Increase::Models::ExternalAccount::Type]
      required :type, enum: -> { Increase::Models::ExternalAccount::Type }

      # @!attribute [rw] verification_status
      #   If you have verified ownership of the External Account.
      #   @return [Symbol, Increase::Models::ExternalAccount::VerificationStatus]
      required :verification_status, enum: -> { Increase::Models::ExternalAccount::VerificationStatus }

      # The type of entity that owns the External Account.
      class AccountHolder < Increase::Enum
        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown
      end

      # The type of the account to which the transfer will be sent.
      class Funding < Increase::Enum
        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other
      end

      # The External Account's status.
      class Status < Increase::Enum
        # The External Account is active.
        ACTIVE = :active

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = :archived
      end

      # A constant representing the object's type. For this resource it will always be `external_account`.
      class Type < Increase::Enum
        EXTERNAL_ACCOUNT = :external_account
      end

      # If you have verified ownership of the External Account.
      class VerificationStatus < Increase::Enum
        # The External Account has not been verified.
        UNVERIFIED = :unverified

        # The External Account is in the process of being verified.
        PENDING = :pending

        # The External Account is verified.
        VERIFIED = :verified
      end

      # Create a new instance of ExternalAccount from a Hash of raw data.
      #
      # @overload initialize(id: nil, account_holder: nil, account_number: nil, created_at: nil, description: nil, funding: nil, idempotency_key: nil, routing_number: nil, status: nil, type: nil, verification_status: nil)
      # @param id [String] The External Account's identifier.
      # @param account_holder [String] The type of entity that owns the External Account.
      # @param account_number [String] The destination account number.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the External Account was created.
      # @param description [String] The External Account's description for display purposes.
      # @param funding [String] The type of the account to which the transfer will be sent.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN).
      # @param status [String] The External Account's status.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `external_account`.
      # @param verification_status [String] If you have verified ownership of the External Account.
      def initialize(data = {})
        super
      end
    end
  end
end
