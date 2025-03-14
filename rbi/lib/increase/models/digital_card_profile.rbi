# typed: strong

module Increase
  module Models
    class DigitalCardProfile < Increase::BaseModel
      # The Card Profile identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier of the File containing the card's icon image.
      sig { returns(String) }
      def app_icon_file_id
      end

      sig { params(_: String).returns(String) }
      def app_icon_file_id=(_)
      end

      # The identifier of the File containing the card's front image.
      sig { returns(String) }
      def background_image_file_id
      end

      sig { params(_: String).returns(String) }
      def background_image_file_id=(_)
      end

      # A user-facing description for the card itself.
      sig { returns(String) }
      def card_description
      end

      sig { params(_: String).returns(String) }
      def card_description=(_)
      end

      # An email address the user can contact to receive support for their card.
      sig { returns(T.nilable(String)) }
      def contact_email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def contact_email=(_)
      end

      # A phone number the user can contact to receive support for their card.
      sig { returns(T.nilable(String)) }
      def contact_phone
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def contact_phone=(_)
      end

      # A website the user can visit to view and receive support for their card.
      sig { returns(T.nilable(String)) }
      def contact_website
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def contact_website=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Card Dispute was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # A description you can use to identify the Card Profile.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # A user-facing description for whoever is issuing the card.
      sig { returns(String) }
      def issuer_name
      end

      sig { params(_: String).returns(String) }
      def issuer_name=(_)
      end

      # The status of the Card Profile.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The Card's text color, specified as an RGB triple.
      sig { returns(Increase::Models::DigitalCardProfile::TextColor) }
      def text_color
      end

      sig do
        params(_: Increase::Models::DigitalCardProfile::TextColor)
          .returns(Increase::Models::DigitalCardProfile::TextColor)
      end
      def text_color=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `digital_card_profile`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # This contains artwork and metadata relating to a Card's appearance in digital
      #   wallet apps like Apple Pay and Google Pay. For more information, see our guide
      #   on [digital card artwork](https://increase.com/documentation/card-art).
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
          .returns(T.attached_class)
      end
      def self.new(
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

      # The status of the Card Profile.
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class TextColor < Increase::BaseModel
        # The value of the blue channel in the RGB color.
        sig { returns(Integer) }
        def blue
        end

        sig { params(_: Integer).returns(Integer) }
        def blue=(_)
        end

        # The value of the green channel in the RGB color.
        sig { returns(Integer) }
        def green
        end

        sig { params(_: Integer).returns(Integer) }
        def green=(_)
        end

        # The value of the red channel in the RGB color.
        sig { returns(Integer) }
        def red
        end

        sig { params(_: Integer).returns(Integer) }
        def red=(_)
        end

        # The Card's text color, specified as an RGB triple.
        sig { params(blue: Integer, green: Integer, red: Integer).returns(T.attached_class) }
        def self.new(blue:, green:, red:)
        end

        sig { override.returns({blue: Integer, green: Integer, red: Integer}) }
        def to_hash
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `digital_card_profile`.
      class Type < Increase::Enum
        abstract!

        DIGITAL_CARD_PROFILE = :digital_card_profile

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
