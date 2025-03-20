# typed: strong

module Increase
  module Models
    class DigitalCardProfileCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

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

      # A description you can use to identify the Card Profile.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # A user-facing description for whoever is issuing the card.
      sig { returns(String) }
      def issuer_name
      end

      sig { params(_: String).returns(String) }
      def issuer_name=(_)
      end

      # An email address the user can contact to receive support for their card.
      sig { returns(T.nilable(String)) }
      def contact_email
      end

      sig { params(_: String).returns(String) }
      def contact_email=(_)
      end

      # A phone number the user can contact to receive support for their card.
      sig { returns(T.nilable(String)) }
      def contact_phone
      end

      sig { params(_: String).returns(String) }
      def contact_phone=(_)
      end

      # A website the user can visit to view and receive support for their card.
      sig { returns(T.nilable(String)) }
      def contact_website
      end

      sig { params(_: String).returns(String) }
      def contact_website=(_)
      end

      # The Card's text color, specified as an RGB triple. The default is white.
      sig { returns(T.nilable(Increase::Models::DigitalCardProfileCreateParams::TextColor)) }
      def text_color
      end

      sig do
        params(_: T.any(Increase::Models::DigitalCardProfileCreateParams::TextColor, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::DigitalCardProfileCreateParams::TextColor, Increase::Util::AnyHash))
      end
      def text_color=(_)
      end

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
          text_color: Increase::Models::DigitalCardProfileCreateParams::TextColor,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

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
      def to_hash
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

        # The Card's text color, specified as an RGB triple. The default is white.
        sig { params(blue: Integer, green: Integer, red: Integer).returns(T.attached_class) }
        def self.new(blue:, green:, red:)
        end

        sig { override.returns({blue: Integer, green: Integer, red: Integer}) }
        def to_hash
        end
      end
    end
  end
end
