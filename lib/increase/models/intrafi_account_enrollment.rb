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
      #   @return [Symbol]
      required :status,
               Increase::Enum.new(:pending_enrolling, :enrolled, :pending_unenrolling, :unenrolled, :requires_attention)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `intrafi_account_enrollment`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:intrafi_account_enrollment)
    end
  end
end
