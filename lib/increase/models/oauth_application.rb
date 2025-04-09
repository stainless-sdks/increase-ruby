# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::OAuthApplications#retrieve
    class OAuthApplication < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/oauth_application/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute client_id
      #   #/components/schemas/oauth_application/properties/client_id
      #
      #   @return [String]
      required :client_id, String

      # @!attribute created_at
      #   #/components/schemas/oauth_application/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute deleted_at
      #   #/components/schemas/oauth_application/properties/deleted_at
      #
      #   @return [Time, nil]
      required :deleted_at, Time, nil?: true

      # @!attribute name
      #   #/components/schemas/oauth_application/properties/name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute status
      #   #/components/schemas/oauth_application/properties/status
      #
      #   @return [Symbol, Increase::Models::OAuthApplication::Status]
      required :status, enum: -> { Increase::Models::OAuthApplication::Status }

      # @!attribute type
      #   #/components/schemas/oauth_application/properties/type
      #
      #   @return [Symbol, Increase::Models::OAuthApplication::Type]
      required :type, enum: -> { Increase::Models::OAuthApplication::Type }

      # @!parse
      #   # #/components/schemas/oauth_application
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/oauth_application/properties/status
      #
      # @see Increase::Models::OAuthApplication#status
      module Status
        extend Increase::Internal::Type::Enum

        # The application is active and can be used by your users.
        ACTIVE = :active

        # The application is deleted.
        DELETED = :deleted

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/oauth_application/properties/type
      #
      # @see Increase::Models::OAuthApplication#type
      module Type
        extend Increase::Internal::Type::Enum

        OAUTH_APPLICATION = :oauth_application

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
