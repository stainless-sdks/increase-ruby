# frozen_string_literal: true

module Increase
  module Models
    class WireDrawdownRequestListParams < Increase::BaseModel
      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for that object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String]
      optional :idempotency_key, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute status
      #   Filter Wire Drawdown Requests for those with the specified status.
      #
      #   @return [Symbol, Increase::Models::WireDrawdownRequestListParams::Status]
      optional :status, enum: -> { Increase::Models::WireDrawdownRequestListParams::Status }

      # @!parse
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param idempotency_key [String] Filter records to the one with the specified `idempotency_key` you chose for
      #   #   that object. This value is unique across Increase and is used to ensure that a
      #   #   request is only processed once. Learn more about
      #   #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param status [String] Filter Wire Drawdown Requests for those with the specified status.
      #   #
      #   def initialize(cursor: nil, idempotency_key: nil, limit: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # Filter Wire Drawdown Requests for those with the specified status.
      #
      # @example
      #
      # ```ruby
      # case status
      # in :pending_submission
      #   # ...
      # in :pending_response
      #   # ...
      # in :fulfilled
      #   # ...
      # in :refused
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The drawdown request is queued to be submitted to Fedwire.
        PENDING_SUBMISSION = :pending_submission

        # The drawdown request has been sent and the recipient should respond in some way.
        PENDING_RESPONSE = :pending_response

        # The drawdown request has been fulfilled by the recipient.
        FULFILLED = :fulfilled

        # The drawdown request has been refused by the recipient.
        REFUSED = :refused

        finalize!
      end
    end
  end
end
