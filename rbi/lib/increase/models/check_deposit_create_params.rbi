# typed: strong

module Increase
  module Models
    class CheckDepositCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_check_deposit_parameters/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/create_a_check_deposit_parameters/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/create_a_check_deposit_parameters/properties/back_image_file_id
      sig { returns(String) }
      attr_accessor :back_image_file_id

      # #/components/schemas/create_a_check_deposit_parameters/properties/front_image_file_id
      sig { returns(String) }
      attr_accessor :front_image_file_id

      # #/components/schemas/create_a_check_deposit_parameters/properties/description
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        params(
          account_id: String,
          amount: Integer,
          back_image_file_id: String,
          front_image_file_id: String,
          description: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id:,
        amount:,
        back_image_file_id:,
        front_image_file_id:,
        description: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              amount: Integer,
              back_image_file_id: String,
              front_image_file_id: String,
              description: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
