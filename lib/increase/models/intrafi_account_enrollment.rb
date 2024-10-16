# frozen_string_literal: true

module Increase
  module Models
    class IntrafiAccountEnrollment < BaseModel
      # @!attribute [rw] id
      #   The identifier of this enrollment at IntraFi.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier of the Increase Account being swept into the network.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] intrafi_id
      #   The identifier of the account in IntraFi's system. This identifier will be printed on any IntraFi statements or documents.
      #   @return [String]
      required :intrafi_id, String

      # @!attribute [rw] status
      #   The status of the account in the network. An account takes about one business day to go from `pending_enrolling` to `enrolled`.
      #   @return [Symbol, Increase::Models::IntrafiAccountEnrollment::Status]
      required :status, enum: -> { Increase::Models::IntrafiAccountEnrollment::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `intrafi_account_enrollment`.
      #   @return [Symbol, Increase::Models::IntrafiAccountEnrollment::Type]
      required :type, enum: -> { Increase::Models::IntrafiAccountEnrollment::Type }

      # The status of the account in the network. An account takes about one business day to go from `pending_enrolling` to `enrolled`.
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
      end

      # A constant representing the object's type. For this resource it will always be `intrafi_account_enrollment`.
      class Type < Increase::Enum
        INTRAFI_ACCOUNT_ENROLLMENT = :intrafi_account_enrollment
      end

      # Create a new instance of IntrafiAccountEnrollment from a Hash of raw data.
      #
      # @overload initialize(id: nil, account_id: nil, idempotency_key: nil, intrafi_id: nil, status: nil, type: nil)
      # @param id [String] The identifier of this enrollment at IntraFi.
      # @param account_id [String] The identifier of the Increase Account being swept into the network.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param intrafi_id [String] The identifier of the account in IntraFi's system. This identifier will be
      #   printed on any IntraFi statements or documents.
      # @param status [String] The status of the account in the network. An account takes about one business
      #   day to go from `pending_enrolling` to `enrolled`.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `intrafi_account_enrollment`.
      def initialize(data = {})
        super
      end
    end
  end
end
