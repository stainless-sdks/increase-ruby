# frozen_string_literal: true

module Increase
  class Client < BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Client options.
    attr_reader :api_key

    # Resources.
    attr_reader :accounts,
                :account_numbers,
                :bookkeeping_accounts,
                :bookkeeping_entry_sets,
                :bookkeeping_entries,
                :real_time_decisions,
                :real_time_payments_transfers,
                :cards,
                :card_disputes,
                :card_purchase_supplements,
                :external_accounts,
                :exports,
                :digital_wallet_tokens,
                :transactions,
                :pending_transactions,
                :programs,
                :declined_transactions,
                :account_transfers,
                :ach_transfers,
                :ach_prenotifications,
                :documents,
                :wire_transfers,
                :check_transfers,
                :entities,
                :inbound_ach_transfers,
                :inbound_wire_drawdown_requests,
                :wire_drawdown_requests,
                :events,
                :event_subscriptions,
                :files,
                :groups,
                :oauth_connections,
                :check_deposits,
                :routing_numbers,
                :account_statements,
                :simulations,
                :physical_cards,
                :card_payments,
                :proof_of_authorization_requests,
                :proof_of_authorization_request_submissions,
                :intrafi,
                :real_time_payments_request_for_payments,
                :oauth_tokens,
                :inbound_wire_transfers,
                :digital_card_profiles,
                :physical_card_profiles,
                :inbound_check_deposits

    # @!attribute [r] accounts
    #  @return [Increase::Resources::Accounts]

    # @!attribute [r] account_numbers
    #  @return [Increase::Resources::AccountNumbers]

    # @!attribute [r] bookkeeping_accounts
    #  @return [Increase::Resources::BookkeepingAccounts]

    # @!attribute [r] bookkeeping_entry_sets
    #  @return [Increase::Resources::BookkeepingEntrySets]

    # @!attribute [r] bookkeeping_entries
    #  @return [Increase::Resources::BookkeepingEntries]

    # @!attribute [r] real_time_decisions
    #  @return [Increase::Resources::RealTimeDecisions]

    # @!attribute [r] real_time_payments_transfers
    #  @return [Increase::Resources::RealTimePaymentsTransfers]

    # @!attribute [r] cards
    #  @return [Increase::Resources::Cards]

    # @!attribute [r] card_disputes
    #  @return [Increase::Resources::CardDisputes]

    # @!attribute [r] card_purchase_supplements
    #  @return [Increase::Resources::CardPurchaseSupplements]

    # @!attribute [r] external_accounts
    #  @return [Increase::Resources::ExternalAccounts]

    # @!attribute [r] exports
    #  @return [Increase::Resources::Exports]

    # @!attribute [r] digital_wallet_tokens
    #  @return [Increase::Resources::DigitalWalletTokens]

    # @!attribute [r] transactions
    #  @return [Increase::Resources::Transactions]

    # @!attribute [r] pending_transactions
    #  @return [Increase::Resources::PendingTransactions]

    # @!attribute [r] programs
    #  @return [Increase::Resources::Programs]

    # @!attribute [r] declined_transactions
    #  @return [Increase::Resources::DeclinedTransactions]

    # @!attribute [r] account_transfers
    #  @return [Increase::Resources::AccountTransfers]

    # @!attribute [r] ach_transfers
    #  @return [Increase::Resources::ACHTransfers]

    # @!attribute [r] ach_prenotifications
    #  @return [Increase::Resources::ACHPrenotifications]

    # @!attribute [r] documents
    #  @return [Increase::Resources::Documents]

    # @!attribute [r] wire_transfers
    #  @return [Increase::Resources::WireTransfers]

    # @!attribute [r] check_transfers
    #  @return [Increase::Resources::CheckTransfers]

    # @!attribute [r] entities
    #  @return [Increase::Resources::Entities]

    # @!attribute [r] inbound_ach_transfers
    #  @return [Increase::Resources::InboundACHTransfers]

    # @!attribute [r] inbound_wire_drawdown_requests
    #  @return [Increase::Resources::InboundWireDrawdownRequests]

    # @!attribute [r] wire_drawdown_requests
    #  @return [Increase::Resources::WireDrawdownRequests]

    # @!attribute [r] events
    #  @return [Increase::Resources::Events]

    # @!attribute [r] event_subscriptions
    #  @return [Increase::Resources::EventSubscriptions]

    # @!attribute [r] files
    #  @return [Increase::Resources::Files]

    # @!attribute [r] groups
    #  @return [Increase::Resources::Groups]

    # @!attribute [r] oauth_connections
    #  @return [Increase::Resources::OAuthConnections]

    # @!attribute [r] check_deposits
    #  @return [Increase::Resources::CheckDeposits]

    # @!attribute [r] routing_numbers
    #  @return [Increase::Resources::RoutingNumbers]

    # @!attribute [r] account_statements
    #  @return [Increase::Resources::AccountStatements]

    # @!attribute [r] simulations
    #  @return [Increase::Resources::Simulations]

    # @!attribute [r] physical_cards
    #  @return [Increase::Resources::PhysicalCards]

    # @!attribute [r] card_payments
    #  @return [Increase::Resources::CardPayments]

    # @!attribute [r] proof_of_authorization_requests
    #  @return [Increase::Resources::ProofOfAuthorizationRequests]

    # @!attribute [r] proof_of_authorization_request_submissions
    #  @return [Increase::Resources::ProofOfAuthorizationRequestSubmissions]

    # @!attribute [r] intrafi
    #  @return [Increase::Resources::Intrafi]

    # @!attribute [r] real_time_payments_request_for_payments
    #  @return [Increase::Resources::RealTimePaymentsRequestForPayments]

    # @!attribute [r] oauth_tokens
    #  @return [Increase::Resources::OAuthTokens]

    # @!attribute [r] inbound_wire_transfers
    #  @return [Increase::Resources::InboundWireTransfers]

    # @!attribute [r] digital_card_profiles
    #  @return [Increase::Resources::DigitalCardProfiles]

    # @!attribute [r] physical_card_profiles
    #  @return [Increase::Resources::PhysicalCardProfiles]

    # @!attribute [r] inbound_check_deposits
    #  @return [Increase::Resources::InboundCheckDeposits]

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
