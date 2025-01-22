# frozen_string_literal: true

module Increase
  module Models
    class WireDrawdownRequestListParams < Increase::BaseModel
      # @!attribute [r] cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #   Filter Wire Drawdown Requests for those with the specified status.
      #
      #   @return [Symbol, Increase::Models::WireDrawdownRequestListParams::Status, nil]
      optional :status, enum: -> { Increase::Models::WireDrawdownRequestListParams::Status }

      # @!parse
      #   # @return [Symbol, Increase::Models::WireDrawdownRequestListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param cursor [String]
      #   # @param idempotency_key [String]
      #   # @param limit [Integer]
      #   # @param status [String]
      #   #
      #   def initialize(cursor: nil, idempotency_key: nil, limit: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # Filter Wire Drawdown Requests for those with the specified status.
      #
      # @example
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
