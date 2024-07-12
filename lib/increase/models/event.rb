# frozen_string_literal: true

module Increase
  module Models
    class Event < BaseModel
      # @!attribute [rw] id
      #   The Event identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] associated_object_id
      #   The identifier of the object that generated this Event.
      #   @return [String]
      required :associated_object_id, String

      # @!attribute [rw] associated_object_type
      #   The type of the object that generated this Event.
      #   @return [String]
      required :associated_object_type, String

      # @!attribute [rw] category
      #   The category of the Event. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
      #   @return [Symbol]
      required :category,
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

      # @!attribute [rw] created_at
      #   The time the Event was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `event`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:event)
    end
  end
end
