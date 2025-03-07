# typed: strong

module Increase
  module Models
    class EntityUpdateBeneficialOwnerAddressParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address) }
      def address
      end

      sig do
        params(_: Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address)
          .returns(Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address)
      end
      def address=(_)
      end

      sig { returns(String) }
      def beneficial_owner_id
      end

      sig { params(_: String).returns(String) }
      def beneficial_owner_id=(_)
      end

      sig do
        params(
          address: Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address,
          beneficial_owner_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(address:, beneficial_owner_id:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              address: Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address,
              beneficial_owner_id: String,
              request_options: Increase::RequestOptions
            }
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
