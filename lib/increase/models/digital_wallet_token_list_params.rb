# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::DigitalWalletTokens#list
    class DigitalWalletTokenListParams < Increase::BaseModel
      # @!parse
      #   extend Increase::Type::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute [r] card_id
      #   Filter Digital Wallet Tokens to ones belonging to the specified Card.
      #
      #   @return [String, nil]
      optional :card_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :card_id

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::DigitalWalletTokenListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::DigitalWalletTokenListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::DigitalWalletTokenListParams::CreatedAt]
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

      # @!parse
      #   # @param card_id [String]
      #   # @param created_at [Increase::Models::DigitalWalletTokenListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(card_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

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
        #   # @param after [Time]
        #   # @param before [Time]
        #   # @param on_or_after [Time]
        #   # @param on_or_before [Time]
        #   #
        #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
