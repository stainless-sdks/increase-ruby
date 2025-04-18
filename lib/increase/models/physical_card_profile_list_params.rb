# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PhysicalCardProfiles#list
    class PhysicalCardProfileListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

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
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #
      #   @return [Increase::Models::PhysicalCardProfileListParams::Status, nil]
      optional :status, -> { Increase::Models::PhysicalCardProfileListParams::Status }

      # @!parse
      #   # @return [Increase::Models::PhysicalCardProfileListParams::Status]
      #   attr_writer :status

      # @!method initialize(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #   @param cursor [String]
      #   @param idempotency_key [String]
      #   @param limit [Integer]
      #   @param status [Increase::Models::PhysicalCardProfileListParams::Status]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      class Status < Increase::Internal::Type::BaseModel
        # @!attribute [r] in_
        #   Filter Physical Card Profiles for those with the specified statuses. For GET
        #   requests, this should be encoded as a comma-delimited string, such as
        #   `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::PhysicalCardProfileListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::PhysicalCardProfileListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::PhysicalCardProfileListParams::Status::In>]
        #   attr_writer :in_

        # @!method initialize(in_: nil)
        #   @param in_ [Array<Symbol, Increase::Models::PhysicalCardProfileListParams::Status::In>]

        module In
          extend Increase::Internal::Type::Enum

          # The Card Profile has not yet been processed by Increase.
          PENDING_CREATING = :pending_creating

          # The card profile is awaiting review by Increase.
          PENDING_REVIEWING = :pending_reviewing

          # There is an issue with the Physical Card Profile preventing it from use.
          REJECTED = :rejected

          # The card profile is awaiting submission to the fulfillment provider.
          PENDING_SUBMITTING = :pending_submitting

          # The Physical Card Profile has been submitted to the fulfillment provider and is ready to use.
          ACTIVE = :active

          # The Physical Card Profile has been archived.
          ARCHIVED = :archived

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
