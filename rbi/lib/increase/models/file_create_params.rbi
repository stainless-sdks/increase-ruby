# typed: strong

module Increase
  module Models
    class FileCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The file contents. This should follow the specifications of
      #   [RFC 7578](https://datatracker.ietf.org/doc/html/rfc7578) which defines file
      #   transfers for the multipart/form-data protocol.
      sig { returns(T.any(IO, StringIO)) }
      def file
      end

      sig { params(_: T.any(IO, StringIO)).returns(T.any(IO, StringIO)) }
      def file=(_)
      end

      # What the File will be used for in Increase's systems.
      sig { returns(Increase::Models::FileCreateParams::Purpose::OrSymbol) }
      def purpose
      end

      sig do
        params(_: Increase::Models::FileCreateParams::Purpose::OrSymbol)
          .returns(Increase::Models::FileCreateParams::Purpose::OrSymbol)
      end
      def purpose=(_)
      end

      # The description you choose to give the File.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig do
        params(
          file: T.any(IO, StringIO),
          purpose: Increase::Models::FileCreateParams::Purpose::OrSymbol,
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
              purpose: Increase::Models::FileCreateParams::Purpose::OrSymbol,
              description: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # What the File will be used for in Increase's systems.
      module Purpose
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::FileCreateParams::Purpose) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::FileCreateParams::Purpose::TaggedSymbol) }

        # An image of the front of a check, used for check deposits.
        CHECK_IMAGE_FRONT = T.let(:check_image_front, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # An image of the back of a check, used for check deposits.
        CHECK_IMAGE_BACK = T.let(:check_image_back, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # An image of a check that was mailed to a recipient.
        MAILED_CHECK_IMAGE = T.let(:mailed_check_image, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # An image to be printed on the bottom or voucher of a check that you've requested Increase print.
        CHECK_VOUCHER_IMAGE = T.let(:check_voucher_image, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # An image to be printed on an additional page and mailed with a check that you've requested Increase print.
        CHECK_ATTACHMENT_IMAGE =
          T.let(:check_attachment_image, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # IRS Form SS-4.
        FORM_SS_4 = T.let(:form_ss_4, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # An image of a government-issued ID.
        IDENTITY_DOCUMENT = T.let(:identity_document, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # A file purpose not covered by any of the other cases.
        OTHER = T.let(:other, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # A legal document forming a trust.
        TRUST_FORMATION_DOCUMENT =
          T.let(:trust_formation_document, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # A card image to be rendered inside digital wallet apps. This must be a 1536x969 pixel PNG.
        DIGITAL_WALLET_ARTWORK =
          T.let(:digital_wallet_artwork, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # An icon for you app to be rendered inside digital wallet apps. This must be a 100x100 pixel PNG.
        DIGITAL_WALLET_APP_ICON =
          T.let(:digital_wallet_app_icon, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # A card image to be printed on the front of a physical card. This must be a 2100x1340 pixel PNG with no other color but black.
        PHYSICAL_CARD_FRONT = T.let(:physical_card_front, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # An image representing the entirety of the carrier used for a physical card. This must be a 2550x3300 pixel PNG with no other color but black.
        PHYSICAL_CARD_CARRIER =
          T.let(:physical_card_carrier, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # A document requested by Increase.
        DOCUMENT_REQUEST = T.let(:document_request, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # A supplemental document associated an an Entity.
        ENTITY_SUPPLEMENTAL_DOCUMENT =
          T.let(:entity_supplemental_document, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # An attachment to an Unusual Activity Report.
        UNUSUAL_ACTIVITY_REPORT_ATTACHMENT =
          T.let(:unusual_activity_report_attachment, Increase::Models::FileCreateParams::Purpose::OrSymbol)

        # A file containing additional evidence for a Proof of Authorization Request Submission.
        PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION =
          T.let(:proof_of_authorization_request_submission, Increase::Models::FileCreateParams::Purpose::OrSymbol)
      end
    end
  end
end
