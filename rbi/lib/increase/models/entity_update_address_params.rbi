# typed: strong

module Increase
  module Models
    class EntityUpdateAddressParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Increase::Models::EntityUpdateAddressParams::Address) }
      def address
      end

      sig do
        params(_: Increase::Models::EntityUpdateAddressParams::Address)
          .returns(Increase::Models::EntityUpdateAddressParams::Address)
      end
      def address=(_)
      end

      sig do
        params(
          address: Increase::Models::EntityUpdateAddressParams::Address,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(address:, request_options: {})
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
        sig { returns(String) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        sig { returns(String) }
        def line1
        end

        sig { params(_: String).returns(String) }
        def line1=(_)
        end

        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        sig { returns(String) }
        def zip
        end

        sig { params(_: String).returns(String) }
        def zip=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
        def initialize(city:, line1:, state:, zip:, line2: nil)
        end

        sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
        def to_hash
        end
      end
    end
  end
end
