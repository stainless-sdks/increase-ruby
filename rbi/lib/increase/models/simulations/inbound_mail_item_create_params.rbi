# typed: strong

module Increase
  module Models
    module Simulations
      class InboundMailItemCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :lockbox_id

        sig { returns(T.nilable(String)) }
        attr_reader :contents_file_id

        sig { params(contents_file_id: String).void }
        attr_writer :contents_file_id

        sig do
          params(
            amount: Integer,
            lockbox_id: String,
            contents_file_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(amount:, lockbox_id:, contents_file_id: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              amount: Integer,
              lockbox_id: String,
              contents_file_id: String,
              request_options: Increase::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
