# typed: strong

module Increase
  module Models
    class DigitalCardProfile < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def app_icon_file_id
      end

      sig { params(_: String).returns(String) }
      def app_icon_file_id=(_)
      end

      sig { returns(String) }
      def background_image_file_id
      end

      sig { params(_: String).returns(String) }
      def background_image_file_id=(_)
      end

      sig { returns(String) }
      def card_description
      end

      sig { params(_: String).returns(String) }
      def card_description=(_)
      end

      sig { returns(T.nilable(String)) }
      def contact_email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def contact_email=(_)
      end

      sig { returns(T.nilable(String)) }
      def contact_phone
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def contact_phone=(_)
      end

      sig { returns(T.nilable(String)) }
      def contact_website
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def contact_website=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(String) }
      def issuer_name
      end

      sig { params(_: String).returns(String) }
      def issuer_name=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Increase::Models::DigitalCardProfile::TextColor) }
      def text_color
      end

      sig do
        params(_: Increase::Models::DigitalCardProfile::TextColor)
          .returns(Increase::Models::DigitalCardProfile::TextColor)
      end
      def text_color=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
            id: String,
            app_icon_file_id: String,
            background_image_file_id: String,
            card_description: String,
            contact_email: T.nilable(String),
            contact_phone: T.nilable(String),
            contact_website: T.nilable(String),
            created_at: Time,
            description: String,
            idempotency_key: T.nilable(String),
            issuer_name: String,
            status: Symbol,
            text_color: Increase::Models::DigitalCardProfile::TextColor,
            type: Symbol
          )
          .void
      end
      def initialize(
        id:,
        app_icon_file_id:,
        background_image_file_id:,
        card_description:,
        contact_email:,
        contact_phone:,
        contact_website:,
        created_at:,
        description:,
        idempotency_key:,
        issuer_name:,
        status:,
        text_color:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              app_icon_file_id: String,
              background_image_file_id: String,
              card_description: String,
              contact_email: T.nilable(String),
              contact_phone: T.nilable(String),
              contact_website: T.nilable(String),
              created_at: Time,
              description: String,
              idempotency_key: T.nilable(String),
              issuer_name: String,
              status: Symbol,
              text_color: Increase::Models::DigitalCardProfile::TextColor,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The Card Profile is awaiting review from Increase and/or processing by card networks.
        PENDING = :pending

        # There is an issue with the Card Profile preventing it from use.
        REJECTED = :rejected

        # The Card Profile can be assigned to Cards.
        ACTIVE = :active

        # The Card Profile is no longer in use.
        ARCHIVED = :archived

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class TextColor < Increase::BaseModel
        sig { returns(Integer) }
        def blue
        end

        sig { params(_: Integer).returns(Integer) }
        def blue=(_)
        end

        sig { returns(Integer) }
        def green
        end

        sig { params(_: Integer).returns(Integer) }
        def green=(_)
        end

        sig { returns(Integer) }
        def red
        end

        sig { params(_: Integer).returns(Integer) }
        def red=(_)
        end

        sig { params(blue: Integer, green: Integer, red: Integer).void }
        def initialize(blue:, green:, red:)
        end

        sig { override.returns({blue: Integer, green: Integer, red: Integer}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        DIGITAL_CARD_PROFILE = :digital_card_profile

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
