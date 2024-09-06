# frozen_string_literal: true

module Increase
  module Models
    class OAuthToken < BaseModel
      # @!attribute [rw] access_token
      #   You may use this token in place of an API key to make OAuth requests on a user's behalf.
      #   @return [String]
      required :access_token, String

      # @!attribute [rw] token_type
      #   The type of OAuth token.
      #   @return [Symbol]
      required :token_type, Increase::Enum.new(:bearer)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `oauth_token`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:oauth_token)
    end
  end
end
