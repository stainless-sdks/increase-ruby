# typed: strong

module Increase
  module Resources
    class CheckDeposits
      # Create a Check Deposit
      sig do
        params(
          account_id: String,
          amount: Integer,
          back_image_file_id: String,
          front_image_file_id: String,
          description: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CheckDeposit)
      end
      def create(
        # #/components/schemas/create_a_check_deposit_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_a_check_deposit_parameters/properties/amount
        amount:,
        # #/components/schemas/create_a_check_deposit_parameters/properties/back_image_file_id
        back_image_file_id:,
        # #/components/schemas/create_a_check_deposit_parameters/properties/front_image_file_id
        front_image_file_id:,
        # #/components/schemas/create_a_check_deposit_parameters/properties/description
        description: nil,
        request_options: {}
      ); end
      # Retrieve a Check Deposit
      sig do
        params(
          check_deposit_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CheckDeposit)
      end
      def retrieve(
        # #/paths//check_deposits/{check_deposit_id}/get/parameters/0/schema
        check_deposit_id,
        request_options: {}
      ); end
      # List Check Deposits
      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::CheckDepositListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::CheckDeposit])
      end
      def list(
        # #/paths//check_deposits/get/parameters/2/schema
        account_id: nil,
        created_at: nil,
        # #/paths//check_deposits/get/parameters/0/schema
        cursor: nil,
        # #/paths//check_deposits/get/parameters/7/schema
        idempotency_key: nil,
        # #/paths//check_deposits/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
