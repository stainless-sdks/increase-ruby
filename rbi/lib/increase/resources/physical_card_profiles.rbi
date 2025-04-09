# typed: strong

module Increase
  module Resources
    class PhysicalCardProfiles
      # Create a Physical Card Profile
      sig do
        params(
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          program_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::PhysicalCardProfile)
      end
      def create(
        # #/components/schemas/create_a_physical_card_profile_parameters/properties/carrier_image_file_id
        carrier_image_file_id:,
        # #/components/schemas/create_a_physical_card_profile_parameters/properties/contact_phone
        contact_phone:,
        # #/components/schemas/create_a_physical_card_profile_parameters/properties/description
        description:,
        # #/components/schemas/create_a_physical_card_profile_parameters/properties/front_image_file_id
        front_image_file_id:,
        # #/components/schemas/create_a_physical_card_profile_parameters/properties/program_id
        program_id:,
        request_options: {}
      ); end
      # Retrieve a Card Profile
      sig do
        params(
          physical_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::PhysicalCardProfile)
      end
      def retrieve(
        # #/paths//physical_card_profiles/{physical_card_profile_id}/get/parameters/0/schema
        physical_card_profile_id,
        request_options: {}
      ); end
      # List Physical Card Profiles
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::PhysicalCardProfileListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::PhysicalCardProfile])
      end
      def list(
        # #/paths//physical_card_profiles/get/parameters/0/schema
        cursor: nil,
        # #/paths//physical_card_profiles/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//physical_card_profiles/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # Archive a Physical Card Profile
      sig do
        params(
          physical_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::PhysicalCardProfile)
      end
      def archive(
        # #/paths//physical_card_profiles/{physical_card_profile_id}/archive/post/parameters/0/schema
        physical_card_profile_id,
        request_options: {}
      ); end
      # Clone a Physical Card Profile
      sig do
        params(
          physical_card_profile_id: String,
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          front_text: T.any(Increase::Models::PhysicalCardProfileCloneParams::FrontText, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::PhysicalCardProfile)
      end
      def clone_(
        # #/paths//physical_card_profiles/{physical_card_profile_id}/clone/post/parameters/0/schema
        physical_card_profile_id,
        # #/components/schemas/clone_a_physical_card_profile_parameters/properties/carrier_image_file_id
        carrier_image_file_id: nil,
        # #/components/schemas/clone_a_physical_card_profile_parameters/properties/contact_phone
        contact_phone: nil,
        # #/components/schemas/clone_a_physical_card_profile_parameters/properties/description
        description: nil,
        # #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_image_file_id
        front_image_file_id: nil,
        # #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text
        front_text: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
