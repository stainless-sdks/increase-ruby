# typed: strong

module Increase
  module Models
    class PhysicalCardProfileCloneParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def carrier_image_file_id
      end

      sig { params(_: String).returns(String) }
      def carrier_image_file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def contact_phone
      end

      sig { params(_: String).returns(String) }
      def contact_phone=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def front_image_file_id
      end

      sig { params(_: String).returns(String) }
      def front_image_file_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::PhysicalCardProfileCloneParams::FrontText)) }
      def front_text
      end

      sig do
        params(_: Increase::Models::PhysicalCardProfileCloneParams::FrontText)
          .returns(Increase::Models::PhysicalCardProfileCloneParams::FrontText)
      end
      def front_text=(_)
      end

      sig do
        params(
            carrier_image_file_id: String,
            contact_phone: String,
            description: String,
            front_image_file_id: String,
            front_text: Increase::Models::PhysicalCardProfileCloneParams::FrontText,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
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
      def to_hash
      end

      class FrontText < Increase::BaseModel
        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

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
