# frozen_string_literal: true

module Increase
  module Models
    class InboundCheckDepositReturnParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute reason
      #   The reason to return the Inbound Check Deposit.
      #
      #   @return [Symbol, Increase::Models::InboundCheckDepositReturnParams::Reason]
      required :reason, enum: -> { Increase::Models::InboundCheckDepositReturnParams::Reason }

      # @!parse
      #   # @param reason [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(reason:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The reason to return the Inbound Check Deposit.
      #
      # @example
      # ```ruby
      # case reason
      # in :altered_or_fictitious
      #   # ...
      # in :not_authorized
      #   # ...
      # in :duplicate_presentment
      #   # ...
      # in :endorsement_missing
      #   # ...
      # in :endorsement_irregular
      #   # ...
      # end
      # ```
      class Reason < Increase::Enum
        # The check was altered or fictitious.
        ALTERED_OR_FICTITIOUS = :altered_or_fictitious

        # The check was not authorized.
        NOT_AUTHORIZED = :not_authorized

        # The check was a duplicate presentment.
        DUPLICATE_PRESENTMENT = :duplicate_presentment

        # The check was not endorsed.
        ENDORSEMENT_MISSING = :endorsement_missing

        # The check was not endorsed by the payee.
        ENDORSEMENT_IRREGULAR = :endorsement_irregular

        finalize!
      end
    end
  end
end
