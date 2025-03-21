# typed: strong

module Increase
  module Resources
    class Simulations
      sig { returns(Increase::Resources::Simulations::InterestPayments) }
      def interest_payments
      end

      sig { returns(Increase::Resources::Simulations::CardAuthorizations) }
      def card_authorizations
      end

      sig { returns(Increase::Resources::Simulations::CardAuthorizationExpirations) }
      def card_authorization_expirations
      end

      sig { returns(Increase::Resources::Simulations::CardSettlements) }
      def card_settlements
      end

      sig { returns(Increase::Resources::Simulations::CardReversals) }
      def card_reversals
      end

      sig { returns(Increase::Resources::Simulations::CardIncrements) }
      def card_increments
      end

      sig { returns(Increase::Resources::Simulations::CardFuelConfirmations) }
      def card_fuel_confirmations
      end

      sig { returns(Increase::Resources::Simulations::CardRefunds) }
      def card_refunds
      end

      sig { returns(Increase::Resources::Simulations::CardDisputes) }
      def card_disputes
      end

      sig { returns(Increase::Resources::Simulations::PhysicalCards) }
      def physical_cards
      end

      sig { returns(Increase::Resources::Simulations::DigitalWalletTokenRequests) }
      def digital_wallet_token_requests
      end

      sig { returns(Increase::Resources::Simulations::InboundFundsHolds) }
      def inbound_funds_holds
      end

      sig { returns(Increase::Resources::Simulations::AccountTransfers) }
      def account_transfers
      end

      sig { returns(Increase::Resources::Simulations::ACHTransfers) }
      def ach_transfers
      end

      sig { returns(Increase::Resources::Simulations::InboundACHTransfers) }
      def inbound_ach_transfers
      end

      sig { returns(Increase::Resources::Simulations::WireTransfers) }
      def wire_transfers
      end

      sig { returns(Increase::Resources::Simulations::InboundWireTransfers) }
      def inbound_wire_transfers
      end

      sig { returns(Increase::Resources::Simulations::InboundWireDrawdownRequests) }
      def inbound_wire_drawdown_requests
      end

      sig { returns(Increase::Resources::Simulations::CheckTransfers) }
      def check_transfers
      end

      sig { returns(Increase::Resources::Simulations::InboundCheckDeposits) }
      def inbound_check_deposits
      end

      sig { returns(Increase::Resources::Simulations::RealTimePaymentsTransfers) }
      def real_time_payments_transfers
      end

      sig { returns(Increase::Resources::Simulations::InboundRealTimePaymentsTransfers) }
      def inbound_real_time_payments_transfers
      end

      sig { returns(Increase::Resources::Simulations::CheckDeposits) }
      def check_deposits
      end

      sig { returns(Increase::Resources::Simulations::InboundMailItems) }
      def inbound_mail_items
      end

      sig { returns(Increase::Resources::Simulations::Programs) }
      def programs
      end

      sig { returns(Increase::Resources::Simulations::AccountStatements) }
      def account_statements
      end

      sig { returns(Increase::Resources::Simulations::Documents) }
      def documents
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
