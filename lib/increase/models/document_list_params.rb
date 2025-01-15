# frozen_string_literal: true

module Increase
  module Models
    class DocumentListParams < Increase::BaseModel
      # @!attribute category
      #
      #   @return [Increase::Models::DocumentListParams::Category]
      optional :category, -> { Increase::Models::DocumentListParams::Category }

      # @!attribute created_at
      #
      #   @return [Increase::Models::DocumentListParams::CreatedAt]
      optional :created_at, -> { Increase::Models::DocumentListParams::CreatedAt }

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute entity_id
      #   Filter Documents to ones belonging to the specified Entity.
      #
      #   @return [String]
      optional :entity_id, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!parse
      #   # @param category [Increase::Models::DocumentListParams::Category]
      #   #
      #   # @param created_at [Increase::Models::DocumentListParams::CreatedAt]
      #   #
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param entity_id [String] Filter Documents to ones belonging to the specified Entity.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   def initialize(category: nil, created_at: nil, cursor: nil, entity_id: nil, limit: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # category => {
      #   in_: -> { Increase::ArrayOf[enum: Increase::Models::DocumentListParams::Category::In] === _1 }
      # }
      # ```
      class Category < Increase::BaseModel
        # @!attribute in_
        #   Filter Documents for those with the specified category or categories. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::DocumentListParams::Category::In>]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::DocumentListParams::Category::In] },
                 api_name: :in

        # @!parse
        #   # @param in_ [Array<String>] Filter Documents for those with the specified category or categories. For GET
        #   #   requests, this should be encoded as a comma-delimited string, such as
        #   #   `?in=one,two,three`.
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case in
        # in :form_1099_int
        #   # ...
        # in :proof_of_authorization
        #   # ...
        # in :company_information
        #   # ...
        # end
        # ```
        class In < Increase::Enum
          # Internal Revenue Service Form 1099-INT.
          FORM_1099_INT = :form_1099_int

          # A document submitted in response to a proof of authorization request for an ACH transfer.
          PROOF_OF_AUTHORIZATION = :proof_of_authorization

          # Company information, such a policies or procedures, typically submitted during our due diligence process.
          COMPANY_INFORMATION = :company_information

          finalize!
        end
      end

      # @example
      #
      # ```ruby
      # created_at => {
      #   after: Time,
      #   before: Time,
      #   on_or_after: Time,
      #   on_or_before: Time
      # }
      # ```
      class CreatedAt < Increase::BaseModel
        # @!attribute after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time]
        optional :after, Time

        # @!attribute before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time]
        optional :before, Time

        # @!attribute on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time]
        optional :on_or_after, Time

        # @!attribute on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time]
        optional :on_or_before, Time

        # @!parse
        #   # @param after [String] Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   #   timestamp.
        #   #
        #   # @param before [String] Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   #   timestamp.
        #   #
        #   # @param on_or_after [String] Return results on or after this
        #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   #
        #   # @param on_or_before [String] Return results on or before this
        #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   #
        #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
