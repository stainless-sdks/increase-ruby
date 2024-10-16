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
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] deleted_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth Connection was deleted.
      #   @return [Time]
      required :deleted_at, Time

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

      # Create a new instance of OAuthConnection from a Hash of raw data.
      #
      # @overload initialize(id: nil, created_at: nil, deleted_at: nil, group_id: nil, status: nil, type: nil)
      # @param id [String] The OAuth Connection's identifier.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      #   Connection was created.
      # @param deleted_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      #   Connection was deleted.
      # @param group_id [String] The identifier of the Group that has authorized your OAuth application.
      # @param status [String] Whether the connection is active.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `oauth_connection`.
      def initialize(data = {})
        super
      end
    end
  end
end
