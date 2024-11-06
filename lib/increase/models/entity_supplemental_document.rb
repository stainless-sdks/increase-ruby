# frozen_string_literal: true

module Increase
  module Models
    class EntitySupplementalDocument < Increase::BaseModel
      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Supplemental Document was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] entity_id
      #   The Entity the supplemental document is attached to.
      #   @return [String]
      required :entity_id, String

      # @!attribute [rw] file_id
      #   The File containing the document.
      #   @return [String]
      required :file_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `entity_supplemental_document`.
      #   @return [Symbol, Increase::Models::EntitySupplementalDocument::Type]
      required :type, enum: -> { Increase::Models::EntitySupplementalDocument::Type }

      # A constant representing the object's type. For this resource it will always be `entity_supplemental_document`.
      class Type < Increase::Enum
        ENTITY_SUPPLEMENTAL_DOCUMENT = :entity_supplemental_document
      end

      # @!parse
      #   # Create a new instance of EntitySupplementalDocument from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the
      #   #     Supplemental Document was created.
      #   #   @option data [String] :entity_id The Entity the supplemental document is attached to.
      #   #   @option data [String] :file_id The File containing the document.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `entity_supplemental_document`.
      #   def initialize(data = {}) = super
    end
  end
end
