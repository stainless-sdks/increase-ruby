# frozen_string_literal: true

module Increase
  module Models
    class OAuthConnectionListParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

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

      # @!attribute [r] oauth_application_id
      #   Filter results to only include OAuth Connections for a specific OAuth
      #     Application.
      #
      #   @return [String, nil]
      optional :oauth_application_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :oauth_application_id

      # @!attribute [r] status
      #
      #   @return [Increase::Models::OAuthConnectionListParams::Status, nil]
      optional :status, -> { Increase::Models::OAuthConnectionListParams::Status }

      # @!parse
      #   # @return [Increase::Models::OAuthConnectionListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   # @param oauth_application_id [String]
      #   # @param status [Increase::Models::OAuthConnectionListParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(cursor: nil, limit: nil, oauth_application_id: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      class Status < Increase::BaseModel
        # @!attribute [r] in_
        #   Filter to OAuth Connections by their status. By default, return only the
        #     `active` ones. For GET requests, this should be encoded as a comma-delimited
        #     string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::OAuthConnectionListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::OAuthConnectionListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::OAuthConnectionListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::OAuthConnectionListParams::Status::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        class In < Increase::Enum
          # The OAuth connection is active.
          ACTIVE = :active

          # The OAuth connection is permanently deactivated.
          INACTIVE = :inactive

          finalize!
        end
      end
    end
  end
end
