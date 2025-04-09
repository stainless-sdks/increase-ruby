# typed: strong

module Increase
  module Models
    class PhysicalCardProfileCloneParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/clone_a_physical_card_profile_parameters/properties/carrier_image_file_id
      sig { returns(T.nilable(String)) }
      attr_reader :carrier_image_file_id

      sig { params(carrier_image_file_id: String).void }
      attr_writer :carrier_image_file_id

      # #/components/schemas/clone_a_physical_card_profile_parameters/properties/contact_phone
      sig { returns(T.nilable(String)) }
      attr_reader :contact_phone

      sig { params(contact_phone: String).void }
      attr_writer :contact_phone

      # #/components/schemas/clone_a_physical_card_profile_parameters/properties/description
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_image_file_id
      sig { returns(T.nilable(String)) }
      attr_reader :front_image_file_id

      sig { params(front_image_file_id: String).void }
      attr_writer :front_image_file_id

      # #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text
      sig { returns(T.nilable(Increase::Models::PhysicalCardProfileCloneParams::FrontText)) }
      attr_reader :front_text

      sig do
        params(
          front_text: T.any(Increase::Models::PhysicalCardProfileCloneParams::FrontText, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :front_text

      sig do
        params(
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          front_text: T.any(Increase::Models::PhysicalCardProfileCloneParams::FrontText, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        carrier_image_file_id: nil,
        contact_phone: nil,
        description: nil,
        front_image_file_id: nil,
        front_text: nil,
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
              front_text: Increase::Models::PhysicalCardProfileCloneParams::FrontText,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class FrontText < Increase::Internal::Type::BaseModel
        # #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text/properties/line1
        sig { returns(String) }
        attr_accessor :line1

        # #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text/properties/line2
        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text
        sig { params(line1: String, line2: String).returns(T.attached_class) }
        def self.new(line1:, line2: nil); end

        sig { override.returns({line1: String, line2: String}) }
        def to_hash; end
      end
    end
  end
end
