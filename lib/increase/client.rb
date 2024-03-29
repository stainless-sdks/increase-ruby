# frozen_string_literal: true

module Increase
  class Client < Increase::BaseClient
    DEFAULT_MAX_RETRIES = 2

    attr_reader(
      :api_key,
      :webhook_secret,
      :default_params,
      :accounts,
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
      :physical_card_profiles
    )

    # @!visibility private
    def auth_headers
      {"Authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    def initialize(environment: nil, api_key: nil, webhook_secret: nil, base_url: nil, max_retries: nil)
      environments = {production: "https://api.increase.com", sandbox: "https://sandbox.increase.com"}
      @default_headers = {}
      @default_params = {}
      @api_key = [
        api_key, ENV["INCREASE_API_KEY"]
      ].find { |value| !value.nil? }
      @webhook_secret = [
        webhook_secret, ENV["INCREASE_WEBHOOK_SECRET"]
      ].find { |value| !value.nil? }
      server_uri_string = environments[environment&.to_sym] || base_url
      super(server_uri_string: server_uri_string, headers: @default_headers, max_retries: max_retries || DEFAULT_MAX_RETRIES)

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
      @idempotency_header = "Idempotency-Key"
    end

    # @!visibility private
    def make_status_error(err_msg:, body:, response:)
      type = if body.is_a? Hash
        body["type"]
      end
      if type == "invalid_parameters_error"
        return Increase::HTTP::InvalidParametersError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      end
      if type == "malformed_request_error"
        return Increase::HTTP::MalformedRequestError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      end
      if type == "invalid_api_key_error"
        return Increase::HTTP::InvalidAPIKeyError.new(err_msg: err_msg, response: response, body: body)
      end

      if type == "environment_mismatch_error"
        return Increase::HTTP::EnvironmentMismatchError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      end
      if type == "insufficient_permissions_error"
        return Increase::HTTP::InsufficientPermissionsError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      end
      if type == "private_feature_error"
        return Increase::HTTP::PrivateFeatureError.new(err_msg: err_msg, response: response, body: body)
      end

      if type == "api_method_not_found_error"
        return Increase::HTTP::APIMethodNotFoundError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      end
      if type == "object_not_found_error"
        return Increase::HTTP::ObjectNotFoundError.new(err_msg: err_msg, response: response, body: body)
      end

      if type == "idempotency_key_already_used_error"
        return Increase::HTTP::IdempotencyKeyAlreadyUsedError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      end
      if type == "invalid_operation_error"
        return Increase::HTTP::InvalidOperationError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      end
      if type == "rate_limited_error"
        return Increase::HTTP::RateLimitedError.new(err_msg: err_msg, response: response, body: body)
      end
      if type == "internal_server_error"
        return Increase::HTTP::InternalServerError.new(err_msg: err_msg, response: response, body: body)
      end

      case response.code.to_i
      when 500, 500..599
        Increase::HTTP::InternalServerError.new(
          err_msg: err_msg,
          response: response,
          body: {
            detail: nil, status: 500, title: "", type: "internal_server_error"
          }
        )
      when 400
        Increase::HTTP::BadRequestError.new(err_msg: err_msg, response: response, body: body)
      when 401
        Increase::HTTP::AuthenticationError.new(err_msg: err_msg, response: response, body: body)
      when 403
        Increase::HTTP::PermissionDeniedError.new(err_msg: err_msg, response: response, body: body)
      when 404
        Increase::HTTP::NotFoundError.new(err_msg: err_msg, response: response, body: body)
      when 409
        Increase::HTTP::ConflictError.new(err_msg: err_msg, response: response, body: body)
      when 422
        Increase::HTTP::UnprocessableEntityError.new(err_msg: err_msg, response: response, body: body)
      when 429
        Increase::HTTP::RateLimitError.new(err_msg: err_msg, response: response, body: body)
      else
        Increase::HTTP::APIStatusError.new(err_msg: err_msg, response: response, body: body)
      end
    end
  end
end
