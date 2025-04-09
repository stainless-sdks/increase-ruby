# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::OAuthConnections#retrieve
    class OAuthConnection < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/oauth_connection/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   #/components/schemas/oauth_connection/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute deleted_at
      #   #/components/schemas/oauth_connection/properties/deleted_at
      #
      #   @return [Time, nil]
      required :deleted_at, Time, nil?: true

      # @!attribute group_id
      #   #/components/schemas/oauth_connection/properties/group_id
      #
      #   @return [String]
      required :group_id, String

      # @!attribute oauth_application_id
      #   #/components/schemas/oauth_connection/properties/oauth_application_id
      #
      #   @return [String]
      required :oauth_application_id, String

      # @!attribute status
      #   #/components/schemas/oauth_connection/properties/status
      #
      #   @return [Symbol, Increase::Models::OAuthConnection::Status]
      required :status, enum: -> { Increase::Models::OAuthConnection::Status }

      # @!attribute type
      #   #/components/schemas/oauth_connection/properties/type
      #
      #   @return [Symbol, Increase::Models::OAuthConnection::Type]
      required :type, enum: -> { Increase::Models::OAuthConnection::Type }

      # @!parse
      #   # #/components/schemas/oauth_connection
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param deleted_at [Time, nil]
      #   # @param group_id [String]
      #   # @param oauth_application_id [String]
      #   # @param status [Symbol, Increase::Models::OAuthConnection::Status]
      #   # @param type [Symbol, Increase::Models::OAuthConnection::Type]
      #   #
      #   def initialize(id:, created_at:, deleted_at:, group_id:, oauth_application_id:, status:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/oauth_connection/properties/status
      #
      # @see Increase::Models::OAuthConnection#status
      module Status
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

      # #/components/schemas/oauth_connection/properties/type
      #
      # @see Increase::Models::OAuthConnection#type
      module Type
        extend Increase::Internal::Type::Enum

        OAUTH_CONNECTION = :oauth_connection

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
