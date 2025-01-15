# frozen_string_literal: true

module Increase
  module Models
    class OAuthConnectionListParams < Increase::BaseModel
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

      # @!attribute oauth_application_id
      #   Filter results to only include OAuth Connections for a specific OAuth Application.
      #
      #   @return [String]
      optional :oauth_application_id, String

      # @!attribute status
      #
      #   @return [Increase::Models::OAuthConnectionListParams::Status]
      optional :status, -> { Increase::Models::OAuthConnectionListParams::Status }

      # @!parse
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param oauth_application_id [String] Filter results to only include OAuth Connections for a specific OAuth
      #   #   Application.
      #   #
      #   # @param status [Increase::Models::OAuthConnectionListParams::Status]
      #   #
      #   def initialize(cursor: nil, limit: nil, oauth_application_id: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # status => {
      #   in_: -> { Increase::ArrayOf[enum: Increase::Models::OAuthConnectionListParams::Status::In] === _1 }
      # }
      # ```
      class Status < Increase::BaseModel
        # @!attribute in_
        #   Filter to OAuth Connections by their status. By default, return only the `active` ones. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::OAuthConnectionListParams::Status::In>]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::OAuthConnectionListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @param in_ [Array<String>] Filter to OAuth Connections by their status. By default, return only the
        #   #   `active` ones. For GET requests, this should be encoded as a comma-delimited
        #   #   string, such as `?in=one,two,three`.
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case in
        # in :active
        #   # ...
        # in :inactive
        #   # ...
        # end
        # ```
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
