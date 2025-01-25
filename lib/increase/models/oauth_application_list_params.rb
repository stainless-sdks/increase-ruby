# frozen_string_literal: true

module Increase
  module Models
    class OAuthApplicationListParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::OAuthApplicationListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::OAuthApplicationListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::OAuthApplicationListParams::CreatedAt]
      #   attr_writer :created_at

      # @!attribute [r] cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #
      #   @return [Increase::Models::OAuthApplicationListParams::Status, nil]
      optional :status, -> { Increase::Models::OAuthApplicationListParams::Status }

      # @!parse
      #   # @return [Increase::Models::OAuthApplicationListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param created_at [Increase::Models::OAuthApplicationListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   # @param status [Increase::Models::OAuthApplicationListParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(created_at: nil, cursor: nil, limit: nil, status: nil, request_options: {}, **) = super

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
        # @!attribute [r] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #     timestamp.
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #     timestamp.
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   Return results on or after this
        #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   Return results on or before this
        #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_before

        # @!parse
        #   # @param after [String]
        #   # @param before [String]
        #   # @param on_or_after [String]
        #   # @param on_or_before [String]
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
        # @!attribute [r] in_
        #   Return results whose value is in the provided list. For GET requests, this
        #     should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::OAuthApplicationListParams::Status::In>]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::OAuthApplicationListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::OAuthApplicationListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<String>]
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
