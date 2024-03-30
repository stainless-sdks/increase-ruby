# frozen_string_literal: true

module Increase
  module Models
    class OAuthConnection < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] group_id
      required :group_id, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new(:active, :inactive)

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:oauth_connection)
    end
  end
end
