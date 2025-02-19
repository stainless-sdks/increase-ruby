# typed: strong

module Increase
  module Models
    module Simulations
      class InboundMailItemCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(String) }
        def lockbox_id
        end

        sig { params(_: String).returns(String) }
        def lockbox_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def contents_file_id
        end

        sig { params(_: String).returns(String) }
        def contents_file_id=(_)
        end

        sig do
          params(
              amount: Integer,
              lockbox_id: String,
              contents_file_id: String,
              request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
            )
            .void
        end
        def initialize(amount:, lockbox_id:, contents_file_id: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {amount: Integer, lockbox_id: String, contents_file_id: String, request_options: Increase::RequestOptions}
            )
        end
        def to_hash
        end
      end
    end
  end
end
