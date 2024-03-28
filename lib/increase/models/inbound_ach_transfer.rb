# frozen_string_literal: true

module Increase
  module Models
    class InboundACHTransfer < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] acceptance
      required :acceptance, -> { Increase::Models::InboundACHTransfer::Acceptance }

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] account_number_id
      required :account_number_id, String

      # @!attribute [rw] addenda
      required :addenda, -> { Increase::Models::InboundACHTransfer::Addenda }

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] automatically_resolves_at
      required :automatically_resolves_at, String

      # @!attribute [rw] decline
      required :decline, -> { Increase::Models::InboundACHTransfer::Decline }

      # @!attribute [rw] direction
      required :direction, Increase::Enum.new([:credit, :debit])

      # @!attribute [rw] notification_of_change
      required :notification_of_change,
               lambda {
                 Increase::Models::InboundACHTransfer::NotificationOfChange
               }

      # @!attribute [rw] originator_company_descriptive_date
      required :originator_company_descriptive_date, String

      # @!attribute [rw] originator_company_discretionary_data
      required :originator_company_discretionary_data, String

      # @!attribute [rw] originator_company_entry_description
      required :originator_company_entry_description, String

      # @!attribute [rw] originator_company_id
      required :originator_company_id, String

      # @!attribute [rw] originator_company_name
      required :originator_company_name, String

      # @!attribute [rw] originator_routing_number
      required :originator_routing_number, String

      # @!attribute [rw] receiver_id_number
      required :receiver_id_number, String

      # @!attribute [rw] receiver_name
      required :receiver_name, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending, :declined, :accepted, :returned])

      # @!attribute [rw] trace_number
      required :trace_number, String

      # @!attribute [rw] transfer_return
      required :transfer_return, -> { Increase::Models::InboundACHTransfer::TransferReturn }

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:inbound_ach_transfer])

      class Acceptance < BaseModel
        # @!attribute [rw] accepted_at
        required :accepted_at, String

        # @!attribute [rw] transaction_id
        required :transaction_id, String
      end

      class Addenda < BaseModel
        # @!attribute [rw] category
        required :category, Increase::Enum.new([:freeform])

        # @!attribute [rw] freeform
        required :freeform, -> { Increase::Models::InboundACHTransfer::Addenda::Freeform }

        class Freeform < BaseModel
          # @!attribute [rw] entries
          required :entries,
                   Increase::ArrayOf.new(
                     lambda {
                       Increase::Models::InboundACHTransfer::Addenda::Freeform::Entries
                     }
                   )

          class Entries < BaseModel
            # @!attribute [rw] payment_related_information
            required :payment_related_information, String
          end
        end
      end

      class Decline < BaseModel
        # @!attribute [rw] declined_at
        required :declined_at, String

        # @!attribute [rw] declined_transaction_id
        required :declined_transaction_id, String

        # @!attribute [rw] reason
        required :reason,
                 Increase::Enum.new(
                   [
                     :ach_route_canceled,
                     :ach_route_disabled,
                     :breaches_limit,
                     :credit_entry_refused_by_receiver,
                     :duplicate_return,
                     :entity_not_active,
                     :group_locked,
                     :insufficient_funds,
                     :misrouted_return,
                     :return_of_erroneous_or_reversing_debit,
                     :no_ach_route,
                     :originator_request,
                     :transaction_not_allowed,
                     :user_initiated
                   ]
                 )
      end

      class NotificationOfChange < BaseModel
        # @!attribute [rw] updated_account_number
        required :updated_account_number, String

        # @!attribute [rw] updated_routing_number
        required :updated_routing_number, String
      end

      class TransferReturn < BaseModel
        # @!attribute [rw] reason
        required :reason,
                 Increase::Enum.new(
                   [
                     :returned_per_odfi_request,
                     :authorization_revoked_by_customer,
                     :payment_stopped,
                     :customer_advised_unauthorized_improper_ineligible_or_incomplete,
                     :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
                     :beneficiary_or_account_holder_deceased,
                     :credit_entry_refused_by_receiver,
                     :duplicate_entry,
                     :corporate_customer_advised_not_authorized
                   ]
                 )

        # @!attribute [rw] returned_at
        required :returned_at, String

        # @!attribute [rw] transaction_id
        required :transaction_id, String
      end
    end
  end
end
