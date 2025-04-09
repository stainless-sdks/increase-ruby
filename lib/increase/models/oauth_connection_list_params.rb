# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::OAuthConnections#list
    class OAuthConnectionListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] cursor
      #   #/paths//oauth_connections/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] limit
      #   #/paths//oauth_connections/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] oauth_application_id
      #   #/paths//oauth_connections/get/parameters/3/schema
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Status < Increase::Internal::Type::BaseModel
        # @!attribute [r] in_
        #   #/paths//oauth_connections/get/parameters/2/schema
        #
        #   @return [Array<Symbol, Increase::Models::OAuthConnectionListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::OAuthConnectionListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::OAuthConnectionListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::OAuthConnectionListParams::Status::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/paths//oauth_connections/get/parameters/2/schema/items
        module In
          extend Increase::Internal::Type::Enum

          # The OAuth connection is active.
          ACTIVE = :active

          # The OAuth connection is permanently deactivated.
          INACTIVE = :inactive

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
