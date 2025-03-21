# typed: strong

module Increase
  module Models
    class DeclinedTransaction < Increase::BaseModel
      # The Declined Transaction identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the Account the Declined Transaction belongs to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The Declined Transaction amount in the minor unit of its currency. For dollars,
      #   for example, this is cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the
      #   Transaction occurred.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Declined
      #   Transaction's currency. This will match the currency on the Declined
      #   Transaction's Account.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # This is the description the vendor provides.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The identifier for the route this Declined Transaction came through. Routes are
      #   things like cards and ACH details.
      sig { returns(T.nilable(String)) }
      def route_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def route_id=(_)
      end

      # The type of the route this Declined Transaction came through.
      sig { returns(T.nilable(Symbol)) }
      def route_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def route_type=(_)
      end

      # This is an object giving more details on the network-level event that caused the
      #   Declined Transaction. For example, for a card transaction this lists the
      #   merchant's industry and location. Note that for backwards compatibility reasons,
      #   additional undocumented keys may appear in this object. These should be treated
      #   as deprecated and will be removed in the future.
      sig { returns(Increase::Models::DeclinedTransaction::Source) }
      def source
      end

      sig do
        params(_: Increase::Models::DeclinedTransaction::Source)
          .returns(Increase::Models::DeclinedTransaction::Source)
      end
      def source=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `declined_transaction`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Declined Transactions are refused additions and removals of money from your bank
      #   account. For example, Declined Transactions are caused when your Account has an
      #   insufficient balance or your Limits are triggered.
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          created_at: Time,
          currency: Symbol,
          description: String,
          route_id: T.nilable(String),
          route_type: T.nilable(Symbol),
          source: Increase::Models::DeclinedTransaction::Source,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, amount:, created_at:, currency:, description:, route_id:, route_type:, source:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              amount: Integer,
              created_at: Time,
              currency: Symbol,
              description: String,
              route_id: T.nilable(String),
              route_type: T.nilable(Symbol),
              source: Increase::Models::DeclinedTransaction::Source,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Declined
      #   Transaction's currency. This will match the currency on the Declined
      #   Transaction's Account.
      class Currency < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # Canadian Dollar (CAD)
        CAD = :CAD

        # Swiss Franc (CHF)
        CHF = :CHF

        # Euro (EUR)
        EUR = :EUR

        # British Pound (GBP)
        GBP = :GBP

        # Japanese Yen (JPY)
        JPY = :JPY

        # US Dollar (USD)
        USD = :USD
      end

      # The type of the route this Declined Transaction came through.
      class RouteType < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox
      end

      class Source < Increase::BaseModel
        # An ACH Decline object. This field will be present in the JSON response if and
        #   only if `category` is equal to `ach_decline`.
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline)) }
        def ach_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline))
        end
        def ach_decline=(_)
        end

        # A Card Decline object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_decline`.
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline)) }
        def card_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline))
        end
        def card_decline=(_)
        end

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        # A Check Decline object. This field will be present in the JSON response if and
        #   only if `category` is equal to `check_decline`.
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline)) }
        def check_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline))
        end
        def check_decline=(_)
        end

        # A Check Deposit Rejection object. This field will be present in the JSON
        #   response if and only if `category` is equal to `check_deposit_rejection`.
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection)) }
        def check_deposit_rejection
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection))
        end
        def check_deposit_rejection=(_)
        end

        # An Inbound Real-Time Payments Transfer Decline object. This field will be
        #   present in the JSON response if and only if `category` is equal to
        #   `inbound_real_time_payments_transfer_decline`.
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline)) }
        def inbound_real_time_payments_transfer_decline
        end

        sig do
          params(
            _: T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline)
          )
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline))
        end
        def inbound_real_time_payments_transfer_decline=(_)
        end

        # If the category of this Transaction source is equal to `other`, this field will
        #   contain an empty object, otherwise it will contain null.
        sig { returns(T.nilable(T.anything)) }
        def other
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def other=(_)
        end

        # A Wire Decline object. This field will be present in the JSON response if and
        #   only if `category` is equal to `wire_decline`.
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline)) }
        def wire_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline))
        end
        def wire_decline=(_)
        end

        # This is an object giving more details on the network-level event that caused the
        #   Declined Transaction. For example, for a card transaction this lists the
        #   merchant's industry and location. Note that for backwards compatibility reasons,
        #   additional undocumented keys may appear in this object. These should be treated
        #   as deprecated and will be removed in the future.
        sig do
          params(
            ach_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline),
            card_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline),
            category: Symbol,
            check_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline),
            check_deposit_rejection: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection),
            inbound_real_time_payments_transfer_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline),
            other: T.nilable(T.anything),
            wire_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline)
          )
            .returns(T.attached_class)
        end
        def self.new(
          ach_decline:,
          card_decline:,
          category:,
          check_decline:,
          check_deposit_rejection:,
          inbound_real_time_payments_transfer_decline:,
          other:,
          wire_decline:
        )
        end

        sig do
          override
            .returns(
              {
                ach_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline),
                card_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline),
                category: Symbol,
                check_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline),
                check_deposit_rejection: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection),
                inbound_real_time_payments_transfer_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline),
                other: T.nilable(T.anything),
                wire_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline)
              }
            )
        end
        def to_hash
        end

        class ACHDecline < Increase::BaseModel
          # The ACH Decline's identifier.
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The declined amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The identifier of the Inbound ACH Transfer object associated with this decline.
          sig { returns(String) }
          def inbound_ach_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_ach_transfer_id=(_)
          end

          # The descriptive date of the transfer.
          sig { returns(T.nilable(String)) }
          def originator_company_descriptive_date
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_company_descriptive_date=(_)
          end

          # The additional information included with the transfer.
          sig { returns(T.nilable(String)) }
          def originator_company_discretionary_data
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_company_discretionary_data=(_)
          end

          # The identifier of the company that initiated the transfer.
          sig { returns(String) }
          def originator_company_id
          end

          sig { params(_: String).returns(String) }
          def originator_company_id=(_)
          end

          # The name of the company that initiated the transfer.
          sig { returns(String) }
          def originator_company_name
          end

          sig { params(_: String).returns(String) }
          def originator_company_name=(_)
          end

          # Why the ACH transfer was declined.
          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          # The id of the receiver of the transfer.
          sig { returns(T.nilable(String)) }
          def receiver_id_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def receiver_id_number=(_)
          end

          # The name of the receiver of the transfer.
          sig { returns(T.nilable(String)) }
          def receiver_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def receiver_name=(_)
          end

          # The trace number of the transfer.
          sig { returns(String) }
          def trace_number
          end

          sig { params(_: String).returns(String) }
          def trace_number=(_)
          end

          # A constant representing the object's type. For this resource it will always be
          #   `ach_decline`.
          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          # An ACH Decline object. This field will be present in the JSON response if and
          #   only if `category` is equal to `ach_decline`.
          sig do
            params(
              id: String,
              amount: Integer,
              inbound_ach_transfer_id: String,
              originator_company_descriptive_date: T.nilable(String),
              originator_company_discretionary_data: T.nilable(String),
              originator_company_id: String,
              originator_company_name: String,
              reason: Symbol,
              receiver_id_number: T.nilable(String),
              receiver_name: T.nilable(String),
              trace_number: String,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            inbound_ach_transfer_id:,
            originator_company_descriptive_date:,
            originator_company_discretionary_data:,
            originator_company_id:,
            originator_company_name:,
            reason:,
            receiver_id_number:,
            receiver_name:,
            trace_number:,
            type:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  inbound_ach_transfer_id: String,
                  originator_company_descriptive_date: T.nilable(String),
                  originator_company_discretionary_data: T.nilable(String),
                  originator_company_id: String,
                  originator_company_name: String,
                  reason: Symbol,
                  receiver_id_number: T.nilable(String),
                  receiver_name: T.nilable(String),
                  trace_number: String,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          # Why the ACH transfer was declined.
          class Reason < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The account number is canceled.
            ACH_ROUTE_CANCELED = :ach_route_canceled

            # The account number is disabled.
            ACH_ROUTE_DISABLED = :ach_route_disabled

            # The transaction would cause an Increase limit to be exceeded.
            BREACHES_LIMIT = :breaches_limit

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # Your account is inactive.
            GROUP_LOCKED = :group_locked

            # The transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED = :transaction_not_allowed

            # Your integration declined this transfer via the API.
            USER_INITIATED = :user_initiated

            # Your account contains insufficient funds.
            INSUFFICIENT_FUNDS = :insufficient_funds

            # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
            RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

            # The customer no longer authorizes this transaction.
            AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

            # The customer asked for the payment to be stopped.
            PAYMENT_STOPPED = :payment_stopped

            # The customer advises that the debit was unauthorized.
            CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
              :customer_advised_unauthorized_improper_ineligible_or_incomplete

            # The payee is deceased.
            REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
              :representative_payee_deceased_or_unable_to_continue_in_that_capacity

            # The account holder is deceased.
            BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

            # The customer refused a credit entry.
            CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

            # The account holder identified this transaction as a duplicate.
            DUPLICATE_ENTRY = :duplicate_entry

            # The corporate customer no longer authorizes this transaction.
            CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized
          end

          # A constant representing the object's type. For this resource it will always be
          #   `ach_decline`.
          class Type < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            ACH_DECLINE = :ach_decline
          end
        end

        class CardDecline < Increase::BaseModel
          # The Card Decline identifier.
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          sig { returns(Symbol) }
          def actioner
          end

          sig { params(_: Symbol).returns(Symbol) }
          def actioner=(_)
          end

          # The declined amount in the minor unit of the destination account currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   account currency.
          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          # The identifier of the declined transaction created for this Card Decline.
          sig { returns(String) }
          def declined_transaction_id
          end

          sig { params(_: String).returns(String) }
          def declined_transaction_id=(_)
          end

          # If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   purchase), the identifier of the token that was used.
          sig { returns(T.nilable(String)) }
          def digital_wallet_token_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def digital_wallet_token_id=(_)
          end

          # The direction describes the direction the funds will move, either from the
          #   cardholder to the merchant or from the merchant to the cardholder.
          sig { returns(Symbol) }
          def direction
          end

          sig { params(_: Symbol).returns(Symbol) }
          def direction=(_)
          end

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   card is transacting with.
          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          # The city the merchant resides in.
          sig { returns(T.nilable(String)) }
          def merchant_city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_city=(_)
          end

          # The country the merchant resides in.
          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          # The merchant descriptor of the merchant the card is transacting with.
          sig { returns(String) }
          def merchant_descriptor
          end

          sig { params(_: String).returns(String) }
          def merchant_descriptor=(_)
          end

          # The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   ZIP code, where the first 5 and last 4 are separated by a dash.
          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          # Fields specific to the `network`.
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails) }
          def network_details
          end

          sig do
            params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails)
              .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails)
          end
          def network_details=(_)
          end

          # Network-specific identifiers for a specific request or transaction.
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers)
              .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          # The risk score generated by the card network. For Visa this is the Visa Advanced
          #   Authorization risk score, from 0 to 99, where 99 is the riskiest.
          sig { returns(T.nilable(Integer)) }
          def network_risk_score
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def network_risk_score=(_)
          end

          # If the authorization was made in-person with a physical card, the Physical Card
          #   that was used.
          sig { returns(T.nilable(String)) }
          def physical_card_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def physical_card_id=(_)
          end

          # The declined amount in the minor unit of the transaction's presentment currency.
          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's presentment currency.
          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          # The processing category describes the intent behind the authorization, such as
          #   whether it was used for bill payments or an automatic fuel dispenser.
          sig { returns(Symbol) }
          def processing_category
          end

          sig { params(_: Symbol).returns(Symbol) }
          def processing_category=(_)
          end

          # The identifier of the Real-Time Decision sent to approve or decline this
          #   transaction.
          sig { returns(T.nilable(String)) }
          def real_time_decision_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def real_time_decision_id=(_)
          end

          # This is present if a specific decline reason was given in the real-time
          #   decision.
          sig { returns(T.nilable(Symbol)) }
          def real_time_decision_reason
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def real_time_decision_reason=(_)
          end

          # Why the transaction was declined.
          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          # The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   is transacting with.
          sig { returns(T.nilable(String)) }
          def terminal_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_)
          end

          # Fields related to verification of cardholder-provided values.
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification) }
          def verification
          end

          sig do
            params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification)
              .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification)
          end
          def verification=(_)
          end

          # A Card Decline object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_decline`.
          sig do
            params(
              id: String,
              actioner: Symbol,
              amount: Integer,
              card_payment_id: String,
              currency: Symbol,
              declined_transaction_id: String,
              digital_wallet_token_id: T.nilable(String),
              direction: Symbol,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails,
              network_identifiers: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers,
              network_risk_score: T.nilable(Integer),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Symbol,
              real_time_decision_id: T.nilable(String),
              real_time_decision_reason: T.nilable(Symbol),
              reason: Symbol,
              terminal_id: T.nilable(String),
              verification: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            actioner:,
            amount:,
            card_payment_id:,
            currency:,
            declined_transaction_id:,
            digital_wallet_token_id:,
            direction:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_city:,
            merchant_country:,
            merchant_descriptor:,
            merchant_postal_code:,
            merchant_state:,
            network_details:,
            network_identifiers:,
            network_risk_score:,
            physical_card_id:,
            presentment_amount:,
            presentment_currency:,
            processing_category:,
            real_time_decision_id:,
            real_time_decision_reason:,
            reason:,
            terminal_id:,
            verification:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  actioner: Symbol,
                  amount: Integer,
                  card_payment_id: String,
                  currency: Symbol,
                  declined_transaction_id: String,
                  digital_wallet_token_id: T.nilable(String),
                  direction: Symbol,
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: T.nilable(String),
                  merchant_country: String,
                  merchant_descriptor: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network_details: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails,
                  network_identifiers: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  physical_card_id: T.nilable(String),
                  presentment_amount: Integer,
                  presentment_currency: String,
                  processing_category: Symbol,
                  real_time_decision_id: T.nilable(String),
                  real_time_decision_reason: T.nilable(Symbol),
                  reason: Symbol,
                  terminal_id: T.nilable(String),
                  verification: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification
                }
              )
          end
          def to_hash
          end

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          class Actioner < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   account currency.
          class Currency < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end

          # The direction describes the direction the funds will move, either from the
          #   cardholder to the merchant or from the merchant to the cardholder.
          class Direction < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund
          end

          class NetworkDetails < Increase::BaseModel
            # The payment network used to process this card authorization.
            sig { returns(Symbol) }
            def category
            end

            sig { params(_: Symbol).returns(Symbol) }
            def category=(_)
            end

            # Fields specific to the `visa` network.
            sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa)) }
            def visa
            end

            sig do
              params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa))
                .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa))
            end
            def visa=(_)
            end

            # Fields specific to the `network`.
            sig do
              params(
                category: Symbol,
                visa: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa)
              )
                .returns(T.attached_class)
            end
            def self.new(category:, visa:)
            end

            sig do
              override
                .returns(
                  {
                    category: Symbol,
                    visa: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            # The payment network used to process this card authorization.
            class Category < Increase::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              # Visa
              VISA = :visa
            end

            class Visa < Increase::BaseModel
              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              sig { returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator=(_)
              end

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              sig { returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode=(_)
              end

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              sig { returns(T.nilable(Symbol)) }
              def stand_in_processing_reason
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def stand_in_processing_reason=(_)
              end

              # Fields specific to the `visa` network.
              sig do
                params(
                  electronic_commerce_indicator: T.nilable(Symbol),
                  point_of_service_entry_mode: T.nilable(Symbol),
                  stand_in_processing_reason: T.nilable(Symbol)
                )
                  .returns(T.attached_class)
              end
              def self.new(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:)
              end

              sig do
                override
                  .returns(
                    {
                      electronic_commerce_indicator: T.nilable(Symbol),
                      point_of_service_entry_mode: T.nilable(Symbol),
                      stand_in_processing_reason: T.nilable(Symbol)
                    }
                  )
              end
              def to_hash
              end

              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              class ElectronicCommerceIndicator < Increase::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = :mail_phone_order

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = :recurring

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = :installment

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = :unknown_mail_phone_order

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = :secure_electronic_commerce

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  :non_authenticated_security_transaction_at_3ds_capable_merchant

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = :non_authenticated_security_transaction

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = :non_secure_transaction
              end

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              class PointOfServiceEntryMode < Increase::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

                # Unknown
                UNKNOWN = :unknown

                # Manual key entry
                MANUAL = :manual

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = :magnetic_stripe_no_cvv

                # Optical code
                OPTICAL_CODE = :optical_code

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = :integrated_circuit_card

                # Contactless read of chip card
                CONTACTLESS = :contactless

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = :credential_on_file

                # Magnetic stripe read
                MAGNETIC_STRIPE = :magnetic_stripe

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = :contactless_magnetic_stripe

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = :integrated_circuit_card_no_cvv
              end

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              class StandInProcessingReason < Increase::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = :issuer_error

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = :invalid_physical_card

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                  :invalid_cardholder_authentication_verification_value

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = :internal_visa_error

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                  :merchant_transaction_advisory_service_authentication_required

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = :payment_fraud_disruption_acquirer_block

                # An unspecific reason for stand-in processing.
                OTHER = :other
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A life-cycle identifier used across e.g., an authorization and a reversal.
            #   Expected to be unique per acquirer within a window of time. For some card
            #   networks the retrieval reference number includes the trace counter.
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            # A counter used to verify an individual authorization. Expected to be unique per
            #   acquirer within a window of time.
            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            # Network-specific identifiers for a specific request or transaction.
            sig do
              params(
                retrieval_reference_number: T.nilable(String),
                trace_number: T.nilable(String),
                transaction_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(retrieval_reference_number:, trace_number:, transaction_id:)
            end

            sig do
              override
                .returns(
                  {
                    retrieval_reference_number: T.nilable(String),
                    trace_number: T.nilable(String),
                    transaction_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          # The processing category describes the intent behind the authorization, such as
          #   whether it was used for bill payments or an automatic fuel dispenser.
          class ProcessingCategory < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING = :account_funding

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER = :automatic_fuel_dispenser

            # A transaction used to pay a bill.
            BILL_PAYMENT = :bill_payment

            # A regular purchase.
            PURCHASE = :purchase

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH = :quasi_cash

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund
          end

          # This is present if a specific decline reason was given in the real-time
          #   decision.
          class RealTimeDecisionReason < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
            INSUFFICIENT_FUNDS = :insufficient_funds

            # This type of transaction is not allowed for this card. This transaction should not be retried.
            TRANSACTION_NEVER_ALLOWED = :transaction_never_allowed

            # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
            EXCEEDS_APPROVAL_LIMIT = :exceeds_approval_limit

            # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
            CARD_TEMPORARILY_DISABLED = :card_temporarily_disabled

            # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
            SUSPECTED_FRAUD = :suspected_fraud

            # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
            OTHER = :other
          end

          # Why the transaction was declined.
          class Reason < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The account has been closed.
            ACCOUNT_CLOSED = :account_closed

            # The Card was not active.
            CARD_NOT_ACTIVE = :card_not_active

            # The Card has been canceled.
            CARD_CANCELED = :card_canceled

            # The Physical Card was not active.
            PHYSICAL_CARD_NOT_ACTIVE = :physical_card_not_active

            # The account's entity was not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # The account was inactive.
            GROUP_LOCKED = :group_locked

            # The Card's Account did not have a sufficient available balance.
            INSUFFICIENT_FUNDS = :insufficient_funds

            # The given CVV2 did not match the card's value.
            CVV2_MISMATCH = :cvv2_mismatch

            # The given expiration date did not match the card's value. Only applies when a CVV2 is present.
            CARD_EXPIRATION_MISMATCH = :card_expiration_mismatch

            # The attempted card transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED = :transaction_not_allowed

            # The transaction was blocked by a Limit.
            BREACHES_LIMIT = :breaches_limit

            # Your application declined the transaction via webhook.
            WEBHOOK_DECLINED = :webhook_declined

            # Your application webhook did not respond without the required timeout.
            WEBHOOK_TIMED_OUT = :webhook_timed_out

            # Declined by stand-in processing.
            DECLINED_BY_STAND_IN_PROCESSING = :declined_by_stand_in_processing

            # The card read had an invalid CVV, dCVV, or authorization request cryptogram.
            INVALID_PHYSICAL_CARD = :invalid_physical_card

            # The original card authorization for this incremental authorization does not exist.
            MISSING_ORIGINAL_AUTHORIZATION = :missing_original_authorization

            # The transaction was suspected to be fraudulent. Please reach out to support@increase.com for more information.
            SUSPECTED_FRAUD = :suspected_fraud
          end

          class Verification < Increase::BaseModel
            # Fields related to verification of the Card Verification Code, a 3-digit code on
            #   the back of the card.
            sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode) }
            def card_verification_code
            end

            sig do
              params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode)
                .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode)
            end
            def card_verification_code=(_)
            end

            # Cardholder address provided in the authorization request and the address on file
            #   we verified it against.
            sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress) }
            def cardholder_address
            end

            sig do
              params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress)
                .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress)
            end
            def cardholder_address=(_)
            end

            # Fields related to verification of cardholder-provided values.
            sig do
              params(
                card_verification_code: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode,
                cardholder_address: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress
              )
                .returns(T.attached_class)
            end
            def self.new(card_verification_code:, cardholder_address:)
            end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress
                  }
                )
            end
            def to_hash
            end

            class CardVerificationCode < Increase::BaseModel
              # The result of verifying the Card Verification Code.
              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

              # Fields related to verification of the Card Verification Code, a 3-digit code on
              #   the back of the card.
              sig { params(result: Symbol).returns(T.attached_class) }
              def self.new(result:)
              end

              sig { override.returns({result: Symbol}) }
              def to_hash
              end

              # The result of verifying the Card Verification Code.
              class Result < Increase::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match
              end
            end

            class CardholderAddress < Increase::BaseModel
              # Line 1 of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              def actual_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_line1=(_)
              end

              # The postal code of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              def actual_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_postal_code=(_)
              end

              # The cardholder address line 1 provided for verification in the authorization
              #   request.
              sig { returns(T.nilable(String)) }
              def provided_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_line1=(_)
              end

              # The postal code provided for verification in the authorization request.
              sig { returns(T.nilable(String)) }
              def provided_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_postal_code=(_)
              end

              # The address verification result returned to the card network.
              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

              # Cardholder address provided in the authorization request and the address on file
              #   we verified it against.
              sig do
                params(
                  actual_line1: T.nilable(String),
                  actual_postal_code: T.nilable(String),
                  provided_line1: T.nilable(String),
                  provided_postal_code: T.nilable(String),
                  result: Symbol
                )
                  .returns(T.attached_class)
              end
              def self.new(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:)
              end

              sig do
                override
                  .returns(
                    {
                      actual_line1: T.nilable(String),
                      actual_postal_code: T.nilable(String),
                      provided_line1: T.nilable(String),
                      provided_postal_code: T.nilable(String),
                      result: Symbol
                    }
                  )
              end
              def to_hash
              end

              # The address verification result returned to the card network.
              class Result < Increase::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

                # No adress was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED = :postal_code_match_address_not_checked

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH = :postal_code_match_address_no_match

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH = :postal_code_no_match_address_match

                # Postal code and street address match.
                MATCH = :match

                # Postal code and street address do not match.
                NO_MATCH = :no_match
              end
            end
          end
        end

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        class Category < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # ACH Decline: details will be under the `ach_decline` object.
          ACH_DECLINE = :ach_decline

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = :card_decline

          # Check Decline: details will be under the `check_decline` object.
          CHECK_DECLINE = :check_decline

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE = :inbound_real_time_payments_transfer_decline

          # Wire Decline: details will be under the `wire_decline` object.
          WIRE_DECLINE = :wire_decline

          # Check Deposit Rejection: details will be under the `check_deposit_rejection` object.
          CHECK_DEPOSIT_REJECTION = :check_deposit_rejection

          # The Declined Transaction was made for an undocumented or deprecated reason.
          OTHER = :other
        end

        class CheckDecline < Increase::BaseModel
          # The declined amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # A computer-readable number printed on the MICR line of business checks, usually
          #   the check number. This is useful for positive pay checks, but can be unreliably
          #   transmitted by the bank of first deposit.
          sig { returns(T.nilable(String)) }
          def auxiliary_on_us
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def auxiliary_on_us=(_)
          end

          # The identifier of the API File object containing an image of the back of the
          #   declined check.
          sig { returns(T.nilable(String)) }
          def back_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def back_image_file_id=(_)
          end

          # The identifier of the Check Transfer object associated with this decline.
          sig { returns(T.nilable(String)) }
          def check_transfer_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def check_transfer_id=(_)
          end

          # The identifier of the API File object containing an image of the front of the
          #   declined check.
          sig { returns(T.nilable(String)) }
          def front_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def front_image_file_id=(_)
          end

          # The identifier of the Inbound Check Deposit object associated with this decline.
          sig { returns(T.nilable(String)) }
          def inbound_check_deposit_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def inbound_check_deposit_id=(_)
          end

          # Why the check was declined.
          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          # A Check Decline object. This field will be present in the JSON response if and
          #   only if `category` is equal to `check_decline`.
          sig do
            params(
              amount: Integer,
              auxiliary_on_us: T.nilable(String),
              back_image_file_id: T.nilable(String),
              check_transfer_id: T.nilable(String),
              front_image_file_id: T.nilable(String),
              inbound_check_deposit_id: T.nilable(String),
              reason: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            auxiliary_on_us:,
            back_image_file_id:,
            check_transfer_id:,
            front_image_file_id:,
            inbound_check_deposit_id:,
            reason:
          )
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  auxiliary_on_us: T.nilable(String),
                  back_image_file_id: T.nilable(String),
                  check_transfer_id: T.nilable(String),
                  front_image_file_id: T.nilable(String),
                  inbound_check_deposit_id: T.nilable(String),
                  reason: Symbol
                }
              )
          end
          def to_hash
          end

          # Why the check was declined.
          class Reason < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The account number is disabled.
            ACH_ROUTE_DISABLED = :ach_route_disabled

            # The account number is canceled.
            ACH_ROUTE_CANCELED = :ach_route_canceled

            # The deposited check was altered or fictitious.
            ALTERED_OR_FICTITIOUS = :altered_or_fictitious

            # The transaction would cause a limit to be exceeded.
            BREACHES_LIMIT = :breaches_limit

            # The check was not endorsed by the payee.
            ENDORSEMENT_IRREGULAR = :endorsement_irregular

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # Your account is inactive.
            GROUP_LOCKED = :group_locked

            # Your account contains insufficient funds.
            INSUFFICIENT_FUNDS = :insufficient_funds

            # Stop payment requested for this check.
            STOP_PAYMENT_REQUESTED = :stop_payment_requested

            # The check was a duplicate deposit.
            DUPLICATE_PRESENTMENT = :duplicate_presentment

            # The check was not authorized.
            NOT_AUTHORIZED = :not_authorized

            # The amount the receiving bank is attempting to deposit does not match the amount on the check.
            AMOUNT_MISMATCH = :amount_mismatch

            # The check attempting to be deposited does not belong to Increase.
            NOT_OUR_ITEM = :not_our_item

            # The account number on the check does not exist at Increase.
            NO_ACCOUNT_NUMBER_FOUND = :no_account_number_found

            # The check is not readable. Please refer to the image.
            REFER_TO_IMAGE = :refer_to_image

            # The check cannot be processed. This is rare: please contact support.
            UNABLE_TO_PROCESS = :unable_to_process

            # Your integration declined this check via the API.
            USER_INITIATED = :user_initiated
          end
        end

        class CheckDepositRejection < Increase::BaseModel
          # The rejected amount in the minor unit of check's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The identifier of the Check Deposit that was rejected.
          sig { returns(String) }
          def check_deposit_id
          end

          sig { params(_: String).returns(String) }
          def check_deposit_id=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
          #   currency.
          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          # The identifier of the associated declined transaction.
          sig { returns(String) }
          def declined_transaction_id
          end

          sig { params(_: String).returns(String) }
          def declined_transaction_id=(_)
          end

          # Why the check deposit was rejected.
          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the check deposit was rejected.
          sig { returns(Time) }
          def rejected_at
          end

          sig { params(_: Time).returns(Time) }
          def rejected_at=(_)
          end

          # A Check Deposit Rejection object. This field will be present in the JSON
          #   response if and only if `category` is equal to `check_deposit_rejection`.
          sig do
            params(
              amount: Integer,
              check_deposit_id: String,
              currency: Symbol,
              declined_transaction_id: String,
              reason: Symbol,
              rejected_at: Time
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, check_deposit_id:, currency:, declined_transaction_id:, reason:, rejected_at:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  check_deposit_id: String,
                  currency: Symbol,
                  declined_transaction_id: String,
                  reason: Symbol,
                  rejected_at: Time
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
          #   currency.
          class Currency < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end

          # Why the check deposit was rejected.
          class Reason < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The check's image is incomplete.
            INCOMPLETE_IMAGE = :incomplete_image

            # This is a duplicate check submission.
            DUPLICATE = :duplicate

            # This check has poor image quality.
            POOR_IMAGE_QUALITY = :poor_image_quality

            # The check was deposited with the incorrect amount.
            INCORRECT_AMOUNT = :incorrect_amount

            # The check is made out to someone other than the account holder.
            INCORRECT_RECIPIENT = :incorrect_recipient

            # This check was not eligible for mobile deposit.
            NOT_ELIGIBLE_FOR_MOBILE_DEPOSIT = :not_eligible_for_mobile_deposit

            # This check is missing at least one required field.
            MISSING_REQUIRED_DATA_ELEMENTS = :missing_required_data_elements

            # This check is suspected to be fraudulent.
            SUSPECTED_FRAUD = :suspected_fraud

            # This check's deposit window has expired.
            DEPOSIT_WINDOW_EXPIRED = :deposit_window_expired

            # The check was rejected at the user's request.
            REQUESTED_BY_USER = :requested_by_user

            # The check was rejected for an unknown reason.
            UNKNOWN = :unknown
          end
        end

        class InboundRealTimePaymentsTransferDecline < Increase::BaseModel
          # The declined amount in the minor unit of the destination account currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The name the sender of the transfer specified as the recipient of the transfer.
          sig { returns(String) }
          def creditor_name
          end

          sig { params(_: String).returns(String) }
          def creditor_name=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined
          #   transfer's currency. This will always be "USD" for a Real-Time Payments
          #   transfer.
          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          # The account number of the account that sent the transfer.
          sig { returns(String) }
          def debtor_account_number
          end

          sig { params(_: String).returns(String) }
          def debtor_account_number=(_)
          end

          # The name provided by the sender of the transfer.
          sig { returns(String) }
          def debtor_name
          end

          sig { params(_: String).returns(String) }
          def debtor_name=(_)
          end

          # The routing number of the account that sent the transfer.
          sig { returns(String) }
          def debtor_routing_number
          end

          sig { params(_: String).returns(String) }
          def debtor_routing_number=(_)
          end

          # Why the transfer was declined.
          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          # Additional information included with the transfer.
          sig { returns(T.nilable(String)) }
          def remittance_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def remittance_information=(_)
          end

          # The Real-Time Payments network identification of the declined transfer.
          sig { returns(String) }
          def transaction_identification
          end

          sig { params(_: String).returns(String) }
          def transaction_identification=(_)
          end

          # The identifier of the Real-Time Payments Transfer that led to this Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An Inbound Real-Time Payments Transfer Decline object. This field will be
          #   present in the JSON response if and only if `category` is equal to
          #   `inbound_real_time_payments_transfer_decline`.
          sig do
            params(
              amount: Integer,
              creditor_name: String,
              currency: Symbol,
              debtor_account_number: String,
              debtor_name: String,
              debtor_routing_number: String,
              reason: Symbol,
              remittance_information: T.nilable(String),
              transaction_identification: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            creditor_name:,
            currency:,
            debtor_account_number:,
            debtor_name:,
            debtor_routing_number:,
            reason:,
            remittance_information:,
            transaction_identification:,
            transfer_id:
          )
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  creditor_name: String,
                  currency: Symbol,
                  debtor_account_number: String,
                  debtor_name: String,
                  debtor_routing_number: String,
                  reason: Symbol,
                  remittance_information: T.nilable(String),
                  transaction_identification: String,
                  transfer_id: String
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined
          #   transfer's currency. This will always be "USD" for a Real-Time Payments
          #   transfer.
          class Currency < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end

          # Why the transfer was declined.
          class Reason < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The account number is canceled.
            ACCOUNT_NUMBER_CANCELED = :account_number_canceled

            # The account number is disabled.
            ACCOUNT_NUMBER_DISABLED = :account_number_disabled

            # Your account is restricted.
            ACCOUNT_RESTRICTED = :account_restricted

            # Your account is inactive.
            GROUP_LOCKED = :group_locked

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # Your account is not enabled to receive Real-Time Payments transfers.
            REAL_TIME_PAYMENTS_NOT_ENABLED = :real_time_payments_not_enabled
          end
        end

        class WireDecline < Increase::BaseModel
          # The identifier of the Inbound Wire Transfer that was declined.
          sig { returns(String) }
          def inbound_wire_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_wire_transfer_id=(_)
          end

          # Why the wire transfer was declined.
          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          # A Wire Decline object. This field will be present in the JSON response if and
          #   only if `category` is equal to `wire_decline`.
          sig { params(inbound_wire_transfer_id: String, reason: Symbol).returns(T.attached_class) }
          def self.new(inbound_wire_transfer_id:, reason:)
          end

          sig { override.returns({inbound_wire_transfer_id: String, reason: Symbol}) }
          def to_hash
          end

          # Why the wire transfer was declined.
          class Reason < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The account number is canceled.
            ACCOUNT_NUMBER_CANCELED = :account_number_canceled

            # The account number is disabled.
            ACCOUNT_NUMBER_DISABLED = :account_number_disabled

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # Your account is inactive.
            GROUP_LOCKED = :group_locked

            # The beneficiary account number does not exist.
            NO_ACCOUNT_NUMBER = :no_account_number

            # The transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED = :transaction_not_allowed
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `declined_transaction`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DECLINED_TRANSACTION = :declined_transaction
      end
    end
  end
end
