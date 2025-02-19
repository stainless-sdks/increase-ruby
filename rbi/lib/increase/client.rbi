# typed: strong

module Increase
  class Client < Increase::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS = T.let(
      {production: "https://api.increase.com", sandbox: "https://sandbox.increase.com"},
      T::Hash[Symbol, String]
    )

    sig { returns(String) }
    def api_key
    end

    sig { returns(Increase::Resources::Accounts) }
    def accounts
    end

    sig { returns(Increase::Resources::AccountNumbers) }
    def account_numbers
    end

    sig { returns(Increase::Resources::Cards) }
    def cards
    end

    sig { returns(Increase::Resources::CardPayments) }
    def card_payments
    end

    sig { returns(Increase::Resources::CardPurchaseSupplements) }
    def card_purchase_supplements
    end

    sig { returns(Increase::Resources::CardDisputes) }
    def card_disputes
    end

    sig { returns(Increase::Resources::PhysicalCards) }
    def physical_cards
    end

    sig { returns(Increase::Resources::DigitalCardProfiles) }
    def digital_card_profiles
    end

    sig { returns(Increase::Resources::PhysicalCardProfiles) }
    def physical_card_profiles
    end

    sig { returns(Increase::Resources::DigitalWalletTokens) }
    def digital_wallet_tokens
    end

    sig { returns(Increase::Resources::Transactions) }
    def transactions
    end

    sig { returns(Increase::Resources::PendingTransactions) }
    def pending_transactions
    end

    sig { returns(Increase::Resources::DeclinedTransactions) }
    def declined_transactions
    end

    sig { returns(Increase::Resources::AccountTransfers) }
    def account_transfers
    end

    sig { returns(Increase::Resources::ACHTransfers) }
    def ach_transfers
    end

    sig { returns(Increase::Resources::ACHPrenotifications) }
    def ach_prenotifications
    end

    sig { returns(Increase::Resources::InboundACHTransfers) }
    def inbound_ach_transfers
    end

    sig { returns(Increase::Resources::WireTransfers) }
    def wire_transfers
    end

    sig { returns(Increase::Resources::InboundWireTransfers) }
    def inbound_wire_transfers
    end

    sig { returns(Increase::Resources::WireDrawdownRequests) }
    def wire_drawdown_requests
    end

    sig { returns(Increase::Resources::InboundWireDrawdownRequests) }
    def inbound_wire_drawdown_requests
    end

    sig { returns(Increase::Resources::CheckTransfers) }
    def check_transfers
    end

    sig { returns(Increase::Resources::InboundCheckDeposits) }
    def inbound_check_deposits
    end

    sig { returns(Increase::Resources::RealTimePaymentsTransfers) }
    def real_time_payments_transfers
    end

    sig { returns(Increase::Resources::InboundRealTimePaymentsTransfers) }
    def inbound_real_time_payments_transfers
    end

    sig { returns(Increase::Resources::CheckDeposits) }
    def check_deposits
    end

    sig { returns(Increase::Resources::Lockboxes) }
    def lockboxes
    end

    sig { returns(Increase::Resources::InboundMailItems) }
    def inbound_mail_items
    end

    sig { returns(Increase::Resources::RoutingNumbers) }
    def routing_numbers
    end

    sig { returns(Increase::Resources::ExternalAccounts) }
    def external_accounts
    end

    sig { returns(Increase::Resources::Entities) }
    def entities
    end

    sig { returns(Increase::Resources::SupplementalDocuments) }
    def supplemental_documents
    end

    sig { returns(Increase::Resources::Programs) }
    def programs
    end

    sig { returns(Increase::Resources::ProofOfAuthorizationRequests) }
    def proof_of_authorization_requests
    end

    sig { returns(Increase::Resources::ProofOfAuthorizationRequestSubmissions) }
    def proof_of_authorization_request_submissions
    end

    sig { returns(Increase::Resources::AccountStatements) }
    def account_statements
    end

    sig { returns(Increase::Resources::Files) }
    def files
    end

    sig { returns(Increase::Resources::Documents) }
    def documents
    end

    sig { returns(Increase::Resources::Exports) }
    def exports
    end

    sig { returns(Increase::Resources::Events) }
    def events
    end

    sig { returns(Increase::Resources::EventSubscriptions) }
    def event_subscriptions
    end

    sig { returns(Increase::Resources::RealTimeDecisions) }
    def real_time_decisions
    end

    sig { returns(Increase::Resources::BookkeepingAccounts) }
    def bookkeeping_accounts
    end

    sig { returns(Increase::Resources::BookkeepingEntrySets) }
    def bookkeeping_entry_sets
    end

    sig { returns(Increase::Resources::BookkeepingEntries) }
    def bookkeeping_entries
    end

    sig { returns(Increase::Resources::Groups) }
    def groups
    end

    sig { returns(Increase::Resources::OAuthApplications) }
    def oauth_applications
    end

    sig { returns(Increase::Resources::OAuthConnections) }
    def oauth_connections
    end

    sig { returns(Increase::Resources::OAuthTokens) }
    def oauth_tokens
    end

    sig { returns(Increase::Resources::IntrafiAccountEnrollments) }
    def intrafi_account_enrollments
    end

    sig { returns(Increase::Resources::IntrafiBalances) }
    def intrafi_balances
    end

    sig { returns(Increase::Resources::IntrafiExclusions) }
    def intrafi_exclusions
    end

    sig { returns(Increase::Resources::RealTimePaymentsRequestForPayments) }
    def real_time_payments_request_for_payments
    end

    sig { returns(Increase::Resources::Simulations) }
    def simulations
    end

    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig do
      params(
          environment: NilClass,
          base_url: T.nilable(String),
          api_key: T.nilable(String),
          max_retries: Integer,
          timeout: Float,
          initial_retry_delay: Float,
          max_retry_delay: Float,
          idempotency_header: String
        )
        .void
    end
    def initialize(
      environment: nil,
      base_url: nil,
      api_key: ENV["INCREASE_API_KEY"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
    end
  end
end
