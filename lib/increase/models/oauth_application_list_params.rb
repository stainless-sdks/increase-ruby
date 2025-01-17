# frozen_string_literal: true

module Increase
  module Models
    class OAuthApplicationListParams < Increase::BaseModel
      # @!attribute created_at
      #
      #   @return [Increase::Models::OAuthApplicationListParams::CreatedAt]
      optional :created_at, -> { Increase::Models::OAuthApplicationListParams::CreatedAt }

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute status
      #
      #   @return [Increase::Models::OAuthApplicationListParams::Status]
      optional :status, -> { Increase::Models::OAuthApplicationListParams::Status }

      # @!parse
      #   # @param created_at [Increase::Models::OAuthApplicationListParams::CreatedAt]
      #   #
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param status [Increase::Models::OAuthApplicationListParams::Status]
      #   #
      #   def initialize(created_at: nil, cursor: nil, limit: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
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

      # @example
      # ```ruby
      # status => {
      #   in_: -> { Increase::ArrayOf[enum: Increase::Models::OAuthApplicationListParams::Status::In] === _1 }
      # }
      # ```
      class Status < Increase::BaseModel
        # @!attribute in_
        #   Return results whose value is in the provided list. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::OAuthApplicationListParams::Status::In>]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::OAuthApplicationListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @param in_ [Array<String>] Return results whose value is in the provided list. For GET requests, this
        #   #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # case in
        # in :active
        #   # ...
        # in :deleted
        #   # ...
        # end
        # ```
        class In < Increase::Enum
          # The application is active and can be used by your users.
          ACTIVE = :active

          # The application is deleted.
          DELETED = :deleted

          finalize!
        end
      end
    end
  end
end
