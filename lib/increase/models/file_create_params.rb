# frozen_string_literal: true

module Increase
  module Models
    class FileCreateParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute file
      #   The file contents. This should follow the specifications of
      #     [RFC 7578](https://datatracker.ietf.org/doc/html/rfc7578) which defines file
      #     transfers for the multipart/form-data protocol.
      #
      #   @return [IO, StringIO]
      required :file, IO

      # @!attribute purpose
      #   What the File will be used for in Increase's systems.
      #
      #   @return [Symbol, Increase::Models::FileCreateParams::Purpose]
      required :purpose, enum: -> { Increase::Models::FileCreateParams::Purpose }

      # @!attribute [r] description
      #   The description you choose to give the File.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!parse
      #   # @param file [IO, StringIO]
      #   # @param purpose [Symbol, Increase::Models::FileCreateParams::Purpose]
      #   # @param description [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(file:, purpose:, description: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # What the File will be used for in Increase's systems.
      #
      # @example
      # ```ruby
      # case purpose
      # in :check_image_front
      #   # ...
      # in :check_image_back
      #   # ...
      # in :mailed_check_image
      #   # ...
      # in :check_voucher_image
      #   # ...
      # in :check_attachment_image
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Purpose < Increase::Enum
        # An image of the front of a check, used for check deposits.
        CHECK_IMAGE_FRONT = :check_image_front

        # An image of the back of a check, used for check deposits.
        CHECK_IMAGE_BACK = :check_image_back

        # An image of a check that was mailed to a recipient.
        MAILED_CHECK_IMAGE = :mailed_check_image

        # An image to be printed on the bottom or voucher of a check that you've requested Increase print.
        CHECK_VOUCHER_IMAGE = :check_voucher_image

        # An image to be printed on an additional page and mailed with a check that you've requested Increase print.
        CHECK_ATTACHMENT_IMAGE = :check_attachment_image

        # IRS Form SS-4.
        FORM_SS_4 = :form_ss_4

        # An image of a government-issued ID.
        IDENTITY_DOCUMENT = :identity_document

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

        # An image representing the entirety of the carrier used for a physical card. This must be a 2550x3300 pixel PNG with no other color but black.
        PHYSICAL_CARD_CARRIER = :physical_card_carrier

        # A document requested by Increase.
        DOCUMENT_REQUEST = :document_request

        # A supplemental document associated an an Entity.
        ENTITY_SUPPLEMENTAL_DOCUMENT = :entity_supplemental_document

        # An attachment to an Unusual Activity Report.
        UNUSUAL_ACTIVITY_REPORT_ATTACHMENT = :unusual_activity_report_attachment

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
