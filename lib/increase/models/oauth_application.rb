# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # oauth_application => {
    #   id: String,
    #   client_id: String,
    #   created_at: Time,
    #   deleted_at: Time,
    #   name: String,
    #   **_
    # }
    # ```
    class OAuthApplication < Increase::BaseModel
      # @!attribute id
      #   The OAuth Application's identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute client_id
      #   The OAuth Application's client_id. Use this to authenticate with the OAuth
      #     Application.
      #
      #   @return [String]
      required :client_id, String

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      #     Application was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute deleted_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      #     Application was deleted.
      #
      #   @return [Time, nil]
      required :deleted_at, Time, nil?: true

      # @!attribute name
      #   The name you chose for this OAuth Application.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute status
      #   Whether the application is active.
      #
      #   @return [Symbol, Increase::Models::OAuthApplication::Status]
      required :status, enum: -> { Increase::Models::OAuthApplication::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `oauth_application`.
      #
      #   @return [Symbol, Increase::Models::OAuthApplication::Type]
      required :type, enum: -> { Increase::Models::OAuthApplication::Type }

      # @!parse
      #   # An OAuth Application lets you build an application for others to use with their
      #   #   Increase data. You can create an OAuth Application via the Dashboard and read
      #   #   information about it with the API. Learn more about OAuth
      #   #   [here](https://increase.com/documentation/oauth).
      #   #
      #   # @param id [String]
      #   # @param client_id [String]
      #   # @param created_at [Time]
      #   # @param deleted_at [Time, nil]
      #   # @param name [String, nil]
      #   # @param status [Symbol, Increase::Models::OAuthApplication::Status]
      #   # @param type [Symbol, Increase::Models::OAuthApplication::Type]
      #   #
      #   def initialize(id:, client_id:, created_at:, deleted_at:, name:, status:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # Whether the application is active.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :deleted
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The application is active and can be used by your users.
        ACTIVE = :active

        # The application is deleted.
        DELETED = :deleted

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `oauth_application`.
      #
      # @example
      # ```ruby
      # case type
      # in :oauth_application
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        OAUTH_APPLICATION = :oauth_application

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
