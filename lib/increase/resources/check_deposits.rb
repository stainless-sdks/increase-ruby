# frozen_string_literal: true

module Increase
  module Resources
    class CheckDeposits
      # @api private
      private def initialize_resources; end

      # Create a Check Deposit
      #
      # @overload create(account_id:, amount:, back_image_file_id:, front_image_file_id:, description: nil, request_options: {})
      #
      # @param account_id [String]
      # @param amount [Integer]
      # @param back_image_file_id [String]
      # @param front_image_file_id [String]
      # @param description [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CheckDeposit]
      #
      # @see Increase::Models::CheckDepositCreateParams
      def create(params)
        parsed, options = Increase::Models::CheckDepositCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "check_deposits",
          body: parsed,
          model: Increase::Models::CheckDeposit,
          options: options
        )
      end

      # Retrieve a Check Deposit
      #
      # @overload retrieve(check_deposit_id, request_options: {})
      #
      # @param check_deposit_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CheckDeposit]
      #
      # @see Increase::Models::CheckDepositRetrieveParams
      def retrieve(check_deposit_id, params = {})
        @client.request(
          method: :get,
          path: ["check_deposits/%1$s", check_deposit_id],
          model: Increase::Models::CheckDeposit,
          options: params[:request_options]
        )
      end

      # List Check Deposits
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param account_id [String]
      # @param created_at [Increase::Models::CheckDepositListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::CheckDeposit>]
      #
      # @see Increase::Models::CheckDepositListParams
      def list(params = {})
        parsed, options = Increase::Models::CheckDepositListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "check_deposits",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::CheckDeposit,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
