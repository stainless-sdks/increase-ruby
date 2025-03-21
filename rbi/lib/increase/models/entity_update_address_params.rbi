# typed: strong

module Increase
  module Models
    class EntityUpdateAddressParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
      #   are disallowed.
      sig { returns(Increase::Models::EntityUpdateAddressParams::Address) }
      def address
      end

      sig do
        params(_: T.any(Increase::Models::EntityUpdateAddressParams::Address, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::EntityUpdateAddressParams::Address, Increase::Util::AnyHash))
      end
      def address=(_)
      end

      sig do
        params(
          address: T.any(Increase::Models::EntityUpdateAddressParams::Address, Increase::Util::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(address:, request_options: {})
      end

      sig do
        override
          .returns(
            {address: Increase::Models::EntityUpdateAddressParams::Address, request_options: Increase::RequestOptions}
          )
      end
      def to_hash
      end

      class Address < Increase::BaseModel
        # The city of the address.
        sig { returns(String) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        # The first line of the address. This is usually the street number and street.
        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        # The two-letter United States Postal Service (USPS) abbreviation for the state of
        #   the address.
        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        # The ZIP code of the address.
        sig { returns(String) }
        def zip
        end

        sig { params(_: String).returns(String) }
        def zip=(_)
        end

        # The second line of the address. This might be the floor or room number.
        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
        #   are disallowed.
        sig do
          params(
            city: String,
            line1: String,
            state: String,
            zip: String,
            line2: String
          ).returns(T.attached_class)
        end
        def self.new(city:, line1:, state:, zip:, line2: nil)
        end

        sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
        def to_hash
        end
      end
    end
  end
end
