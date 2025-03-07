# frozen_string_literal: true

module Increase
  module Models
    class File < Increase::BaseModel
      # @!attribute id
      #   The File's identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time the File was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   A description of the File.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute direction
      #   Whether the File was generated by Increase or by you and sent to Increase.
      #
      #   @return [Symbol, Increase::Models::File::Direction]
      required :direction, enum: -> { Increase::Models::File::Direction }

      # @!attribute download_url
      #   A URL from where the File can be downloaded at this point in time. The location
      #     of this URL may change over time.
      #
      #   @return [String, nil]
      required :download_url, String, nil?: true

      # @!attribute filename
      #   The filename that was provided upon upload or generated by Increase.
      #
      #   @return [String, nil]
      required :filename, String, nil?: true

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute mime_type
      #   The MIME type of the file.
      #
      #   @return [String]
      required :mime_type, String

      # @!attribute purpose
      #   What the File will be used for. We may add additional possible values for this
      #     enum over time; your application should be able to handle such additions
      #     gracefully.
      #
      #   @return [Symbol, Increase::Models::File::Purpose]
      required :purpose, enum: -> { Increase::Models::File::Purpose }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `file`.
      #
      #   @return [Symbol, Increase::Models::File::Type]
      required :type, enum: -> { Increase::Models::File::Type }

      # @!parse
      #   # Files are objects that represent a file hosted on Increase's servers. The file
      #   #   may have been uploaded by you (for example, when uploading a check image) or it
      #   #   may have been created by Increase (for example, an autogenerated statement PDF).
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param description [String, nil]
      #   # @param direction [Symbol, Increase::Models::File::Direction]
      #   # @param download_url [String, nil]
      #   # @param filename [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param mime_type [String]
      #   # @param purpose [Symbol, Increase::Models::File::Purpose]
      #   # @param type [Symbol, Increase::Models::File::Type]
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     description:,
      #     direction:,
      #     download_url:,
      #     filename:,
      #     idempotency_key:,
      #     mime_type:,
      #     purpose:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # Whether the File was generated by Increase or by you and sent to Increase.
      class Direction < Increase::Enum
        # This File was sent by you to Increase.
        TO_INCREASE = :to_increase

        # This File was generated by Increase.
        FROM_INCREASE = :from_increase

        finalize!
      end

      # @abstract
      #
      # What the File will be used for. We may add additional possible values for this
      #   enum over time; your application should be able to handle such additions
      #   gracefully.
      class Purpose < Increase::Enum
        # An image of the front of a check, used for check deposits.
        CHECK_IMAGE_FRONT = :check_image_front

        # An image of the back of a check, used for check deposits.
        CHECK_IMAGE_BACK = :check_image_back

        # An image of the front of a deposited check after processing by Increase and submission to the Federal Reserve.
        PROCESSED_CHECK_IMAGE_FRONT = :processed_check_image_front

        # An image of the back of a deposited check after processing by Increase and submission to the Federal Reserve.
        PROCESSED_CHECK_IMAGE_BACK = :processed_check_image_back

        # An image of a check that was mailed to a recipient.
        MAILED_CHECK_IMAGE = :mailed_check_image

        # An image to be printed on the bottom or voucher of a check that you've requested Increase print.
        CHECK_VOUCHER_IMAGE = :check_voucher_image

        # An image to be printed on an additional page and mailed with a check that you've requested Increase print.
        CHECK_ATTACHMENT_IMAGE = :check_attachment_image

        # A scanned mail item sent to Increase.
        INBOUND_MAIL_ITEM = :inbound_mail_item

        # IRS Form 1099-INT.
        FORM_1099_INT = :form_1099_int

        # IRS Form 1099-MISC.
        FORM_1099_MISC = :form_1099_misc

        # IRS Form SS-4.
        FORM_SS_4 = :form_ss_4

        # An image of a government-issued ID.
        IDENTITY_DOCUMENT = :identity_document

        # A statement generated by Increase.
        INCREASE_STATEMENT = :increase_statement

        # A file purpose not covered by any of the other cases.
        OTHER = :other

        # A legal document forming a trust.
        TRUST_FORMATION_DOCUMENT = :trust_formation_document

        # A card image to be rendered inside digital wallet apps. This must be a 1536x969 pixel PNG.
        DIGITAL_WALLET_ARTWORK = :digital_wallet_artwork

        # An icon for you app to be rendered inside digital wallet apps. This must be a 100x100 pixel PNG.
        DIGITAL_WALLET_APP_ICON = :digital_wallet_app_icon

        # A card image to be printed on the front of a physical card. This must be a 2100x1340 pixel PNG with no other color but black.
        PHYSICAL_CARD_FRONT = :physical_card_front

        # The image to be printed on the back of a physical card.
        PHYSICAL_CARD_BACK = :physical_card_back

        # An image representing the entirety of the carrier used for a physical card. This must be a 2550x3300 pixel PNG with no other color but black.
        PHYSICAL_CARD_CARRIER = :physical_card_carrier

        # A document requested by Increase.
        DOCUMENT_REQUEST = :document_request

        # A supplemental document associated an an Entity.
        ENTITY_SUPPLEMENTAL_DOCUMENT = :entity_supplemental_document

        # The results of an Export you requested via the dashboard or API.
        EXPORT = :export

        # An attachment to an Unusual Activity Report.
        UNUSUAL_ACTIVITY_REPORT_ATTACHMENT = :unusual_activity_report_attachment

        # A document granting another entity access to the funds into your account.
        DEPOSIT_ACCOUNT_CONTROL_AGREEMENT = :deposit_account_control_agreement

        finalize!
      end

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `file`.
      class Type < Increase::Enum
        FILE = :file

        finalize!
      end
    end
  end
end
