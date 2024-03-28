# frozen_string_literal: true

module Increase
  module Models
    class CardDispute
      class Acceptance
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] accepted_at
        required :accepted_at, String

        # @!attribute [rw] card_dispute_id
        required :card_dispute_id, String

        # @!attribute [rw] transaction_id
        required :transaction_id, String
      end

      class Rejection
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] card_dispute_id
        required :card_dispute_id, String

        # @!attribute [rw] explanation
        required :explanation, String

        # @!attribute [rw] rejected_at
        required :rejected_at, String
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] acceptance
      required :acceptance, -> { Increase::Models::CardDispute::Acceptance }

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] disputed_transaction_id
      required :disputed_transaction_id, String

      # @!attribute [rw] explanation
      required :explanation, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] rejection
      required :rejection, -> { Increase::Models::CardDispute::Rejection }

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending_reviewing, :accepted, :rejected])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:card_dispute])
    end
  end
end
