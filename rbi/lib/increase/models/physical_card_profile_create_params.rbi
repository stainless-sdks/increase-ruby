# typed: strong

module Increase
  module Models
    class PhysicalCardProfileCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier of the File containing the physical card's carrier image.
      sig { returns(String) }
      def carrier_image_file_id
      end

      sig { params(_: String).returns(String) }
      def carrier_image_file_id=(_)
      end

      # A phone number the user can contact to receive support for their card.
      sig { returns(String) }
      def contact_phone
      end

      sig { params(_: String).returns(String) }
      def contact_phone=(_)
      end

      # A description you can use to identify the Card Profile.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The identifier of the File containing the physical card's front image.
      sig { returns(String) }
      def front_image_file_id
      end

      sig { params(_: String).returns(String) }
      def front_image_file_id=(_)
      end

      sig do
        params(
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(carrier_image_file_id:, contact_phone:, description:, front_image_file_id:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              carrier_image_file_id: String,
              contact_phone: String,
              description: String,
              front_image_file_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
