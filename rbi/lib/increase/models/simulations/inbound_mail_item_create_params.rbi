# typed: strong

module Increase
  module Models
    module Simulations
      class InboundMailItemCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The amount of the check to be simulated, in cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The identifier of the Lockbox to simulate inbound mail to.
        sig { returns(String) }
        def lockbox_id
        end

        sig { params(_: String).returns(String) }
        def lockbox_id=(_)
        end

        # The file containing the PDF contents. If not present, a default check image file
        #   will be used.
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
            request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, lockbox_id:, contents_file_id: nil, request_options: {})
        end

        sig do
          override
            .returns(
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
