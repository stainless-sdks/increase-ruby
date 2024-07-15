# frozen_string_literal: true

module Increase
  module Models
    class InboundACHTransfer < BaseModel
      # @!attribute [rw] id
      #   The inbound ACH transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] acceptance
      #   If your transfer is accepted, this will contain details of the acceptance.
      #   @return [Increase::Models::InboundACHTransfer::Acceptance]
      required :acceptance, -> { Increase::Models::InboundACHTransfer::Acceptance }

      # @!attribute [rw] account_id
      #   The Account to which the transfer belongs.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number_id
      #   The identifier of the Account Number to which this transfer was sent.
      #   @return [String]
      required :account_number_id, String

      # @!attribute [rw] addenda
      #   Additional information sent from the originator.
      #   @return [Increase::Models::InboundACHTransfer::Addenda]
      required :addenda, -> { Increase::Models::InboundACHTransfer::Addenda }

      # @!attribute [rw] amount
      #   The transfer amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] automatically_resolves_at
      #   The time at which the transfer will be automatically resolved.
      #   @return [String]
      required :automatically_resolves_at, String

      # @!attribute [rw] decline
      #   If your transfer is declined, this will contain details of the decline.
      #   @return [Increase::Models::InboundACHTransfer::Decline]
      required :decline, -> { Increase::Models::InboundACHTransfer::Decline }

      # @!attribute [rw] direction
      #   The direction of the transfer.
      #   @return [Symbol]
      required :direction, Increase::Enum.new(:credit, :debit)

      # @!attribute [rw] notification_of_change
      #   If you initiate a notification of change in response to the transfer, this will contain its details.
      #   @return [Increase::Models::InboundACHTransfer::NotificationOfChange]
      required :notification_of_change, -> { Increase::Models::InboundACHTransfer::NotificationOfChange }

      # @!attribute [rw] originator_company_descriptive_date
      #   The descriptive date of the transfer.
      #   @return [String]
      required :originator_company_descriptive_date, String

      # @!attribute [rw] originator_company_discretionary_data
      #   The additional information included with the transfer.
      #   @return [String]
      required :originator_company_discretionary_data, String

      # @!attribute [rw] originator_company_entry_description
      #   The description of the transfer.
      #   @return [String]
      required :originator_company_entry_description, String

      # @!attribute [rw] originator_company_id
      #   The id of the company that initiated the transfer.
      #   @return [String]
      required :originator_company_id, String

      # @!attribute [rw] originator_company_name
      #   The name of the company that initiated the transfer.
      #   @return [String]
      required :originator_company_name, String

      # @!attribute [rw] originator_routing_number
      #   The American Banking Association (ABA) routing number of the bank originating the transfer.
      #   @return [String]
      required :originator_routing_number, String

      # @!attribute [rw] receiver_id_number
      #   The id of the receiver of the transfer.
      #   @return [String]
      required :receiver_id_number, String

      # @!attribute [rw] receiver_name
      #   The name of the receiver of the transfer.
      #   @return [String]
      required :receiver_name, String

      # @!attribute [rw] standard_entry_class_code
      #   The Standard Entry Class (SEC) code of the transfer.
      #   @return [Symbol]
      required :standard_entry_class_code,
               Increase::Enum.new(
                 :corporate_credit_or_debit,
                 :corporate_trade_exchange,
                 :prearranged_payments_and_deposit,
                 :internet_initiated,
                 :point_of_sale,
                 :telephone_initiated,
                 :customer_initiated,
                 :accounts_receivable,
                 :machine_transfer,
                 :shared_network_transaction,
                 :represented_check,
                 :back_office_conversion,
                 :point_of_purchase,
                 :check_truncation,
                 :destroyed_check
               )

      # @!attribute [rw] status
      #   The status of the transfer.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :declined, :accepted, :returned)

      # @!attribute [rw] trace_number
      #   The trace number of the transfer.
      #   @return [String]
      required :trace_number, String

      # @!attribute [rw] transfer_return
      #   If your transfer is returned, this will contain details of the return.
      #   @return [Increase::Models::InboundACHTransfer::TransferReturn]
      required :transfer_return, -> { Increase::Models::InboundACHTransfer::TransferReturn }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_ach_transfer`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_ach_transfer)

      class Acceptance < BaseModel
        # @!attribute [rw] accepted_at
        #   The time at which the transfer was accepted.
        #   @return [String]
        required :accepted_at, String

        # @!attribute [rw] transaction_id
        #   The id of the transaction for the accepted transfer.
        #   @return [String]
        required :transaction_id, String
      end

      class Addenda < BaseModel
        # @!attribute [rw] category
        #   The type of addendum.
        #   @return [Symbol]
        required :category, Increase::Enum.new(:freeform)

        # @!attribute [rw] freeform
        #   Unstructured `payment_related_information` passed through by the originator.
        #   @return [Increase::Models::InboundACHTransfer::Addenda::Freeform]
        required :freeform, -> { Increase::Models::InboundACHTransfer::Addenda::Freeform }

        class Freeform < BaseModel
          # @!attribute [rw] entries
          #   Each entry represents an addendum received from the originator.
          #   @return [Array<Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry>]
          required :entries,
                   Increase::ArrayOf.new(-> { Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry })

          class Entry < BaseModel
            # @!attribute [rw] payment_related_information
            #   The payment related information passed in the addendum.
            #   @return [String]
            required :payment_related_information, String
          end
        end
      end

      class Decline < BaseModel
        # @!attribute [rw] declined_at
        #   The time at which the transfer was declined.
        #   @return [String]
        required :declined_at, String

        # @!attribute [rw] declined_transaction_id
        #   The id of the transaction for the declined transfer.
        #   @return [String]
        required :declined_transaction_id, String

        # @!attribute [rw] reason
        #   The reason for the transfer decline.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :ach_route_canceled,
                   :ach_route_disabled,
                   :breaches_limit,
                   :credit_entry_refused_by_receiver,
                   :duplicate_return,
                   :entity_not_active,
                   :field_error,
                   :group_locked,
                   :insufficient_funds,
                   :misrouted_return,
                   :return_of_erroneous_or_reversing_debit,
                   :no_ach_route,
                   :originator_request,
                   :transaction_not_allowed,
                   :user_initiated
                 )
      end

      class NotificationOfChange < BaseModel
        # @!attribute [rw] updated_account_number
        #   The new account number provided in the notification of change.
        #   @return [String]
        required :updated_account_number, String

        # @!attribute [rw] updated_routing_number
        #   The new account number provided in the notification of change.
        #   @return [String]
        required :updated_routing_number, String
      end

      class TransferReturn < BaseModel
        # @!attribute [rw] reason
        #   The reason for the transfer return.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :insufficient_funds,
                   :returned_per_odfi_request,
                   :authorization_revoked_by_customer,
                   :payment_stopped,
                   :customer_advised_unauthorized_improper_ineligible_or_incomplete,
                   :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
                   :beneficiary_or_account_holder_deceased,
                   :credit_entry_refused_by_receiver,
                   :duplicate_entry,
                   :corporate_customer_advised_not_authorized
                 )

        # @!attribute [rw] returned_at
        #   The time at which the transfer was returned.
        #   @return [String]
        required :returned_at, String

        # @!attribute [rw] transaction_id
        #   The id of the transaction for the returned transfer.
        #   @return [String]
        required :transaction_id, String
      end
    end
  end
end
