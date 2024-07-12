# frozen_string_literal: true

module Increase
  module Models
    class EventSubscription < BaseModel
      # @!attribute [rw] id
      #   The event subscription identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   The time the event subscription was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] oauth_connection_id
      #   If specified, this subscription will only receive webhooks for Events associated with this OAuth Connection.
      #   @return [String]
      required :oauth_connection_id, String

      # @!attribute [rw] selected_event_category
      #   If specified, this subscription will only receive webhooks for Events with the specified `category`.
      #   @return [Symbol]
      required :selected_event_category,
               Increase::Enum.new(
                 :'account.created',
                 :'account.updated',
                 :'account_number.created',
                 :'account_number.updated',
                 :'account_statement.created',
                 :'account_transfer.created',
                 :'account_transfer.updated',
                 :'ach_prenotification.created',
                 :'ach_prenotification.updated',
                 :'ach_transfer.created',
                 :'ach_transfer.updated',
                 :'bookkeeping_account.created',
                 :'bookkeeping_account.updated',
                 :'bookkeeping_entry_set.updated',
                 :'card.created',
                 :'card.updated',
                 :'card_payment.created',
                 :'card_payment.updated',
                 :'card_profile.created',
                 :'card_profile.updated',
                 :'card_dispute.created',
                 :'card_dispute.updated',
                 :'check_deposit.created',
                 :'check_deposit.updated',
                 :'check_transfer.created',
                 :'check_transfer.updated',
                 :'declined_transaction.created',
                 :'digital_card_profile.created',
                 :'digital_card_profile.updated',
                 :'digital_wallet_token.created',
                 :'digital_wallet_token.updated',
                 :'document.created',
                 :'entity.created',
                 :'entity.updated',
                 :'event_subscription.created',
                 :'event_subscription.updated',
                 :'export.created',
                 :'export.updated',
                 :'external_account.created',
                 :'external_account.updated',
                 :'file.created',
                 :'group.updated',
                 :'group.heartbeat',
                 :'inbound_ach_transfer.created',
                 :'inbound_ach_transfer.updated',
                 :'inbound_ach_transfer_return.created',
                 :'inbound_ach_transfer_return.updated',
                 :'inbound_check_deposit.created',
                 :'inbound_check_deposit.updated',
                 :'inbound_mail_item.created',
                 :'inbound_mail_item.updated',
                 :'inbound_wire_drawdown_request.created',
                 :'inbound_wire_transfer.created',
                 :'inbound_wire_transfer.updated',
                 :'intrafi_account_enrollment.created',
                 :'intrafi_account_enrollment.updated',
                 :'intrafi_exclusion.created',
                 :'intrafi_exclusion.updated',
                 :'lockbox.created',
                 :'lockbox.updated',
                 :'oauth_connection.created',
                 :'oauth_connection.deactivated',
                 :'pending_transaction.created',
                 :'pending_transaction.updated',
                 :'physical_card.created',
                 :'physical_card.updated',
                 :'physical_card_profile.created',
                 :'physical_card_profile.updated',
                 :'proof_of_authorization_request.created',
                 :'proof_of_authorization_request.updated',
                 :'proof_of_authorization_request_submission.created',
                 :'proof_of_authorization_request_submission.updated',
                 :'real_time_decision.card_authorization_requested',
                 :'real_time_decision.digital_wallet_token_requested',
                 :'real_time_decision.digital_wallet_authentication_requested',
                 :'real_time_payments_transfer.created',
                 :'real_time_payments_transfer.updated',
                 :'real_time_payments_request_for_payment.created',
                 :'real_time_payments_request_for_payment.updated',
                 :'transaction.created',
                 :'wire_drawdown_request.created',
                 :'wire_drawdown_request.updated',
                 :'wire_transfer.created',
                 :'wire_transfer.updated'
               )

      # @!attribute [rw] status
      #   This indicates if we'll send notifications to this subscription.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:active, :disabled, :deleted, :requires_attention)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `event_subscription`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:event_subscription)

      # @!attribute [rw] url
      #   The webhook url where we'll send notifications.
      #   @return [String]
      required :url, String
    end
  end
end
