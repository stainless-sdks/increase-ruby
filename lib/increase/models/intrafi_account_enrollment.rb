# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # intrafi_account_enrollment => {
    #   id: String,
    #   account_id: String,
    #   idempotency_key: String,
    #   intrafi_id: String,
    #   status: enum: Increase::Models::IntrafiAccountEnrollment::Status
    # }
    # ```
    class IntrafiAccountEnrollment < Increase::BaseModel
      # @!attribute id
      #   The identifier of this enrollment at IntraFi.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The identifier of the Increase Account being swept into the network.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute intrafi_id
      #   The identifier of the account in IntraFi's system. This identifier will be printed on any IntraFi statements or documents.
      #
      #   @return [String]
      required :intrafi_id, String

      # @!attribute status
      #   The status of the account in the network. An account takes about one business day to go from `pending_enrolling` to `enrolled`.
      #
      #   @return [Symbol, Increase::Models::IntrafiAccountEnrollment::Status]
      required :status, enum: -> { Increase::Models::IntrafiAccountEnrollment::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `intrafi_account_enrollment`.
      #
      #   @return [Symbol, Increase::Models::IntrafiAccountEnrollment::Type]
      required :type, enum: -> { Increase::Models::IntrafiAccountEnrollment::Type }

      # @!parse
      #   # IntraFi is a
      #   #   [network of financial institutions](https://www.intrafi.com/network-banks) that
      #   #   allows Increase users to sweep funds to multiple banks, in addition to
      #   #   Increase's main bank partners. This enables accounts to become eligible for
      #   #   additional Federal Deposit Insurance Corporation (FDIC) insurance. An IntraFi
      #   #   Account Enrollment object represents the status of an account in the network.
      #   #   Sweeping an account to IntraFi doesn't affect funds availability.
      #   #
      #   # @param id [String] The identifier of this enrollment at IntraFi.
      #   #
      #   # @param account_id [String] The identifier of the Increase Account being swept into the network.
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param intrafi_id [String] The identifier of the account in IntraFi's system. This identifier will be
      #   #   printed on any IntraFi statements or documents.
      #   #
      #   # @param status [String] The status of the account in the network. An account takes about one business
      #   #   day to go from `pending_enrolling` to `enrolled`.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `intrafi_account_enrollment`.
      #   #
      #   def initialize(id:, account_id:, idempotency_key:, intrafi_id:, status:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The status of the account in the network. An account takes about one business day to go from `pending_enrolling` to `enrolled`.
      #
      # @example
      # ```ruby
      # case status
      # in :pending_enrolling
      #   # ...
      # in :enrolled
      #   # ...
      # in :pending_unenrolling
      #   # ...
      # in :unenrolled
      #   # ...
      # in :requires_attention
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The account is being added to the IntraFi network.
        PENDING_ENROLLING = :pending_enrolling

        # The account has been enrolled with IntraFi.
        ENROLLED = :enrolled

        # The account is being unenrolled from IntraFi's deposit sweep.
        PENDING_UNENROLLING = :pending_unenrolling

        # The account was once enrolled, but is no longer enrolled at IntraFi.
        UNENROLLED = :unenrolled

        # Something unexpected happened with this account. Contact Increase support.
        REQUIRES_ATTENTION = :requires_attention

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be `intrafi_account_enrollment`.
      #
      # @example
      # ```ruby
      # case type
      # in :intrafi_account_enrollment
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        INTRAFI_ACCOUNT_ENROLLMENT = :intrafi_account_enrollment

        finalize!
      end
    end
  end
end
