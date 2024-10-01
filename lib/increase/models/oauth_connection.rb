# frozen_string_literal: true

module Increase
  module Models
    class OAuthConnection < BaseModel
      # @!attribute [rw] id
      #   The OAuth Connection's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth Connection was created.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] deleted_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth Connection was deleted.
      #   @return [DateTime]
      required :deleted_at, DateTime

      # @!attribute [rw] group_id
      #   The identifier of the Group that has authorized your OAuth application.
      #   @return [String]
      required :group_id, String

      # @!attribute [rw] status
      #   Whether the connection is active.
      #   @return [Symbol, Increase::Models::OAuthConnection::Status]
      required :status, enum: -> { Increase::Models::OAuthConnection::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `oauth_connection`.
      #   @return [Symbol, Increase::Models::OAuthConnection::Type]
      required :type, enum: -> { Increase::Models::OAuthConnection::Type }

      # Whether the connection is active.
      class Status < Increase::Enum
        # The OAuth connection is active.
        ACTIVE = :active

        # The OAuth connection is permanently deactivated.
        INACTIVE = :inactive
      end

      # A constant representing the object's type. For this resource it will always be `oauth_connection`.
      class Type < Increase::Enum
        OAUTH_CONNECTION = :oauth_connection
      end
    end
  end
end
