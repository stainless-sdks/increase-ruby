# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::FileLinks#create
    class FileLink < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/file_link/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   #/components/schemas/file_link/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute expires_at
      #   #/components/schemas/file_link/properties/expires_at
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute file_id
      #   #/components/schemas/file_link/properties/file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute idempotency_key
      #   #/components/schemas/file_link/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute type
      #   #/components/schemas/file_link/properties/type
      #
      #   @return [Symbol, Increase::Models::FileLink::Type]
      required :type, enum: -> { Increase::Models::FileLink::Type }

      # @!attribute unauthenticated_url
      #   #/components/schemas/file_link/properties/unauthenticated_url
      #
      #   @return [String]
      required :unauthenticated_url, String

      # @!parse
      #   # #/components/schemas/file_link
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param expires_at [Time]
      #   # @param file_id [String]
      #   # @param idempotency_key [String, nil]
      #   # @param type [Symbol, Increase::Models::FileLink::Type]
      #   # @param unauthenticated_url [String]
      #   #
      #   def initialize(id:, created_at:, expires_at:, file_id:, idempotency_key:, type:, unauthenticated_url:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/file_link/properties/type
      #
      # @see Increase::Models::FileLink#type
      module Type
        extend Increase::Internal::Type::Enum

        FILE_LINK = :file_link

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
