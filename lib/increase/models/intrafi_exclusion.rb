# frozen_string_literal: true

module Increase
  module Models
    # @example
    #
    # ```ruby
    # intrafi_exclusion => {
    #   id: String,
    #   bank_name: String,
    #   entity_id: String,
    #   excluded_at: Time,
    #   fdic_certificate_number: String,
    #   **_
    # }
    # ```
    class IntrafiExclusion < Increase::BaseModel
      # @!attribute id
      #   The identifier of this exclusion request.
      #
      #   @return [String]
      required :id, String

      # @!attribute bank_name
      #   The name of the excluded institution.
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute entity_id
      #   The entity for which this institution is excluded.
      #
      #   @return [String]
      required :entity_id, String

      # @!attribute excluded_at
      #   When this was exclusion was confirmed by IntraFi.
      #
      #   @return [Time, nil]
      required :excluded_at, Time

      # @!attribute fdic_certificate_number
      #   The Federal Deposit Insurance Corporation's certificate number for the institution.
      #
      #   @return [String, nil]
      required :fdic_certificate_number, String

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute status
      #   The status of the exclusion request.
      #
      #   @return [Symbol, Increase::Models::IntrafiExclusion::Status]
      required :status, enum: -> { Increase::Models::IntrafiExclusion::Status }

      # @!attribute submitted_at
      #   When this was exclusion was submitted to IntraFi by Increase.
      #
      #   @return [Time, nil]
      required :submitted_at, Time

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `intrafi_exclusion`.
      #
      #   @return [Symbol, Increase::Models::IntrafiExclusion::Type]
      required :type, enum: -> { Increase::Models::IntrafiExclusion::Type }

      # @!parse
      #   # Certain institutions may be excluded per Entity when sweeping funds into the
      #   #   IntraFi network. This is useful when an Entity already has deposits at a
      #   #   particular bank, and does not want to sweep additional funds to it. It may take
      #   #   5 business days for an exclusion to be processed.
      #   #
      #   # @param id [String] The identifier of this exclusion request.
      #   #
      #   # @param bank_name [String] The name of the excluded institution.
      #   #
      #   # @param entity_id [String] The entity for which this institution is excluded.
      #   #
      #   # @param excluded_at [String, nil] When this was exclusion was confirmed by IntraFi.
      #   #
      #   # @param fdic_certificate_number [String, nil] The Federal Deposit Insurance Corporation's certificate number for the
      #   #   institution.
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param status [String] The status of the exclusion request.
      #   #
      #   # @param submitted_at [String, nil] When this was exclusion was submitted to IntraFi by Increase.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `intrafi_exclusion`.
      #   #
      #   def initialize(
      #     id:,
      #     bank_name:,
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

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The status of the exclusion request.
      #
      # @example
      #
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :completed
      #   # ...
      # in :archived
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The exclusion is being added to the IntraFi network.
        PENDING = :pending

        # The exclusion has been added to the IntraFi network.
        COMPLETED = :completed

        # The exclusion has been removed from the IntraFi network.
        ARCHIVED = :archived

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be `intrafi_exclusion`.
      #
      # @example
      #
      # ```ruby
      # case type
      # in :intrafi_exclusion
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        INTRAFI_EXCLUSION = :intrafi_exclusion

        finalize!
      end
    end
  end
end
