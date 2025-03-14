# typed: strong

module Increase
  module Models
    class FileListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::FileListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::FileListParams::CreatedAt).returns(Increase::Models::FileListParams::CreatedAt)
      end
      def created_at=(_)
      end

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      # Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(Increase::Models::FileListParams::Purpose)) }
      def purpose
      end

      sig { params(_: Increase::Models::FileListParams::Purpose).returns(Increase::Models::FileListParams::Purpose) }
      def purpose=(_)
      end

      sig do
        params(
          created_at: Increase::Models::FileListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          purpose: Increase::Models::FileListParams::Purpose,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, purpose: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              created_at: Increase::Models::FileListParams::CreatedAt,
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              purpose: Increase::Models::FileListParams::Purpose,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class CreatedAt < Increase::BaseModel
        # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        # Return results on or after this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        # Return results on or before this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end

      class Purpose < Increase::BaseModel
        # Filter Files for those with the specified purpose or purposes. For GET requests,
        #   this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Symbol])) }
        def in_
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def in_=(_)
        end

        sig { params(in_: T::Array[Symbol]).returns(T.attached_class) }
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Symbol]}) }
        def to_hash
        end

        class In < Increase::Enum
          abstract!

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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
