# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::IntrafiExclusions#create
    class IntrafiExclusion < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/intrafi_exclusion/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute bank_name
      #   #/components/schemas/intrafi_exclusion/properties/bank_name
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute created_at
      #   #/components/schemas/intrafi_exclusion/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute entity_id
      #   #/components/schemas/intrafi_exclusion/properties/entity_id
      #
      #   @return [String]
      required :entity_id, String

      # @!attribute excluded_at
      #   #/components/schemas/intrafi_exclusion/properties/excluded_at
      #
      #   @return [Time, nil]
      required :excluded_at, Time, nil?: true

      # @!attribute fdic_certificate_number
      #   #/components/schemas/intrafi_exclusion/properties/fdic_certificate_number
      #
      #   @return [String, nil]
      required :fdic_certificate_number, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/intrafi_exclusion/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute status
      #   #/components/schemas/intrafi_exclusion/properties/status
      #
      #   @return [Symbol, Increase::Models::IntrafiExclusion::Status]
      required :status, enum: -> { Increase::Models::IntrafiExclusion::Status }

      # @!attribute submitted_at
      #   #/components/schemas/intrafi_exclusion/properties/submitted_at
      #
      #   @return [Time, nil]
      required :submitted_at, Time, nil?: true

      # @!attribute type
      #   #/components/schemas/intrafi_exclusion/properties/type
      #
      #   @return [Symbol, Increase::Models::IntrafiExclusion::Type]
      required :type, enum: -> { Increase::Models::IntrafiExclusion::Type }

      # @!parse
      #   # #/components/schemas/intrafi_exclusion
      #   #
      #   # @param id [String]
      #   # @param bank_name [String]
      #   # @param created_at [Time]
      #   # @param entity_id [String]
      #   # @param excluded_at [Time, nil]
      #   # @param fdic_certificate_number [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param status [Symbol, Increase::Models::IntrafiExclusion::Status]
      #   # @param submitted_at [Time, nil]
      #   # @param type [Symbol, Increase::Models::IntrafiExclusion::Type]
      #   #
      #   def initialize(
      #     id:,
      #     bank_name:,
      #     created_at:,
      #     entity_id:,
      #     excluded_at:,
      #     fdic_certificate_number:,
      #     idempotency_key:,
      #     status:,
      #     submitted_at:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/intrafi_exclusion/properties/status
      #
      # @see Increase::Models::IntrafiExclusion#status
      module Status
        extend Increase::Internal::Type::Enum

        # The exclusion is being added to the IntraFi network.
        PENDING = :pending

        # The exclusion has been added to the IntraFi network.
        COMPLETED = :completed

        # The exclusion has been removed from the IntraFi network.
        ARCHIVED = :archived

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/intrafi_exclusion/properties/type
      #
      # @see Increase::Models::IntrafiExclusion#type
      module Type
        extend Increase::Internal::Type::Enum

        INTRAFI_EXCLUSION = :intrafi_exclusion

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
