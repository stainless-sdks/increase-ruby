# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
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
        @account_transfers = Increase::Resources::Simulations::AccountTransfers.new(client: client)
        @account_statements = Increase::Resources::Simulations::AccountStatements.new(client: client)
        @ach_transfers = Increase::Resources::Simulations::ACHTransfers.new(client: client)
        @card_disputes = Increase::Resources::Simulations::CardDisputes.new(client: client)
        @card_refunds = Increase::Resources::Simulations::CardRefunds.new(client: client)
        @check_transfers = Increase::Resources::Simulations::CheckTransfers.new(client: client)
        @documents = Increase::Resources::Simulations::Documents.new(client: client)
        @digital_wallet_token_requests = Increase::Resources::Simulations::DigitalWalletTokenRequests.new(client: client)
        @check_deposits = Increase::Resources::Simulations::CheckDeposits.new(client: client)
        @programs = Increase::Resources::Simulations::Programs.new(client: client)
        @inbound_wire_drawdown_requests = Increase::Resources::Simulations::InboundWireDrawdownRequests.new(client: client)
        @inbound_funds_holds = Increase::Resources::Simulations::InboundFundsHolds.new(client: client)
        @interest_payments = Increase::Resources::Simulations::InterestPayments.new(client: client)
        @wire_transfers = Increase::Resources::Simulations::WireTransfers.new(client: client)
        @cards = Increase::Resources::Simulations::Cards.new(client: client)
        @real_time_payments_transfers = Increase::Resources::Simulations::RealTimePaymentsTransfers.new(client: client)
        @physical_cards = Increase::Resources::Simulations::PhysicalCards.new(client: client)
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
        req = {}
        req[:method] = :post
        req[:path] = "/simulations/card_authorization_expirations"
        req[:body] = params
        req[:model] = Increase::Models::CardPayment
        @client.request(req, opts)
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
        req = {}
        req[:method] = :post
        req[:path] = "/simulations/card_fuel_confirmations"
        req[:body] = params
        req[:model] = Increase::Models::CardPayment
        @client.request(req, opts)
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
        req = {}
        req[:method] = :post
        req[:path] = "/simulations/card_increments"
        req[:body] = params
        req[:model] = Increase::Models::CardPayment
        @client.request(req, opts)
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
        req = {}
        req[:method] = :post
        req[:path] = "/simulations/card_reversals"
        req[:body] = params
        req[:model] = Increase::Models::CardPayment
        @client.request(req, opts)
      end
    end
  end
end
