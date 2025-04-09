# typed: strong

module Increase
  module Models
    class DigitalCardProfileCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/app_icon_file_id
      sig { returns(String) }
      attr_accessor :app_icon_file_id

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/background_image_file_id
      sig { returns(String) }
      attr_accessor :background_image_file_id

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/card_description
      sig { returns(String) }
      attr_accessor :card_description

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/issuer_name
      sig { returns(String) }
      attr_accessor :issuer_name

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_email
      sig { returns(T.nilable(String)) }
      attr_reader :contact_email

      sig { params(contact_email: String).void }
      attr_writer :contact_email

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_phone
      sig { returns(T.nilable(String)) }
      attr_reader :contact_phone

      sig { params(contact_phone: String).void }
      attr_writer :contact_phone

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_website
      sig { returns(T.nilable(String)) }
      attr_reader :contact_website

      sig { params(contact_website: String).void }
      attr_writer :contact_website

      # #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color
      sig { returns(T.nilable(Increase::Models::DigitalCardProfileCreateParams::TextColor)) }
      attr_reader :text_color

      sig do
        params(
          text_color: T.any(Increase::Models::DigitalCardProfileCreateParams::TextColor, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :text_color

      sig do
        params(
          app_icon_file_id: String,
          background_image_file_id: String,
          card_description: String,
          description: String,
          issuer_name: String,
          contact_email: String,
          contact_phone: String,
          contact_website: String,
          text_color: T.any(Increase::Models::DigitalCardProfileCreateParams::TextColor, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        app_icon_file_id:,
        background_image_file_id:,
        card_description:,
        description:,
        issuer_name:,
        contact_email: nil,
        contact_phone: nil,
        contact_website: nil,
        text_color: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              app_icon_file_id: String,
              background_image_file_id: String,
              card_description: String,
              description: String,
              issuer_name: String,
              contact_email: String,
              contact_phone: String,
              contact_website: String,
              text_color: Increase::Models::DigitalCardProfileCreateParams::TextColor,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class TextColor < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color/properties/blue
        sig { returns(Integer) }
        attr_accessor :blue

        # #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color/properties/green
        sig { returns(Integer) }
        attr_accessor :green

        # #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color/properties/red
        sig { returns(Integer) }
        attr_accessor :red

        # #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color
        sig { params(blue: Integer, green: Integer, red: Integer).returns(T.attached_class) }
        def self.new(blue:, green:, red:); end

        sig { override.returns({blue: Integer, green: Integer, red: Integer}) }
        def to_hash; end
      end
    end
  end
end
