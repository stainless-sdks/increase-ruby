# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#list
    class EntityListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute created_at
      #
      #   @return [Increase::Models::EntityListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::EntityListParams::CreatedAt }

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

      # @!attribute status
      #
      #   @return [Increase::Models::EntityListParams::Status, nil]
      optional :status, -> { Increase::Models::EntityListParams::Status }

      # @!method initialize(created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #   @param created_at [Increase::Models::EntityListParams::CreatedAt]
      #   @param cursor [String]
      #   @param idempotency_key [String]
      #   @param limit [Integer]
      #   @param status [Increase::Models::EntityListParams::Status]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      class CreatedAt < Increase::Internal::Type::BaseModel
        # @!attribute after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!attribute before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!attribute on_or_after
        #   Return results on or after this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!attribute on_or_before
        #   Return results on or before this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_before, Time

        # @!method initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        #   @param after [Time]
        #   @param before [Time]
        #   @param on_or_after [Time]
        #   @param on_or_before [Time]
      end

      class Status < Increase::Internal::Type::BaseModel
        # @!attribute in_
        #   Filter Entities for those with the specified status or statuses. For GET
        #   requests, this should be encoded as a comma-delimited string, such as
        #   `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::EntityListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::EntityListParams::Status::In] },
                 api_name: :in

        # @!method initialize(in_: nil)
        #   @param in_ [Array<Symbol, Increase::Models::EntityListParams::Status::In>]

        module In
          extend Increase::Internal::Type::Enum

          # The entity is active.
          ACTIVE = :active

          # The entity is archived, and can no longer be used to create accounts.
          ARCHIVED = :archived

          # The entity is temporarily disabled and cannot be used for financial activity.
          DISABLED = :disabled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
