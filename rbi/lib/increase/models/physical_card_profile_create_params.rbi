# typed: strong

module Increase
  module Models
    class PhysicalCardProfileCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :carrier_image_file_id

      sig { returns(String) }
      attr_accessor :contact_phone

      sig { returns(String) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :front_image_file_id

      sig do
        params(
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        carrier_image_file_id:,
        contact_phone:,
        description:,
        front_image_file_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
