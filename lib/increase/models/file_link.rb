# frozen_string_literal: true

module Increase
  module Models
    class FileLink < Increase::BaseModel
      # @!attribute id
      #   The File Link identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the File
      #     Link was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute expires_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the File
      #     Link will expire.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute file_id
      #   The identifier of the File the File Link points to.
      #
      #   @return [String]
      required :file_id, String

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute public_download_url
      #   A URL where the File can be downloaded. The URL will expire after the
      #     `expires_at` time. This URL is unauthenticated and can be used to download the
      #     File without an Increase API key.
      #
      #   @return [String]
      required :public_download_url, String

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `file_link`.
      #
      #   @return [Symbol, Increase::Models::FileLink::Type]
      required :type, enum: -> { Increase::Models::FileLink::Type }

      # @!parse
      #   # Normally Files can only be downloaded via the API using your Increase API key.
      #   #   File Links let you generate signed URLs for Files that can be used to download
      #   #   the File without an Increase API key.
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param expires_at [Time]
      #   # @param file_id [String]
      #   # @param idempotency_key [String, nil]
      #   # @param public_download_url [String]
      #   # @param type [Symbol, Increase::Models::FileLink::Type]
      #   #
      #   def initialize(id:, created_at:, expires_at:, file_id:, idempotency_key:, public_download_url:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `file_link`.
      class Type < Increase::Enum
        FILE_LINK = :file_link

        finalize!
      end
    end
  end
end
