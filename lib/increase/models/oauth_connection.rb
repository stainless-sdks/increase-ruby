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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] deleted_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth Connection was deleted.
      #   @return [String]
      required :deleted_at, String

      # @!attribute [rw] group_id
      #   The identifier of the Group that has authorized your OAuth application.
      #   @return [String]
      required :group_id, String

      # @!attribute [rw] status
      #   Whether the connection is active.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:active, :inactive)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `oauth_connection`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:oauth_connection)
    end
  end
end
