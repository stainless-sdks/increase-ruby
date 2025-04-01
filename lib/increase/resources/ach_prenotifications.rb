# frozen_string_literal: true

module Increase
  module Resources
    class ACHPrenotifications
      # Create an ACH Prenotification
      #
      # @overload create(account_id:, account_number:, routing_number:, addendum: nil, company_descriptive_date: nil, company_discretionary_data: nil, company_entry_description: nil, company_name: nil, credit_debit_indicator: nil, effective_date: nil, individual_id: nil, individual_name: nil, standard_entry_class_code: nil, request_options: {})
      #
      # @param account_id [String]
      # @param account_number [String]
      # @param routing_number [String]
      # @param addendum [String]
      # @param company_descriptive_date [String]
      # @param company_discretionary_data [String]
      # @param company_entry_description [String]
      # @param company_name [String]
      # @param credit_debit_indicator [Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator]
      # @param effective_date [Date]
      # @param individual_id [String]
      # @param individual_name [String]
      # @param standard_entry_class_code [Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ACHPrenotification]
      #
      # @see Increase::Models::ACHPrenotificationCreateParams
      def create(params)
        parsed, options = Increase::Models::ACHPrenotificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ach_prenotifications",
          body: parsed,
          model: Increase::Models::ACHPrenotification,
          options: options
        )
      end

      # Retrieve an ACH Prenotification
      #
      # @overload retrieve(ach_prenotification_id, request_options: {})
      #
      # @param ach_prenotification_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ACHPrenotification]
      #
      # @see Increase::Models::ACHPrenotificationRetrieveParams
      def retrieve(ach_prenotification_id, params = {})
        @client.request(
          method: :get,
          path: ["ach_prenotifications/%1$s", ach_prenotification_id],
          model: Increase::Models::ACHPrenotification,
          options: params[:request_options]
        )
      end

      # List ACH Prenotifications
      #
      # @overload list(created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param created_at [Increase::Models::ACHPrenotificationListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::ACHPrenotification>]
      #
      # @see Increase::Models::ACHPrenotificationListParams
      def list(params = {})
        parsed, options = Increase::Models::ACHPrenotificationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "ach_prenotifications",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::ACHPrenotification,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
