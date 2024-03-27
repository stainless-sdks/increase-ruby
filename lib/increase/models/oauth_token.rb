# frozen_string_literal: true

module Increase
  module Models
    class OAuthToken
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] access_token
      required :access_token, String

      # @!attribute [rw] token_type
      required :token_type, Increase::Enum.new([:bearer])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:oauth_token])
    end
  end
end
