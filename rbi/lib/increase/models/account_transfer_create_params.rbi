# typed: strong

module Increase
  module Models
    class AccountTransferCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_account_transfer_parameters/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/create_an_account_transfer_parameters/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/create_an_account_transfer_parameters/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/create_an_account_transfer_parameters/properties/destination_account_id
      sig { returns(String) }
      attr_accessor :destination_account_id

      # #/components/schemas/create_an_account_transfer_parameters/properties/require_approval
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      sig do
        params(
          account_id: String,
          amount: Integer,
          description: String,
          destination_account_id: String,
          require_approval: T::Boolean,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id:,
        amount:,
        description:,
        destination_account_id:,
        require_approval: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              amount: Integer,
              description: String,
              destination_account_id: String,
              require_approval: T::Boolean,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
