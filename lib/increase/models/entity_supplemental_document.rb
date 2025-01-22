# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # entity_supplemental_document => {
    #   created_at: Time,
    #   entity_id: String,
    #   file_id: String,
    #   idempotency_key: String,
    #   type: Increase::Models::EntitySupplementalDocument::Type
    # }
    # ```
    class EntitySupplementalDocument < Increase::BaseModel
      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the
      #     Supplemental Document was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute entity_id
      #   The Entity the supplemental document is attached to.
      #
      #   @return [String]
      required :entity_id, String

      # @!attribute file_id
      #   The File containing the document.
      #
      #   @return [String]
      required :file_id, String

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `entity_supplemental_document`.
      #
      #   @return [Symbol, Increase::Models::EntitySupplementalDocument::Type]
      required :type, enum: -> { Increase::Models::EntitySupplementalDocument::Type }

      # @!parse
      #   # Supplemental Documents are uploaded files connected to an Entity during
      #   #   onboarding.
      #   #
      #   # @param created_at [String]
      #   # @param entity_id [String]
      #   # @param file_id [String]
      #   # @param idempotency_key [String, nil]
      #   # @param type [String]
      #   #
      #   def initialize(created_at:, entity_id:, file_id:, idempotency_key:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # A constant representing the object's type. For this resource it will always be
      #   `entity_supplemental_document`.
      #
      # @example
      # ```ruby
      # case type
      # in :entity_supplemental_document
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        ENTITY_SUPPLEMENTAL_DOCUMENT = :entity_supplemental_document

        finalize!
      end
    end
  end
end
