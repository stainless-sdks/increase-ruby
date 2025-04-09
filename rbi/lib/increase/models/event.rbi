# typed: strong

module Increase
  module Models
    class Event < Increase::Internal::Type::BaseModel
      # #/components/schemas/event/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/event/properties/associated_object_id
      sig { returns(String) }
      attr_accessor :associated_object_id

      # #/components/schemas/event/properties/associated_object_type
      sig { returns(String) }
      attr_accessor :associated_object_type

      # #/components/schemas/event/properties/category
      sig { returns(Increase::Models::Event::Category::TaggedSymbol) }
      attr_accessor :category

      # #/components/schemas/event/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/event/properties/type
      sig { returns(Increase::Models::Event::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/event
      sig do
        params(
          id: String,
          associated_object_id: String,
          associated_object_type: String,
          category: Increase::Models::Event::Category::OrSymbol,
          created_at: Time,
          type: Increase::Models::Event::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, associated_object_id:, associated_object_type:, category:, created_at:, type:); end

      sig do
        override
          .returns(
            {
              id: String,
              associated_object_id: String,
              associated_object_type: String,
              category: Increase::Models::Event::Category::TaggedSymbol,
              created_at: Time,
              type: Increase::Models::Event::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/event/properties/category
      module Category
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Event::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Event::Category::TaggedSymbol) }

        # Occurs whenever an Account is created.
        ACCOUNT_CREATED = T.let(:"account.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Account is updated.
        ACCOUNT_UPDATED = T.let(:"account.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Account Number is created.
        ACCOUNT_NUMBER_CREATED =
          T.let(:"account_number.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Account Number is updated.
        ACCOUNT_NUMBER_UPDATED =
          T.let(:"account_number.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Account Statement is created.
        ACCOUNT_STATEMENT_CREATED =
          T.let(:"account_statement.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Account Transfer is created.
        ACCOUNT_TRANSFER_CREATED =
          T.let(:"account_transfer.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Account Transfer is updated.
        ACCOUNT_TRANSFER_UPDATED =
          T.let(:"account_transfer.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an ACH Prenotification is created.
        ACH_PRENOTIFICATION_CREATED =
          T.let(:"ach_prenotification.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an ACH Prenotification is updated.
        ACH_PRENOTIFICATION_UPDATED =
          T.let(:"ach_prenotification.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an ACH Transfer is created.
        ACH_TRANSFER_CREATED = T.let(:"ach_transfer.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an ACH Transfer is updated.
        ACH_TRANSFER_UPDATED = T.let(:"ach_transfer.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Bookkeeping Account is created.
        BOOKKEEPING_ACCOUNT_CREATED =
          T.let(:"bookkeeping_account.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Bookkeeping Account is updated.
        BOOKKEEPING_ACCOUNT_UPDATED =
          T.let(:"bookkeeping_account.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Bookkeeping Entry Set is created.
        BOOKKEEPING_ENTRY_SET_UPDATED =
          T.let(:"bookkeeping_entry_set.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Card is created.
        CARD_CREATED = T.let(:"card.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Card is updated.
        CARD_UPDATED = T.let(:"card.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Card Payment is created.
        CARD_PAYMENT_CREATED = T.let(:"card_payment.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Card Payment is updated.
        CARD_PAYMENT_UPDATED = T.let(:"card_payment.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Card Profile is created.
        CARD_PROFILE_CREATED = T.let(:"card_profile.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Card Profile is updated.
        CARD_PROFILE_UPDATED = T.let(:"card_profile.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Card Dispute is created.
        CARD_DISPUTE_CREATED = T.let(:"card_dispute.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Card Dispute is updated.
        CARD_DISPUTE_UPDATED = T.let(:"card_dispute.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Check Deposit is created.
        CHECK_DEPOSIT_CREATED = T.let(:"check_deposit.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Check Deposit is updated.
        CHECK_DEPOSIT_UPDATED = T.let(:"check_deposit.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Check Transfer is created.
        CHECK_TRANSFER_CREATED =
          T.let(:"check_transfer.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Check Transfer is updated.
        CHECK_TRANSFER_UPDATED =
          T.let(:"check_transfer.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Declined Transaction is created.
        DECLINED_TRANSACTION_CREATED =
          T.let(:"declined_transaction.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Digital Card Profile is created.
        DIGITAL_CARD_PROFILE_CREATED =
          T.let(:"digital_card_profile.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Digital Card Profile is updated.
        DIGITAL_CARD_PROFILE_UPDATED =
          T.let(:"digital_card_profile.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Digital Wallet Token is created.
        DIGITAL_WALLET_TOKEN_CREATED =
          T.let(:"digital_wallet_token.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Digital Wallet Token is updated.
        DIGITAL_WALLET_TOKEN_UPDATED =
          T.let(:"digital_wallet_token.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Document is created.
        DOCUMENT_CREATED = T.let(:"document.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Entity is created.
        ENTITY_CREATED = T.let(:"entity.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Entity is updated.
        ENTITY_UPDATED = T.let(:"entity.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Event Subscription is created.
        EVENT_SUBSCRIPTION_CREATED =
          T.let(:"event_subscription.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Event Subscription is updated.
        EVENT_SUBSCRIPTION_UPDATED =
          T.let(:"event_subscription.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Export is created.
        EXPORT_CREATED = T.let(:"export.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Export is updated.
        EXPORT_UPDATED = T.let(:"export.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an External Account is created.
        EXTERNAL_ACCOUNT_CREATED =
          T.let(:"external_account.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an External Account is updated.
        EXTERNAL_ACCOUNT_UPDATED =
          T.let(:"external_account.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a File is created.
        FILE_CREATED = T.let(:"file.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Group is updated.
        GROUP_UPDATED = T.let(:"group.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Increase may send webhooks with this category to see if a webhook endpoint is working properly.
        GROUP_HEARTBEAT = T.let(:"group.heartbeat", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound ACH Transfer is created.
        INBOUND_ACH_TRANSFER_CREATED =
          T.let(:"inbound_ach_transfer.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound ACH Transfer is updated.
        INBOUND_ACH_TRANSFER_UPDATED =
          T.let(:"inbound_ach_transfer.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound ACH Transfer Return is created.
        INBOUND_ACH_TRANSFER_RETURN_CREATED =
          T.let(:"inbound_ach_transfer_return.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound ACH Transfer Return is updated.
        INBOUND_ACH_TRANSFER_RETURN_UPDATED =
          T.let(:"inbound_ach_transfer_return.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Check Deposit is created.
        INBOUND_CHECK_DEPOSIT_CREATED =
          T.let(:"inbound_check_deposit.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Check Deposit is updated.
        INBOUND_CHECK_DEPOSIT_UPDATED =
          T.let(:"inbound_check_deposit.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Mail Item is created.
        INBOUND_MAIL_ITEM_CREATED =
          T.let(:"inbound_mail_item.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Mail Item is updated.
        INBOUND_MAIL_ITEM_UPDATED =
          T.let(:"inbound_mail_item.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Real-Time Payments Transfer is created.
        INBOUND_REAL_TIME_PAYMENTS_TRANSFER_CREATED =
          T.let(:"inbound_real_time_payments_transfer.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Real-Time Payments Transfer is updated.
        INBOUND_REAL_TIME_PAYMENTS_TRANSFER_UPDATED =
          T.let(:"inbound_real_time_payments_transfer.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Wire Drawdown Request is created.
        INBOUND_WIRE_DRAWDOWN_REQUEST_CREATED =
          T.let(:"inbound_wire_drawdown_request.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Wire Transfer is created.
        INBOUND_WIRE_TRANSFER_CREATED =
          T.let(:"inbound_wire_transfer.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an Inbound Wire Transfer is updated.
        INBOUND_WIRE_TRANSFER_UPDATED =
          T.let(:"inbound_wire_transfer.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an IntraFi Account Enrollment is created.
        INTRAFI_ACCOUNT_ENROLLMENT_CREATED =
          T.let(:"intrafi_account_enrollment.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an IntraFi Account Enrollment is updated.
        INTRAFI_ACCOUNT_ENROLLMENT_UPDATED =
          T.let(:"intrafi_account_enrollment.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an IntraFi Exclusion is created.
        INTRAFI_EXCLUSION_CREATED =
          T.let(:"intrafi_exclusion.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an IntraFi Exclusion is updated.
        INTRAFI_EXCLUSION_UPDATED =
          T.let(:"intrafi_exclusion.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Lockbox is created.
        LOCKBOX_CREATED = T.let(:"lockbox.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Lockbox is updated.
        LOCKBOX_UPDATED = T.let(:"lockbox.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an OAuth Connection is created.
        OAUTH_CONNECTION_CREATED =
          T.let(:"oauth_connection.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever an OAuth Connection is deactivated.
        OAUTH_CONNECTION_DEACTIVATED =
          T.let(:"oauth_connection.deactivated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Pending Transaction is created.
        PENDING_TRANSACTION_CREATED =
          T.let(:"pending_transaction.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Pending Transaction is updated.
        PENDING_TRANSACTION_UPDATED =
          T.let(:"pending_transaction.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Physical Card is created.
        PHYSICAL_CARD_CREATED = T.let(:"physical_card.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Physical Card is updated.
        PHYSICAL_CARD_UPDATED = T.let(:"physical_card.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Physical Card Profile is created.
        PHYSICAL_CARD_PROFILE_CREATED =
          T.let(:"physical_card_profile.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Physical Card Profile is updated.
        PHYSICAL_CARD_PROFILE_UPDATED =
          T.let(:"physical_card_profile.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Proof of Authorization Request is created.
        PROOF_OF_AUTHORIZATION_REQUEST_CREATED =
          T.let(:"proof_of_authorization_request.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Proof of Authorization Request is updated.
        PROOF_OF_AUTHORIZATION_REQUEST_UPDATED =
          T.let(:"proof_of_authorization_request.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Proof of Authorization Request Submission is created.
        PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION_CREATED =
          T.let(
            :"proof_of_authorization_request_submission.created",
            Increase::Models::Event::Category::TaggedSymbol
          )

        # Occurs whenever a Proof of Authorization Request Submission is updated.
        PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION_UPDATED =
          T.let(
            :"proof_of_authorization_request_submission.updated",
            Increase::Models::Event::Category::TaggedSymbol
          )

        # Occurs whenever a Real-Time Decision is created in response to a card authorization.
        REAL_TIME_DECISION_CARD_AUTHORIZATION_REQUESTED =
          T.let(:"real_time_decision.card_authorization_requested", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Real-Time Decision is created in response to a digital wallet provisioning attempt.
        REAL_TIME_DECISION_DIGITAL_WALLET_TOKEN_REQUESTED =
          T.let(
            :"real_time_decision.digital_wallet_token_requested",
            Increase::Models::Event::Category::TaggedSymbol
          )

        # Occurs whenever a Real-Time Decision is created in response to a digital wallet requiring two-factor authentication.
        REAL_TIME_DECISION_DIGITAL_WALLET_AUTHENTICATION_REQUESTED =
          T.let(
            :"real_time_decision.digital_wallet_authentication_requested",
            Increase::Models::Event::Category::TaggedSymbol
          )

        # Occurs whenever a Real-Time Decision is created in response to 3DS authentication.
        REAL_TIME_DECISION_CARD_AUTHENTICATION_REQUESTED =
          T.let(
            :"real_time_decision.card_authentication_requested",
            Increase::Models::Event::Category::TaggedSymbol
          )

        # Occurs whenever a Real-Time Decision is created in response to 3DS authentication challenges.
        REAL_TIME_DECISION_CARD_AUTHENTICATION_CHALLENGE_REQUESTED =
          T.let(
            :"real_time_decision.card_authentication_challenge_requested",
            Increase::Models::Event::Category::TaggedSymbol
          )

        # Occurs whenever a Real-Time Payments Transfer is created.
        REAL_TIME_PAYMENTS_TRANSFER_CREATED =
          T.let(:"real_time_payments_transfer.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Real-Time Payments Transfer is updated.
        REAL_TIME_PAYMENTS_TRANSFER_UPDATED =
          T.let(:"real_time_payments_transfer.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Real-Time Payments Request for Payment is created.
        REAL_TIME_PAYMENTS_REQUEST_FOR_PAYMENT_CREATED =
          T.let(:"real_time_payments_request_for_payment.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Real-Time Payments Request for Payment is updated.
        REAL_TIME_PAYMENTS_REQUEST_FOR_PAYMENT_UPDATED =
          T.let(:"real_time_payments_request_for_payment.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Transaction is created.
        TRANSACTION_CREATED = T.let(:"transaction.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Wire Drawdown Request is created.
        WIRE_DRAWDOWN_REQUEST_CREATED =
          T.let(:"wire_drawdown_request.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Wire Drawdown Request is updated.
        WIRE_DRAWDOWN_REQUEST_UPDATED =
          T.let(:"wire_drawdown_request.updated", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Wire Transfer is created.
        WIRE_TRANSFER_CREATED = T.let(:"wire_transfer.created", Increase::Models::Event::Category::TaggedSymbol)

        # Occurs whenever a Wire Transfer is updated.
        WIRE_TRANSFER_UPDATED = T.let(:"wire_transfer.updated", Increase::Models::Event::Category::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Event::Category::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/event/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Event::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Event::Type::TaggedSymbol) }

        EVENT = T.let(:event, Increase::Models::Event::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Event::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
