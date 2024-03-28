# frozen_string_literal: true

module Increase
  module Resources
    class SimulationsResource
      attr_reader :account_transfers,
                  :account_statements,
                  :ach_transfers,
                  :card_disputes,
                  :card_refunds,
                  :check_transfers,
                  :documents,
                  :digital_wallet_token_requests,
                  :check_deposits,
                  :programs,
                  :inbound_wire_drawdown_requests,
                  :inbound_funds_holds,
                  :interest_payments,
                  :wire_transfers,
                  :cards,
                  :real_time_payments_transfers,
                  :physical_cards

      def initialize(client:)
        @client = client
        @account_transfers = Increase::Resources::Simulations::AccountTransfersResource.new(client: client)
        @account_statements = Increase::Resources::Simulations::AccountStatementsResource.new(client: client)
        @ach_transfers = Increase::Resources::Simulations::ACHTransfersResource.new(client: client)
        @card_disputes = Increase::Resources::Simulations::CardDisputesResource.new(client: client)
        @card_refunds = Increase::Resources::Simulations::CardRefundsResource.new(client: client)
        @check_transfers = Increase::Resources::Simulations::CheckTransfersResource.new(client: client)
        @documents = Increase::Resources::Simulations::DocumentsResource.new(client: client)
        @digital_wallet_token_requests = Increase::Resources::Simulations::DigitalWalletTokenRequestsResource.new(client: client)
        @check_deposits = Increase::Resources::Simulations::CheckDepositsResource.new(client: client)
        @programs = Increase::Resources::Simulations::ProgramsResource.new(client: client)
        @inbound_wire_drawdown_requests = Increase::Resources::Simulations::InboundWireDrawdownRequestsResource.new(client: client)
        @inbound_funds_holds = Increase::Resources::Simulations::InboundFundsHoldsResource.new(client: client)
        @interest_payments = Increase::Resources::Simulations::InterestPaymentsResource.new(client: client)
        @wire_transfers = Increase::Resources::Simulations::WireTransfersResource.new(client: client)
        @cards = Increase::Resources::Simulations::CardsResource.new(client: client)
        @real_time_payments_transfers = Increase::Resources::Simulations::RealTimePaymentsTransfersResource.new(client: client)
        @physical_cards = Increase::Resources::Simulations::PhysicalCardsResource.new(client: client)
      end

      # Simulates expiring a card authorization immediately.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :card_payment_id The identifier of the Card Payment to expire.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPayment]
      def card_authorization_expirations(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/simulations/card_authorization_expirations"
        body_params = [:card_payment_id]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::CardPayment
        request.merge!(opts)
        @client.request(request)
      end

      # Simulates the fuel confirmation of an authorization by a card acquirer. This
      #   happens asynchronously right after a fuel pump transaction is completed. A fuel
      #   confirmation can only happen once per authorization.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount The amount of the fuel_confirmation in minor units in the card authorization's
      #   currency.
      # @option params [String] :card_payment_id The identifier of the Card Payment to create a fuel_confirmation on.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPayment]
      def card_fuel_confirmations(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/simulations/card_fuel_confirmations"
        body_params = [:amount, :card_payment_id]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::CardPayment
        request.merge!(opts)
        @client.request(request)
      end

      # Simulates the increment of an authorization by a card acquirer. An authorization
      #   can be incremented multiple times.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount The amount of the increment in minor units in the card authorization's currency.
      # @option params [String] :card_payment_id The identifier of the Card Payment to create a increment on.
      # @option params [String] :event_subscription_id The identifier of the Event Subscription to use. If provided, will override the
      #   default real time event subscription. Because you can only create one real time
      #   decision event subscription, you can use this field to route events to any
      #   specified event subscription for testing purposes.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPayment]
      def card_increments(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/simulations/card_increments"
        body_params = [:amount, :card_payment_id, :event_subscription_id]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::CardPayment
        request.merge!(opts)
        @client.request(request)
      end

      # Simulates the reversal of an authorization by a card acquirer. An authorization
      #   can be partially reversed multiple times, up until the total authorized amount.
      #   Marks the pending transaction as complete if the authorization is fully
      #   reversed.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :card_payment_id The identifier of the Card Payment to create a reversal on.
      # @option params [Integer] :amount The amount of the reversal in minor units in the card authorization's currency.
      #   This defaults to the authorization amount.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPayment]
      def card_reversals(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/simulations/card_reversals"
        body_params = [:card_payment_id, :amount]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::CardPayment
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
