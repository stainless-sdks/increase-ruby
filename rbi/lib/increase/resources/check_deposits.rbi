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
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CheckDeposit)
      end
      def create(
        account_id:,
        amount:,
        back_image_file_id:,
        front_image_file_id:,
        description: nil,
        request_options: {}
      )
      end

      # Retrieve a Check Deposit
      sig do
        params(
          check_deposit_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CheckDeposit)
      end
      def retrieve(check_deposit_id, request_options: {})
      end

      # List Check Deposits
      sig do
        params(
          account_id: String,
          created_at: Increase::Models::CheckDepositListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::CheckDeposit])
      end
      def list(
        account_id: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
