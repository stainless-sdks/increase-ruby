# typed: strong

module Increase
  module Resources
    class DigitalCardProfiles
      # Create a Digital Card Profile
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
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::DigitalCardProfile)
      end
      def create(
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/app_icon_file_id
        app_icon_file_id:,
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/background_image_file_id
        background_image_file_id:,
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/card_description
        card_description:,
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/description
        description:,
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/issuer_name
        issuer_name:,
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_email
        contact_email: nil,
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_phone
        contact_phone: nil,
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_website
        contact_website: nil,
        # #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color
        text_color: nil,
        request_options: {}
      ); end
      # Retrieve a Digital Card Profile
      sig do
        params(
          digital_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::DigitalCardProfile)
      end
      def retrieve(
        # #/paths//digital_card_profiles/{digital_card_profile_id}/get/parameters/0/schema
        digital_card_profile_id,
        request_options: {}
      ); end
      # List Card Profiles
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::DigitalCardProfileListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::DigitalCardProfile])
      end
      def list(
        # #/paths//digital_card_profiles/get/parameters/0/schema
        cursor: nil,
        # #/paths//digital_card_profiles/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//digital_card_profiles/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # Archive a Digital Card Profile
      sig do
        params(
          digital_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::DigitalCardProfile)
      end
      def archive(
        # #/paths//digital_card_profiles/{digital_card_profile_id}/archive/post/parameters/0/schema
        digital_card_profile_id,
        request_options: {}
      ); end
      # Clones a Digital Card Profile
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
          text_color: T.any(Increase::Models::DigitalCardProfileCloneParams::TextColor, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::DigitalCardProfile)
      end
      def clone_(
        # #/paths//digital_card_profiles/{digital_card_profile_id}/clone/post/parameters/0/schema
        digital_card_profile_id,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/app_icon_file_id
        app_icon_file_id: nil,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/background_image_file_id
        background_image_file_id: nil,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/card_description
        card_description: nil,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/contact_email
        contact_email: nil,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/contact_phone
        contact_phone: nil,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/contact_website
        contact_website: nil,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/description
        description: nil,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/issuer_name
        issuer_name: nil,
        # #/components/schemas/clones_a_digital_card_profile_parameters/properties/text_color
        text_color: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
