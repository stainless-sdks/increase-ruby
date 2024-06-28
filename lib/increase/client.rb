# frozen_string_literal: true

module Increase
  class Client < BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Client options.
    attr_reader :api_key

    # @return [Increase::Resources::Accounts]
    attr_reader :accounts

    # @return [Increase::Resources::AccountNumbers]
    attr_reader :account_numbers

    # @return [Increase::Resources::BookkeepingAccounts]
    attr_reader :bookkeeping_accounts

    # @return [Increase::Resources::BookkeepingEntrySets]
    attr_reader :bookkeeping_entry_sets

    # @return [Increase::Resources::BookkeepingEntries]
    attr_reader :bookkeeping_entries

    # @return [Increase::Resources::RealTimeDecisions]
    attr_reader :real_time_decisions

    # @return [Increase::Resources::RealTimePaymentsTransfers]
    attr_reader :real_time_payments_transfers

    # @return [Increase::Resources::Cards]
    attr_reader :cards

    # @return [Increase::Resources::CardDisputes]
    attr_reader :card_disputes

    # @return [Increase::Resources::CardPurchaseSupplements]
    attr_reader :card_purchase_supplements

    # @return [Increase::Resources::ExternalAccounts]
    attr_reader :external_accounts

    # @return [Increase::Resources::Exports]
    attr_reader :exports

    # @return [Increase::Resources::DigitalWalletTokens]
    attr_reader :digital_wallet_tokens

    # @return [Increase::Resources::Transactions]
    attr_reader :transactions

    # @return [Increase::Resources::PendingTransactions]
    attr_reader :pending_transactions

    # @return [Increase::Resources::Programs]
    attr_reader :programs

    # @return [Increase::Resources::DeclinedTransactions]
    attr_reader :declined_transactions

    # @return [Increase::Resources::AccountTransfers]
    attr_reader :account_transfers

    # @return [Increase::Resources::ACHTransfers]
    attr_reader :ach_transfers

    # @return [Increase::Resources::ACHPrenotifications]
    attr_reader :ach_prenotifications

    # @return [Increase::Resources::Documents]
    attr_reader :documents

    # @return [Increase::Resources::WireTransfers]
    attr_reader :wire_transfers

    # @return [Increase::Resources::CheckTransfers]
    attr_reader :check_transfers

    # @return [Increase::Resources::Entities]
    attr_reader :entities

    # @return [Increase::Resources::InboundACHTransfers]
    attr_reader :inbound_ach_transfers

    # @return [Increase::Resources::InboundWireDrawdownRequests]
    attr_reader :inbound_wire_drawdown_requests

    # @return [Increase::Resources::WireDrawdownRequests]
    attr_reader :wire_drawdown_requests

    # @return [Increase::Resources::Events]
    attr_reader :events

    # @return [Increase::Resources::EventSubscriptions]
    attr_reader :event_subscriptions

    # @return [Increase::Resources::Files]
    attr_reader :files

    # @return [Increase::Resources::Groups]
    attr_reader :groups

    # @return [Increase::Resources::OAuthConnections]
    attr_reader :oauth_connections

    # @return [Increase::Resources::CheckDeposits]
    attr_reader :check_deposits

    # @return [Increase::Resources::RoutingNumbers]
    attr_reader :routing_numbers

    # @return [Increase::Resources::AccountStatements]
    attr_reader :account_statements

    # @return [Increase::Resources::Simulations]
    attr_reader :simulations

    # @return [Increase::Resources::PhysicalCards]
    attr_reader :physical_cards

    # @return [Increase::Resources::CardPayments]
    attr_reader :card_payments

    # @return [Increase::Resources::ProofOfAuthorizationRequests]
    attr_reader :proof_of_authorization_requests

    # @return [Increase::Resources::ProofOfAuthorizationRequestSubmissions]
    attr_reader :proof_of_authorization_request_submissions

    # @return [Increase::Resources::Intrafi]
    attr_reader :intrafi

    # @return [Increase::Resources::RealTimePaymentsRequestForPayments]
    attr_reader :real_time_payments_request_for_payments

    # @return [Increase::Resources::OAuthTokens]
    attr_reader :oauth_tokens

    # @return [Increase::Resources::InboundWireTransfers]
    attr_reader :inbound_wire_transfers

    # @return [Increase::Resources::DigitalCardProfiles]
    attr_reader :digital_card_profiles

    # @return [Increase::Resources::PhysicalCardProfiles]
    attr_reader :physical_card_profiles

    # @return [Increase::Resources::InboundCheckDeposits]
    attr_reader :inbound_check_deposits

    # @return [Increase::Resources::InboundMailItems]
    attr_reader :inbound_mail_items

    # @return [Increase::Resources::Lockboxes]
    attr_reader :lockboxes

    # @!visibility private
    def auth_headers
      {"Authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    def initialize(environment: nil, base_url: nil, api_key: nil, max_retries: nil)
      environments = {"production" => "https://api.increase.com", "sandbox" => "https://sandbox.increase.com"}
      if environment && base_url
        raise ArgumentError, "both environment and base_url given, expected only one"
      elsif environment
        if !environments.key?(environment.to_s)
          raise ArgumentError, "environment must be one of #{environments.keys}, got #{environment}"
        end
        base_url = environments[environment.to_s]
      elsif !base_url
        base_url = "https://api.increase.com"
      end

      max_retries ||= DEFAULT_MAX_RETRIES
      idempotency_header = "Idempotency-Key"

      @api_key = [api_key, ENV["INCREASE_API_KEY"]].find { |v| !v.nil? }
      if @api_key.nil?
        raise ArgumentError, "api_key is required"
      end

      super(base_url: base_url, max_retries: max_retries, idempotency_header: idempotency_header)

      @accounts = Increase::Resources::Accounts.new(client: self)
      @account_numbers = Increase::Resources::AccountNumbers.new(client: self)
      @bookkeeping_accounts = Increase::Resources::BookkeepingAccounts.new(client: self)
      @bookkeeping_entry_sets = Increase::Resources::BookkeepingEntrySets.new(client: self)
      @bookkeeping_entries = Increase::Resources::BookkeepingEntries.new(client: self)
      @real_time_decisions = Increase::Resources::RealTimeDecisions.new(client: self)
      @real_time_payments_transfers = Increase::Resources::RealTimePaymentsTransfers.new(client: self)
      @cards = Increase::Resources::Cards.new(client: self)
      @card_disputes = Increase::Resources::CardDisputes.new(client: self)
      @card_purchase_supplements = Increase::Resources::CardPurchaseSupplements.new(client: self)
      @external_accounts = Increase::Resources::ExternalAccounts.new(client: self)
      @exports = Increase::Resources::Exports.new(client: self)
      @digital_wallet_tokens = Increase::Resources::DigitalWalletTokens.new(client: self)
      @transactions = Increase::Resources::Transactions.new(client: self)
      @pending_transactions = Increase::Resources::PendingTransactions.new(client: self)
      @programs = Increase::Resources::Programs.new(client: self)
      @declined_transactions = Increase::Resources::DeclinedTransactions.new(client: self)
      @account_transfers = Increase::Resources::AccountTransfers.new(client: self)
      @ach_transfers = Increase::Resources::ACHTransfers.new(client: self)
      @ach_prenotifications = Increase::Resources::ACHPrenotifications.new(client: self)
      @documents = Increase::Resources::Documents.new(client: self)
      @wire_transfers = Increase::Resources::WireTransfers.new(client: self)
      @check_transfers = Increase::Resources::CheckTransfers.new(client: self)
      @entities = Increase::Resources::Entities.new(client: self)
      @inbound_ach_transfers = Increase::Resources::InboundACHTransfers.new(client: self)
      @inbound_wire_drawdown_requests = Increase::Resources::InboundWireDrawdownRequests.new(client: self)
      @wire_drawdown_requests = Increase::Resources::WireDrawdownRequests.new(client: self)
      @events = Increase::Resources::Events.new(client: self)
      @event_subscriptions = Increase::Resources::EventSubscriptions.new(client: self)
      @files = Increase::Resources::Files.new(client: self)
      @groups = Increase::Resources::Groups.new(client: self)
      @oauth_connections = Increase::Resources::OAuthConnections.new(client: self)
      @check_deposits = Increase::Resources::CheckDeposits.new(client: self)
      @routing_numbers = Increase::Resources::RoutingNumbers.new(client: self)
      @account_statements = Increase::Resources::AccountStatements.new(client: self)
      @simulations = Increase::Resources::Simulations.new(client: self)
      @physical_cards = Increase::Resources::PhysicalCards.new(client: self)
      @card_payments = Increase::Resources::CardPayments.new(client: self)
      @proof_of_authorization_requests = Increase::Resources::ProofOfAuthorizationRequests.new(client: self)
      @proof_of_authorization_request_submissions = Increase::Resources::ProofOfAuthorizationRequestSubmissions.new(client: self)
      @intrafi = Increase::Resources::Intrafi.new(client: self)
      @real_time_payments_request_for_payments = Increase::Resources::RealTimePaymentsRequestForPayments.new(client: self)
      @oauth_tokens = Increase::Resources::OAuthTokens.new(client: self)
      @inbound_wire_transfers = Increase::Resources::InboundWireTransfers.new(client: self)
      @digital_card_profiles = Increase::Resources::DigitalCardProfiles.new(client: self)
      @physical_card_profiles = Increase::Resources::PhysicalCardProfiles.new(client: self)
      @inbound_check_deposits = Increase::Resources::InboundCheckDeposits.new(client: self)
      @inbound_mail_items = Increase::Resources::InboundMailItems.new(client: self)
      @lockboxes = Increase::Resources::Lockboxes.new(client: self)
    end

    # @!visibility private
    def make_status_error(message:, body:, response:)
      case response.code.to_i
      when 500, 500..599
        Increase::HTTP::InternalServerError.new(
          message: message,
          response: response,
          body: {detail: nil, status: 500, title: "", type: "internal_server_error"}
        )
      when 400
        Increase::HTTP::BadRequestError.new(message: message, response: response, body: body)
      when 401
        Increase::HTTP::AuthenticationError.new(message: message, response: response, body: body)
      when 403
        Increase::HTTP::PermissionDeniedError.new(message: message, response: response, body: body)
      when 404
        Increase::HTTP::NotFoundError.new(message: message, response: response, body: body)
      when 409
        Increase::HTTP::ConflictError.new(message: message, response: response, body: body)
      when 422
        Increase::HTTP::UnprocessableEntityError.new(message: message, response: response, body: body)
      when 429
        Increase::HTTP::RateLimitError.new(message: message, response: response, body: body)
      else
        Increase::HTTP::APIStatusError.new(message: message, response: response, body: body)
      end
    end
  end
end
