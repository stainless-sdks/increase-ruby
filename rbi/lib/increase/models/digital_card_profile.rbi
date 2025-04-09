# typed: strong

module Increase
  module Models
    class DigitalCardProfile < Increase::Internal::Type::BaseModel
      # #/components/schemas/digital_card_profile/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/digital_card_profile/properties/app_icon_file_id
      sig { returns(String) }
      attr_accessor :app_icon_file_id

      # #/components/schemas/digital_card_profile/properties/background_image_file_id
      sig { returns(String) }
      attr_accessor :background_image_file_id

      # #/components/schemas/digital_card_profile/properties/card_description
      sig { returns(String) }
      attr_accessor :card_description

      # #/components/schemas/digital_card_profile/properties/contact_email
      sig { returns(T.nilable(String)) }
      attr_accessor :contact_email

      # #/components/schemas/digital_card_profile/properties/contact_phone
      sig { returns(T.nilable(String)) }
      attr_accessor :contact_phone

      # #/components/schemas/digital_card_profile/properties/contact_website
      sig { returns(T.nilable(String)) }
      attr_accessor :contact_website

      # #/components/schemas/digital_card_profile/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/digital_card_profile/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/digital_card_profile/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/digital_card_profile/properties/issuer_name
      sig { returns(String) }
      attr_accessor :issuer_name

      # #/components/schemas/digital_card_profile/properties/status
      sig { returns(Increase::Models::DigitalCardProfile::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/digital_card_profile/properties/text_color
      sig { returns(Increase::Models::DigitalCardProfile::TextColor) }
      attr_reader :text_color

      sig do
        params(text_color: T.any(Increase::Models::DigitalCardProfile::TextColor, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :text_color

      # #/components/schemas/digital_card_profile/properties/type
      sig { returns(Increase::Models::DigitalCardProfile::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/digital_card_profile
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
          status: Increase::Models::DigitalCardProfile::Status::OrSymbol,
          text_color: T.any(Increase::Models::DigitalCardProfile::TextColor, Increase::Internal::AnyHash),
          type: Increase::Models::DigitalCardProfile::Type::OrSymbol
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
      ); end
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
              status: Increase::Models::DigitalCardProfile::Status::TaggedSymbol,
              text_color: Increase::Models::DigitalCardProfile::TextColor,
              type: Increase::Models::DigitalCardProfile::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/digital_card_profile/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalCardProfile::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DigitalCardProfile::Status::TaggedSymbol) }

        # The Card Profile is awaiting review from Increase and/or processing by card networks.
        PENDING = T.let(:pending, Increase::Models::DigitalCardProfile::Status::TaggedSymbol)

        # There is an issue with the Card Profile preventing it from use.
        REJECTED = T.let(:rejected, Increase::Models::DigitalCardProfile::Status::TaggedSymbol)

        # The Card Profile can be assigned to Cards.
        ACTIVE = T.let(:active, Increase::Models::DigitalCardProfile::Status::TaggedSymbol)

        # The Card Profile is no longer in use.
        ARCHIVED = T.let(:archived, Increase::Models::DigitalCardProfile::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DigitalCardProfile::Status::TaggedSymbol]) }
        def self.values; end
      end

      class TextColor < Increase::Internal::Type::BaseModel
        # #/components/schemas/digital_card_profile/properties/text_color/properties/blue
        sig { returns(Integer) }
        attr_accessor :blue

        # #/components/schemas/digital_card_profile/properties/text_color/properties/green
        sig { returns(Integer) }
        attr_accessor :green

        # #/components/schemas/digital_card_profile/properties/text_color/properties/red
        sig { returns(Integer) }
        attr_accessor :red

        # #/components/schemas/digital_card_profile/properties/text_color
        sig { params(blue: Integer, green: Integer, red: Integer).returns(T.attached_class) }
        def self.new(blue:, green:, red:); end

        sig { override.returns({blue: Integer, green: Integer, red: Integer}) }
        def to_hash; end
      end

      # #/components/schemas/digital_card_profile/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalCardProfile::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DigitalCardProfile::Type::TaggedSymbol) }

        DIGITAL_CARD_PROFILE =
          T.let(:digital_card_profile, Increase::Models::DigitalCardProfile::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DigitalCardProfile::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
