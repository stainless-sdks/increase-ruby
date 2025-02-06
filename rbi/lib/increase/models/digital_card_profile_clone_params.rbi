# typed: strong

module Increase
  module Models
    class DigitalCardProfileCloneParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :app_icon_file_id

      sig { params(app_icon_file_id: String).void }
      attr_writer :app_icon_file_id

      sig { returns(T.nilable(String)) }
      attr_reader :background_image_file_id

      sig { params(background_image_file_id: String).void }
      attr_writer :background_image_file_id

      sig { returns(T.nilable(String)) }
      attr_reader :card_description

      sig { params(card_description: String).void }
      attr_writer :card_description

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

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :issuer_name

      sig { params(issuer_name: String).void }
      attr_writer :issuer_name

      sig { returns(T.nilable(Increase::Models::DigitalCardProfileCloneParams::TextColor)) }
      attr_reader :text_color

      sig { params(text_color: Increase::Models::DigitalCardProfileCloneParams::TextColor).void }
      attr_writer :text_color

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
        ).void
      end
      def initialize(
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
        override.returns(
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
