# typed: strong

module Increase
  module Models
    class PhysicalCardProfileCloneParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :carrier_image_file_id

      sig { params(carrier_image_file_id: String).void }
      attr_writer :carrier_image_file_id

      sig { returns(T.nilable(String)) }
      attr_reader :contact_phone

      sig { params(contact_phone: String).void }
      attr_writer :contact_phone

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :front_image_file_id

      sig { params(front_image_file_id: String).void }
      attr_writer :front_image_file_id

      sig { returns(T.nilable(Increase::Models::PhysicalCardProfileCloneParams::FrontText)) }
      attr_reader :front_text

      sig { params(front_text: Increase::Models::PhysicalCardProfileCloneParams::FrontText).void }
      attr_writer :front_text

      sig do
        params(
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          front_text: Increase::Models::PhysicalCardProfileCloneParams::FrontText,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        carrier_image_file_id: nil,
        contact_phone: nil,
        description: nil,
        front_image_file_id: nil,
        front_text: nil,
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
            front_text: Increase::Models::PhysicalCardProfileCloneParams::FrontText,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class FrontText < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        sig { params(line1: String, line2: String).void }
        def initialize(line1:, line2: nil)
        end

        sig { override.returns({line1: String, line2: String}) }
        def to_hash
        end
      end
    end
  end
end
