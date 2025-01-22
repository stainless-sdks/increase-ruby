# frozen_string_literal: true

module Increase
  module Models
    class FileListParams < Increase::BaseModel
      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::FileListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::FileListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::FileListParams::CreatedAt]
      #   attr_writer :created_at

      # @!attribute [r] cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] purpose
      #
      #   @return [Increase::Models::FileListParams::Purpose, nil]
      optional :purpose, -> { Increase::Models::FileListParams::Purpose }

      # @!parse
      #   # @return [Increase::Models::FileListParams::Purpose]
      #   attr_writer :purpose

      # @!parse
      #   # @param created_at [Increase::Models::FileListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param idempotency_key [String]
      #   # @param limit [Integer]
      #   # @param purpose [Increase::Models::FileListParams::Purpose]
      #   #
      #   def initialize(created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, purpose: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # created_at => {
      #   after: Time,
      #   before: Time,
      #   on_or_after: Time,
      #   on_or_before: Time
      # }
      # ```
      class CreatedAt < Increase::BaseModel
        # @!attribute [r] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #     timestamp.
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #     timestamp.
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   Return results on or after this
        #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   Return results on or before this
        #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_before

        # @!parse
        #   # @param after [String]
        #   # @param before [String]
        #   # @param on_or_after [String]
        #   # @param on_or_before [String]
        #   #
        #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      # ```ruby
      # purpose => {
      #   in_: -> { Increase::ArrayOf[enum: Increase::Models::FileListParams::Purpose::In] === _1 }
      # }
      # ```
      class Purpose < Increase::BaseModel
        # @!attribute [r] in_
        #   Filter Files for those with the specified purpose or purposes. For GET requests,
        #     this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::FileListParams::Purpose::In>]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::FileListParams::Purpose::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::FileListParams::Purpose::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<String>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # case in
        # in :check_image_front
        #   # ...
        # in :check_image_back
        #   # ...
        # in :processed_check_image_front
        #   # ...
        # in :processed_check_image_back
        #   # ...
        # in :mailed_check_image
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          # An image to be printed on the bottom or voucher of a check that you've requested Increase print.
          CHECK_VOUCHER_IMAGE = :check_voucher_image

          # An image to be printed on an additional page and mailed with a check that you've requested Increase print.
          CHECK_ATTACHMENT_IMAGE = :check_attachment_image

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

          finalize!
        end
      end
    end
  end
end
