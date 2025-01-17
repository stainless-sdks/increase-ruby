# frozen_string_literal: true

module Increase
  module Models
    class CheckTransferStopPaymentParams < Increase::BaseModel
      # @!attribute reason
      #   The reason why this transfer should be stopped.
      #
      #   @return [Symbol, Increase::Models::CheckTransferStopPaymentParams::Reason]
      optional :reason, enum: -> { Increase::Models::CheckTransferStopPaymentParams::Reason }

      # @!parse
      #   # @param reason [String] The reason why this transfer should be stopped.
      #   #
      #   def initialize(reason: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The reason why this transfer should be stopped.
      #
      # @example
      # ```ruby
      # case reason
      # in :mail_delivery_failed
      #   # ...
      # in :not_authorized
      #   # ...
      # in :unknown
      #   # ...
      # end
      # ```
      class Reason < Increase::Enum
        # The check could not be delivered.
        MAIL_DELIVERY_FAILED = :mail_delivery_failed

        # The check was not authorized.
        NOT_AUTHORIZED = :not_authorized

        # The check was stopped for another reason.
        UNKNOWN = :unknown

        finalize!
      end
    end
  end
end
