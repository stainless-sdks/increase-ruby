# frozen_string_literal: true

module Increase
  module Resources
    class Files
      def initialize(client:)
        @client = client
      end

      # To upload a file to Increase, you'll need to send a request of Content-Type
      #   `multipart/form-data`. The request should contain the file you would like to
      #   upload, as well as the parameters for creating a file.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :file The file contents. This should follow the specifications of
      #   [RFC 7578](https://datatracker.ietf.org/doc/html/rfc7578) which defines file
      #   transfers for the multipart/form-data protocol.
      # @option params [Symbol, Purpose] :purpose What the File will be used for in Increase's systems.
      # @option params [String, nil] :description The description you choose to give the File.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::File]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/files"
        req[:body] = params
        req[:model] = Increase::Models::File
        @client.request(req, opts)
      end

      # Retrieve a File
      #
      # @param file_id [String] The identifier of the File.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::File]
      def retrieve(file_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/files/#{file_id}"
        req[:model] = Increase::Models::File
        @client.request(req, opts)
      end

      # List Files
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Purpose, nil] :purpose
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::File>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/files"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::File
        @client.request(req, opts)
      end

      # What the File will be used for in Increase's systems.
      class Purpose < Increase::Enum
        # An image of the front of a check, used for check deposits.
        CHECK_IMAGE_FRONT = :check_image_front

        # An image of the back of a check, used for check deposits.
        CHECK_IMAGE_BACK = :check_image_back

        # An image of a check that was mailed to a recipient.
        MAILED_CHECK_IMAGE = :mailed_check_image

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
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end

      class Purpose < BaseModel
        # @!attribute [rw] in_
        #   Filter Files for those with the specified purpose or purposes. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Purpose::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Purpose::In })

        class In < Increase::Enum
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

          # A scanned mail item sent to Increase.
          INBOUND_MAIL_ITEM = :inbound_mail_item

          # IRS Form 1099-INT.
          FORM_1099_INT = :form_1099_int

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
        end
      end
    end
  end
end
