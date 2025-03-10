# typed: strong

module Increase
  module Models
    class DigitalCardProfileCloneParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def app_icon_file_id
      end

      sig { params(_: String).returns(String) }
      def app_icon_file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def background_image_file_id
      end

      sig { params(_: String).returns(String) }
      def background_image_file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def card_description
      end

      sig { params(_: String).returns(String) }
      def card_description=(_)
      end

      sig { returns(T.nilable(String)) }
      def contact_email
      end

      sig { params(_: String).returns(String) }
      def contact_email=(_)
      end

      sig { returns(T.nilable(String)) }
      def contact_phone
      end

      sig { params(_: String).returns(String) }
      def contact_phone=(_)
      end

      sig { returns(T.nilable(String)) }
      def contact_website
      end

      sig { params(_: String).returns(String) }
      def contact_website=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def issuer_name
      end

      sig { params(_: String).returns(String) }
      def issuer_name=(_)
      end

      sig { returns(T.nilable(Increase::Models::DigitalCardProfileCloneParams::TextColor)) }
      def text_color
      end

      sig do
        params(_: Increase::Models::DigitalCardProfileCloneParams::TextColor)
          .returns(Increase::Models::DigitalCardProfileCloneParams::TextColor)
      end
      def text_color=(_)
      end

      sig do
        params(
          app_icon_file_id: String,
          background_image_file_id: String,
          card_description: String,
          contact_email: String,
          contact_phone: String,
          contact_website: String,
          description: String,
          issuer_name: String,
          text_color: Increase::Models::DigitalCardProfileCloneParams::TextColor,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        app_icon_file_id: nil,
        background_image_file_id: nil,
        card_description: nil,
        contact_email: nil,
        contact_phone: nil,
        contact_website: nil,
        description: nil,
        issuer_name: nil,
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
              contact_email: String,
              contact_phone: String,
              contact_website: String,
              description: String,
              issuer_name: String,
              text_color: Increase::Models::DigitalCardProfileCloneParams::TextColor,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
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
