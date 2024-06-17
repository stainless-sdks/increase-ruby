# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefF6173181c6264e25e2594d45133af8ed < BaseModel
      # @!attribute [rw] api_key
      #   If present, details about the API key that created the transfer.
      #   @return [Increase::Models::UnnamedSchemaRefF6173181c6264e25e2594d45133af8ed::APIKey]
      required :api_key, -> { Increase::Models::UnnamedSchemaRefF6173181c6264e25e2594d45133af8ed::APIKey }

      # @!attribute [rw] category
      #   The type of object that created this transfer.
      #   @return [Symbol]
      required :category, Increase::Enum.new(:api_key, :oauth_application, :user)

      # @!attribute [rw] oauth_application
      #   If present, details about the OAuth Application that created the transfer.
      #   @return [Increase::Models::UnnamedSchemaRefF6173181c6264e25e2594d45133af8ed::OAuthApplication]
      required :oauth_application,
               -> { Increase::Models::UnnamedSchemaRefF6173181c6264e25e2594d45133af8ed::OAuthApplication }

      # @!attribute [rw] user
      #   If present, details about the User that created the transfer.
      #   @return [Increase::Models::UnnamedSchemaRefF6173181c6264e25e2594d45133af8ed::User]
      required :user, -> { Increase::Models::UnnamedSchemaRefF6173181c6264e25e2594d45133af8ed::User }

      class APIKey < BaseModel
        # @!attribute [rw] description
        #   The description set for the API key when it was created.
        #   @return [String]
        required :description, String
      end

      class OAuthApplication < BaseModel
        # @!attribute [rw] name_
        #   The name of the OAuth Application.
        #   @return [String]
        required :name_, String
      end

      class User < BaseModel
        # @!attribute [rw] email
        #   The email address of the User.
        #   @return [String]
        required :email, String
      end
    end
  end
end
