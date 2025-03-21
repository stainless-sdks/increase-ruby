# typed: strong

module Increase
  module Models
    class InboundACHTransferDeclineParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The reason why this transfer will be returned. If this parameter is unset, the
      #   return codes will be `payment_stopped` for debits and
      #   `credit_entry_refused_by_receiver` for credits.
      sig { returns(T.nilable(Increase::Models::InboundACHTransferDeclineParams::Reason::OrSymbol)) }
      attr_reader :reason

      sig { params(reason: Increase::Models::InboundACHTransferDeclineParams::Reason::OrSymbol).void }
      attr_writer :reason

      sig do
        params(
          reason: Increase::Models::InboundACHTransferDeclineParams::Reason::OrSymbol,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(reason: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              reason: Increase::Models::InboundACHTransferDeclineParams::Reason::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The reason why this transfer will be returned. If this parameter is unset, the
      #   return codes will be `payment_stopped` for debits and
      #   `credit_entry_refused_by_receiver` for credits.
      module Reason
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransferDeclineParams::Reason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol) }

        # The customer's account has insufficient funds. This reason is only allowed for debits. The Nacha return code is R01.
        INSUFFICIENT_FUNDS =
          T.let(:insufficient_funds, Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol)

        # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request. The Nacha return code is R06.
        RETURNED_PER_ODFI_REQUEST =
          T.let(:returned_per_odfi_request, Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol)

        # The customer no longer authorizes this transaction. The Nacha return code is R07.
        AUTHORIZATION_REVOKED_BY_CUSTOMER =
          T.let(
            :authorization_revoked_by_customer,
            Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol
          )

        # The customer asked for the payment to be stopped. This reason is only allowed for debits. The Nacha return code is R08.
        PAYMENT_STOPPED =
          T.let(:payment_stopped, Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol)

        # The customer advises that the debit was unauthorized. The Nacha return code is R10.
        CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
          T.let(
            :customer_advised_unauthorized_improper_ineligible_or_incomplete,
            Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol
          )

        # The payee is deceased. The Nacha return code is R14.
        REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
          T.let(
            :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
            Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol
          )

        # The account holder is deceased. The Nacha return code is R15.
        BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED =
          T.let(
            :beneficiary_or_account_holder_deceased,
            Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol
          )

        # The customer refused a credit entry. This reason is only allowed for credits. The Nacha return code is R23.
        CREDIT_ENTRY_REFUSED_BY_RECEIVER =
          T.let(
            :credit_entry_refused_by_receiver,
            Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol
          )

        # The account holder identified this transaction as a duplicate. The Nacha return code is R24.
        DUPLICATE_ENTRY =
          T.let(:duplicate_entry, Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol)

        # The corporate customer no longer authorizes this transaction. The Nacha return code is R29.
        CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED =
          T.let(
            :corporate_customer_advised_not_authorized,
            Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol
          )

        class << self
          sig { override.returns(T::Array[Increase::Models::InboundACHTransferDeclineParams::Reason::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
