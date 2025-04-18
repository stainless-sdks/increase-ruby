# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::SupplementalDocuments#list
    class SupplementalDocumentListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute entity_id
      #   The identifier of the Entity to list supplemental documents for.
      #
      #   @return [String]
      required :entity_id, String

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(entity_id:, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      #   @param entity_id [String]
      #   @param cursor [String]
      #   @param idempotency_key [String]
      #   @param limit [Integer]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
