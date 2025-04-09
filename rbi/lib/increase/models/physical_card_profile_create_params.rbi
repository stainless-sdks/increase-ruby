# typed: strong

module Increase
  module Models
    class PhysicalCardProfileCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_physical_card_profile_parameters/properties/carrier_image_file_id
      sig { returns(String) }
      attr_accessor :carrier_image_file_id

      # #/components/schemas/create_a_physical_card_profile_parameters/properties/contact_phone
      sig { returns(String) }
      attr_accessor :contact_phone

      # #/components/schemas/create_a_physical_card_profile_parameters/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/create_a_physical_card_profile_parameters/properties/front_image_file_id
      sig { returns(String) }
      attr_accessor :front_image_file_id

      # #/components/schemas/create_a_physical_card_profile_parameters/properties/program_id
      sig { returns(String) }
      attr_accessor :program_id

      sig do
        params(
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          program_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        carrier_image_file_id:,
        contact_phone:,
        description:,
        front_image_file_id:,
        program_id:,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              carrier_image_file_id: String,
              contact_phone: String,
              description: String,
              front_image_file_id: String,
              program_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
