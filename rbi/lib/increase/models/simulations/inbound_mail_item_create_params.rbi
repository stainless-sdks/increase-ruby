# typed: strong

module Increase
  module Models
    module Simulations
      class InboundMailItemCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # #/components/schemas/sandbox_create_an_inbound_mail_item_parameters/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/sandbox_create_an_inbound_mail_item_parameters/properties/lockbox_id
        sig { returns(String) }
        attr_accessor :lockbox_id

        # #/components/schemas/sandbox_create_an_inbound_mail_item_parameters/properties/contents_file_id
        sig { returns(T.nilable(String)) }
        attr_reader :contents_file_id

        sig { params(contents_file_id: String).void }
        attr_writer :contents_file_id

        sig do
          params(
            amount: Integer,
            lockbox_id: String,
            contents_file_id: String,
            request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, lockbox_id:, contents_file_id: nil, request_options: {}); end

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
        def to_hash; end
      end
    end
  end
end
