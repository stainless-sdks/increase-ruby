# typed: strong

module Increase
  module Models
    class DigitalCardProfileCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :app_icon_file_id

      sig { returns(String) }
      attr_accessor :background_image_file_id

      sig { returns(String) }
      attr_accessor :card_description

      sig { returns(String) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :issuer_name

      sig { returns(T.nilable(String)) }
      attr_reader :contact_email

      sig { params(contact_email: String).void }
      attr_writer :contact_email

      sig { returns(T.nilable(String)) }
      attr_reader :contact_phone

      sig { params(contact_phone: String).void }
      attr_writer :contact_phone

      sig { returns(T.nilable(String)) }
      attr_reader :contact_website

      sig { params(contact_website: String).void }
      attr_writer :contact_website

      sig { returns(T.nilable(Increase::Models::DigitalCardProfileCreateParams::TextColor)) }
      attr_reader :text_color

      sig { params(text_color: Increase::Models::DigitalCardProfileCreateParams::TextColor).void }
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
          text_color: Increase::Models::DigitalCardProfileCreateParams::TextColor,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
        override.returns(
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
    end
  end
end
