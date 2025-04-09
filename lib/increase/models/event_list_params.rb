# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Events#list
    class EventListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] associated_object_id
      #   #/paths//events/get/parameters/7/schema
      #
      #   @return [String, nil]
      optional :associated_object_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :associated_object_id

      # @!attribute [r] category
      #
      #   @return [Increase::Models::EventListParams::Category, nil]
      optional :category, -> { Increase::Models::EventListParams::Category }

      # @!parse
      #   # @return [Increase::Models::EventListParams::Category]
      #   attr_writer :category

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::EventListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::EventListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::EventListParams::CreatedAt]
      #   attr_writer :created_at

      # @!attribute [r] cursor
      #   #/paths//events/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] limit
      #   #/paths//events/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!parse
      #   # @param associated_object_id [String]
      #   # @param category [Increase::Models::EventListParams::Category]
      #   # @param created_at [Increase::Models::EventListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     associated_object_id: nil,
      #     category: nil,
      #     created_at: nil,
      #     cursor: nil,
      #     limit: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Category < Increase::Internal::Type::BaseModel
        # @!attribute [r] in_
        #   #/paths//events/get/parameters/6/schema
        #
        #   @return [Array<Symbol, Increase::Models::EventListParams::Category::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::EventListParams::Category::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::EventListParams::Category::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::EventListParams::Category::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/paths//events/get/parameters/6/schema/items
        module In
          extend Increase::Internal::Type::Enum

          # Occurs whenever an Account is created.
          ACCOUNT_CREATED = :"account.created"

          # Occurs whenever an Account is updated.
          ACCOUNT_UPDATED = :"account.updated"

          # Occurs whenever an Account Number is created.
          ACCOUNT_NUMBER_CREATED = :"account_number.created"

          # Occurs whenever an Account Number is updated.
          ACCOUNT_NUMBER_UPDATED = :"account_number.updated"

          # Occurs whenever an Account Statement is created.
          ACCOUNT_STATEMENT_CREATED = :"account_statement.created"

          # Occurs whenever an Account Transfer is created.
          ACCOUNT_TRANSFER_CREATED = :"account_transfer.created"

          # Occurs whenever an Account Transfer is updated.
          ACCOUNT_TRANSFER_UPDATED = :"account_transfer.updated"

          # Occurs whenever an ACH Prenotification is created.
          ACH_PRENOTIFICATION_CREATED = :"ach_prenotification.created"

          # Occurs whenever an ACH Prenotification is updated.
          ACH_PRENOTIFICATION_UPDATED = :"ach_prenotification.updated"

          # Occurs whenever an ACH Transfer is created.
          ACH_TRANSFER_CREATED = :"ach_transfer.created"

          # Occurs whenever an ACH Transfer is updated.
          ACH_TRANSFER_UPDATED = :"ach_transfer.updated"

          # Occurs whenever a Bookkeeping Account is created.
          BOOKKEEPING_ACCOUNT_CREATED = :"bookkeeping_account.created"

          # Occurs whenever a Bookkeeping Account is updated.
          BOOKKEEPING_ACCOUNT_UPDATED = :"bookkeeping_account.updated"

          # Occurs whenever a Bookkeeping Entry Set is created.
          BOOKKEEPING_ENTRY_SET_UPDATED = :"bookkeeping_entry_set.updated"

          # Occurs whenever a Card is created.
          CARD_CREATED = :"card.created"

          # Occurs whenever a Card is updated.
          CARD_UPDATED = :"card.updated"

          # Occurs whenever a Card Payment is created.
          CARD_PAYMENT_CREATED = :"card_payment.created"

          # Occurs whenever a Card Payment is updated.
          CARD_PAYMENT_UPDATED = :"card_payment.updated"

          # Occurs whenever a Card Profile is created.
          CARD_PROFILE_CREATED = :"card_profile.created"

          # Occurs whenever a Card Profile is updated.
          CARD_PROFILE_UPDATED = :"card_profile.updated"

          # Occurs whenever a Card Dispute is created.
          CARD_DISPUTE_CREATED = :"card_dispute.created"

          # Occurs whenever a Card Dispute is updated.
          CARD_DISPUTE_UPDATED = :"card_dispute.updated"

          # Occurs whenever a Check Deposit is created.
          CHECK_DEPOSIT_CREATED = :"check_deposit.created"

          # Occurs whenever a Check Deposit is updated.
          CHECK_DEPOSIT_UPDATED = :"check_deposit.updated"

          # Occurs whenever a Check Transfer is created.
          CHECK_TRANSFER_CREATED = :"check_transfer.created"

          # Occurs whenever a Check Transfer is updated.
          CHECK_TRANSFER_UPDATED = :"check_transfer.updated"

          # Occurs whenever a Declined Transaction is created.
          DECLINED_TRANSACTION_CREATED = :"declined_transaction.created"

          # Occurs whenever a Digital Card Profile is created.
          DIGITAL_CARD_PROFILE_CREATED = :"digital_card_profile.created"

          # Occurs whenever a Digital Card Profile is updated.
          DIGITAL_CARD_PROFILE_UPDATED = :"digital_card_profile.updated"

          # Occurs whenever a Digital Wallet Token is created.
          DIGITAL_WALLET_TOKEN_CREATED = :"digital_wallet_token.created"

          # Occurs whenever a Digital Wallet Token is updated.
          DIGITAL_WALLET_TOKEN_UPDATED = :"digital_wallet_token.updated"

          # Occurs whenever a Document is created.
          DOCUMENT_CREATED = :"document.created"

          # Occurs whenever an Entity is created.
          ENTITY_CREATED = :"entity.created"

          # Occurs whenever an Entity is updated.
          ENTITY_UPDATED = :"entity.updated"

          # Occurs whenever an Event Subscription is created.
          EVENT_SUBSCRIPTION_CREATED = :"event_subscription.created"

          # Occurs whenever an Event Subscription is updated.
          EVENT_SUBSCRIPTION_UPDATED = :"event_subscription.updated"

          # Occurs whenever an Export is created.
          EXPORT_CREATED = :"export.created"

          # Occurs whenever an Export is updated.
          EXPORT_UPDATED = :"export.updated"

          # Occurs whenever an External Account is created.
          EXTERNAL_ACCOUNT_CREATED = :"external_account.created"

          # Occurs whenever an External Account is updated.
          EXTERNAL_ACCOUNT_UPDATED = :"external_account.updated"

          # Occurs whenever a File is created.
          FILE_CREATED = :"file.created"

          # Occurs whenever a Group is updated.
          GROUP_UPDATED = :"group.updated"

          # Increase may send webhooks with this category to see if a webhook endpoint is working properly.
          GROUP_HEARTBEAT = :"group.heartbeat"

          # Occurs whenever an Inbound ACH Transfer is created.
          INBOUND_ACH_TRANSFER_CREATED = :"inbound_ach_transfer.created"

          # Occurs whenever an Inbound ACH Transfer is updated.
          INBOUND_ACH_TRANSFER_UPDATED = :"inbound_ach_transfer.updated"

          # Occurs whenever an Inbound ACH Transfer Return is created.
          INBOUND_ACH_TRANSFER_RETURN_CREATED = :"inbound_ach_transfer_return.created"

          # Occurs whenever an Inbound ACH Transfer Return is updated.
          INBOUND_ACH_TRANSFER_RETURN_UPDATED = :"inbound_ach_transfer_return.updated"

          # Occurs whenever an Inbound Check Deposit is created.
          INBOUND_CHECK_DEPOSIT_CREATED = :"inbound_check_deposit.created"

          # Occurs whenever an Inbound Check Deposit is updated.
          INBOUND_CHECK_DEPOSIT_UPDATED = :"inbound_check_deposit.updated"

          # Occurs whenever an Inbound Mail Item is created.
          INBOUND_MAIL_ITEM_CREATED = :"inbound_mail_item.created"

          # Occurs whenever an Inbound Mail Item is updated.
          INBOUND_MAIL_ITEM_UPDATED = :"inbound_mail_item.updated"

          # Occurs whenever an Inbound Real-Time Payments Transfer is created.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_CREATED = :"inbound_real_time_payments_transfer.created"

          # Occurs whenever an Inbound Real-Time Payments Transfer is updated.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_UPDATED = :"inbound_real_time_payments_transfer.updated"

          # Occurs whenever an Inbound Wire Drawdown Request is created.
          INBOUND_WIRE_DRAWDOWN_REQUEST_CREATED = :"inbound_wire_drawdown_request.created"

          # Occurs whenever an Inbound Wire Transfer is created.
          INBOUND_WIRE_TRANSFER_CREATED = :"inbound_wire_transfer.created"

          # Occurs whenever an Inbound Wire Transfer is updated.
          INBOUND_WIRE_TRANSFER_UPDATED = :"inbound_wire_transfer.updated"

          # Occurs whenever an IntraFi Account Enrollment is created.
          INTRAFI_ACCOUNT_ENROLLMENT_CREATED = :"intrafi_account_enrollment.created"

          # Occurs whenever an IntraFi Account Enrollment is updated.
          INTRAFI_ACCOUNT_ENROLLMENT_UPDATED = :"intrafi_account_enrollment.updated"

          # Occurs whenever an IntraFi Exclusion is created.
          INTRAFI_EXCLUSION_CREATED = :"intrafi_exclusion.created"

          # Occurs whenever an IntraFi Exclusion is updated.
          INTRAFI_EXCLUSION_UPDATED = :"intrafi_exclusion.updated"

          # Occurs whenever a Lockbox is created.
          LOCKBOX_CREATED = :"lockbox.created"

          # Occurs whenever a Lockbox is updated.
          LOCKBOX_UPDATED = :"lockbox.updated"

          # Occurs whenever an OAuth Connection is created.
          OAUTH_CONNECTION_CREATED = :"oauth_connection.created"

          # Occurs whenever an OAuth Connection is deactivated.
          OAUTH_CONNECTION_DEACTIVATED = :"oauth_connection.deactivated"

          # Occurs whenever a Pending Transaction is created.
          PENDING_TRANSACTION_CREATED = :"pending_transaction.created"

          # Occurs whenever a Pending Transaction is updated.
          PENDING_TRANSACTION_UPDATED = :"pending_transaction.updated"

          # Occurs whenever a Physical Card is created.
          PHYSICAL_CARD_CREATED = :"physical_card.created"

          # Occurs whenever a Physical Card is updated.
          PHYSICAL_CARD_UPDATED = :"physical_card.updated"

          # Occurs whenever a Physical Card Profile is created.
          PHYSICAL_CARD_PROFILE_CREATED = :"physical_card_profile.created"

          # Occurs whenever a Physical Card Profile is updated.
          PHYSICAL_CARD_PROFILE_UPDATED = :"physical_card_profile.updated"

          # Occurs whenever a Proof of Authorization Request is created.
          PROOF_OF_AUTHORIZATION_REQUEST_CREATED = :"proof_of_authorization_request.created"

          # Occurs whenever a Proof of Authorization Request is updated.
          PROOF_OF_AUTHORIZATION_REQUEST_UPDATED = :"proof_of_authorization_request.updated"

          # Occurs whenever a Proof of Authorization Request Submission is created.
          PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION_CREATED = :"proof_of_authorization_request_submission.created"

          # Occurs whenever a Proof of Authorization Request Submission is updated.
          PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION_UPDATED = :"proof_of_authorization_request_submission.updated"

          # Occurs whenever a Real-Time Decision is created in response to a card authorization.
          REAL_TIME_DECISION_CARD_AUTHORIZATION_REQUESTED = :"real_time_decision.card_authorization_requested"

          # Occurs whenever a Real-Time Decision is created in response to a digital wallet provisioning attempt.
          REAL_TIME_DECISION_DIGITAL_WALLET_TOKEN_REQUESTED = :"real_time_decision.digital_wallet_token_requested"

          # Occurs whenever a Real-Time Decision is created in response to a digital wallet requiring two-factor authentication.
          REAL_TIME_DECISION_DIGITAL_WALLET_AUTHENTICATION_REQUESTED =
            :"real_time_decision.digital_wallet_authentication_requested"

          # Occurs whenever a Real-Time Decision is created in response to 3DS authentication.
          REAL_TIME_DECISION_CARD_AUTHENTICATION_REQUESTED = :"real_time_decision.card_authentication_requested"

          # Occurs whenever a Real-Time Decision is created in response to 3DS authentication challenges.
          REAL_TIME_DECISION_CARD_AUTHENTICATION_CHALLENGE_REQUESTED =
            :"real_time_decision.card_authentication_challenge_requested"

          # Occurs whenever a Real-Time Payments Transfer is created.
          REAL_TIME_PAYMENTS_TRANSFER_CREATED = :"real_time_payments_transfer.created"

          # Occurs whenever a Real-Time Payments Transfer is updated.
          REAL_TIME_PAYMENTS_TRANSFER_UPDATED = :"real_time_payments_transfer.updated"

          # Occurs whenever a Real-Time Payments Request for Payment is created.
          REAL_TIME_PAYMENTS_REQUEST_FOR_PAYMENT_CREATED = :"real_time_payments_request_for_payment.created"

          # Occurs whenever a Real-Time Payments Request for Payment is updated.
          REAL_TIME_PAYMENTS_REQUEST_FOR_PAYMENT_UPDATED = :"real_time_payments_request_for_payment.updated"

          # Occurs whenever a Transaction is created.
          TRANSACTION_CREATED = :"transaction.created"

          # Occurs whenever a Wire Drawdown Request is created.
          WIRE_DRAWDOWN_REQUEST_CREATED = :"wire_drawdown_request.created"

          # Occurs whenever a Wire Drawdown Request is updated.
          WIRE_DRAWDOWN_REQUEST_UPDATED = :"wire_drawdown_request.updated"

          # Occurs whenever a Wire Transfer is created.
          WIRE_TRANSFER_CREATED = :"wire_transfer.created"

          # Occurs whenever a Wire Transfer is updated.
          WIRE_TRANSFER_UPDATED = :"wire_transfer.updated"

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # @!attribute [r] after
        #   #/paths//events/get/parameters/2/schema
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   #/paths//events/get/parameters/3/schema
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   #/paths//events/get/parameters/4/schema
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   #/paths//events/get/parameters/5/schema
        #
        #   @return [Time, nil]
        optional :on_or_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_before

        # @!parse
        #   # @param after [Time]
        #   # @param before [Time]
        #   # @param on_or_after [Time]
        #   # @param on_or_before [Time]
        #   #
        #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
