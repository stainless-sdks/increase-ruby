# typed: strong

module Increase
  module Resources
    class DigitalCardProfiles
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
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::DigitalCardProfile)
      end
      def create(
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
        params(
          digital_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::DigitalCardProfile)
      end
      def retrieve(digital_card_profile_id, request_options: {})
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::DigitalCardProfileListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::DigitalCardProfile])
      end
      def list(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      end

      sig do
        params(
          digital_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::DigitalCardProfile)
      end
      def archive(digital_card_profile_id, request_options: {})
      end

      sig do
        params(
          digital_card_profile_id: String,
          app_icon_file_id: String,
          background_image_file_id: String,
          card_description: String,
          contact_email: String,
          contact_phone: String,
          contact_website: String,
          description: String,
          issuer_name: String,
          text_color: Increase::Models::DigitalCardProfileCloneParams::TextColor,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::DigitalCardProfile)
      end
      def clone_(
        digital_card_profile_id,
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

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
