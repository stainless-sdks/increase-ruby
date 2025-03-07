# typed: strong

module Increase
  module Models
    class FileCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.any(IO, StringIO)) }
      def file
      end

      sig { params(_: T.any(IO, StringIO)).returns(T.any(IO, StringIO)) }
      def file=(_)
      end

      sig { returns(Symbol) }
      def purpose
      end

      sig { params(_: Symbol).returns(Symbol) }
      def purpose=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig do
        params(
          file: T.any(IO, StringIO),
          purpose: Symbol,
          description: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(file:, purpose:, description: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              file: T.any(IO, StringIO),
              purpose: Symbol,
              description: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Purpose < Increase::Enum
        abstract!

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
