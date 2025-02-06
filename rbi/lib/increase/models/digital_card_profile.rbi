# typed: strong

module Increase
  module Models
    class DigitalCardProfile < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :app_icon_file_id

      sig { returns(String) }
      attr_accessor :background_image_file_id

      sig { returns(String) }
      attr_accessor :card_description

      sig { returns(T.nilable(String)) }
      attr_accessor :contact_email

      sig { returns(T.nilable(String)) }
      attr_accessor :contact_phone

      sig { returns(T.nilable(String)) }
      attr_accessor :contact_website

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(String) }
      attr_accessor :issuer_name

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Increase::Models::DigitalCardProfile::TextColor) }
      attr_accessor :text_color

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
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
        override.returns(
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
        attr_accessor :blue

        sig { returns(Integer) }
        attr_accessor :green

        sig { returns(Integer) }
        attr_accessor :red

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
