# typed: strong

module Increase
  module Models
    class PhysicalCardProfileCloneParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier of the File containing the physical card's carrier image.
      sig { returns(T.nilable(String)) }
      def carrier_image_file_id
      end

      sig { params(_: String).returns(String) }
      def carrier_image_file_id=(_)
      end

      # A phone number the user can contact to receive support for their card.
      sig { returns(T.nilable(String)) }
      def contact_phone
      end

      sig { params(_: String).returns(String) }
      def contact_phone=(_)
      end

      # A description you can use to identify the Card Profile.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The identifier of the File containing the physical card's front image.
      sig { returns(T.nilable(String)) }
      def front_image_file_id
      end

      sig { params(_: String).returns(String) }
      def front_image_file_id=(_)
      end

      # Text printed on the front of the card. Reach out to
      #   [support@increase.com](mailto:support@increase.com) for more information.
      sig { returns(T.nilable(Increase::Models::PhysicalCardProfileCloneParams::FrontText)) }
      def front_text
      end

      sig do
        params(_: T.any(Increase::Models::PhysicalCardProfileCloneParams::FrontText, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::PhysicalCardProfileCloneParams::FrontText, Increase::Util::AnyHash))
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
          .returns(T.attached_class)
      end
      def self.new(
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
        # The first line of text on the front of the card.
        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        # The second line of text on the front of the card. Providing a second line moves
        #   the first line slightly higher and prints the second line in the spot where the
        #   first line would have otherwise been printed.
        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        # Text printed on the front of the card. Reach out to
        #   [support@increase.com](mailto:support@increase.com) for more information.
        sig { params(line1: String, line2: String).returns(T.attached_class) }
        def self.new(line1:, line2: nil)
        end

        sig { override.returns({line1: String, line2: String}) }
        def to_hash
        end
      end
    end
  end
end
