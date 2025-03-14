# typed: strong

module Increase
  module Models
    class CardPayment < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def digital_wallet_token_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def digital_wallet_token_id=(_)
      end

      sig { returns(T::Array[Increase::Models::CardPayment::Element]) }
      def elements
      end

      sig do
        params(_: T::Array[Increase::Models::CardPayment::Element])
          .returns(T::Array[Increase::Models::CardPayment::Element])
      end
      def elements=(_)
      end

      sig { returns(T.nilable(String)) }
      def physical_card_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def physical_card_id=(_)
      end

      sig { returns(Increase::Models::CardPayment::State) }
      def state
      end

      sig { params(_: Increase::Models::CardPayment::State).returns(Increase::Models::CardPayment::State) }
      def state=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          account_id: String,
          card_id: String,
          created_at: Time,
          digital_wallet_token_id: T.nilable(String),
          elements: T::Array[Increase::Models::CardPayment::Element],
          physical_card_id: T.nilable(String),
          state: Increase::Models::CardPayment::State,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        card_id:,
        created_at:,
        digital_wallet_token_id:,
        elements:,
        physical_card_id:,
        state:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              card_id: String,
              created_at: Time,
              digital_wallet_token_id: T.nilable(String),
              elements: T::Array[Increase::Models::CardPayment::Element],
              physical_card_id: T.nilable(String),
              state: Increase::Models::CardPayment::State,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Element < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthentication)) }
        def card_authentication
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthentication))
        end
        def card_authentication=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorization)) }
        def card_authorization
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardAuthorization))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorization))
        end
        def card_authorization=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorizationExpiration)) }
        def card_authorization_expiration
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardAuthorizationExpiration))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorizationExpiration))
        end
        def card_authorization_expiration=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardDecline)) }
        def card_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardDecline))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardDecline))
        end
        def card_decline=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardFuelConfirmation)) }
        def card_fuel_confirmation
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardFuelConfirmation))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardFuelConfirmation))
        end
        def card_fuel_confirmation=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardIncrement)) }
        def card_increment
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardIncrement))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardIncrement))
        end
        def card_increment=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund)) }
        def card_refund
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardRefund))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund))
        end
        def card_refund=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardReversal)) }
        def card_reversal
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardReversal))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardReversal))
        end
        def card_reversal=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement)) }
        def card_settlement
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardSettlement))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement))
        end
        def card_settlement=(_)
        end

        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardValidation)) }
        def card_validation
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPayment::Element::CardValidation))
            .returns(T.nilable(Increase::Models::CardPayment::Element::CardValidation))
        end
        def card_validation=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def other
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def other=(_)
        end

        sig do
          params(
            card_authentication: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication),
            card_authorization: T.nilable(Increase::Models::CardPayment::Element::CardAuthorization),
            card_authorization_expiration: T.nilable(Increase::Models::CardPayment::Element::CardAuthorizationExpiration),
            card_decline: T.nilable(Increase::Models::CardPayment::Element::CardDecline),
            card_fuel_confirmation: T.nilable(Increase::Models::CardPayment::Element::CardFuelConfirmation),
            card_increment: T.nilable(Increase::Models::CardPayment::Element::CardIncrement),
            card_refund: T.nilable(Increase::Models::CardPayment::Element::CardRefund),
            card_reversal: T.nilable(Increase::Models::CardPayment::Element::CardReversal),
            card_settlement: T.nilable(Increase::Models::CardPayment::Element::CardSettlement),
            card_validation: T.nilable(Increase::Models::CardPayment::Element::CardValidation),
            category: Symbol,
            created_at: Time,
            other: T.nilable(T.anything)
          )
            .returns(T.attached_class)
        end
        def self.new(
          card_authentication:,
          card_authorization:,
          card_authorization_expiration:,
          card_decline:,
          card_fuel_confirmation:,
          card_increment:,
          card_refund:,
          card_reversal:,
          card_settlement:,
          card_validation:,
          category:,
          created_at:,
          other:
        )
        end

        sig do
          override
            .returns(
              {
                card_authentication: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication),
                card_authorization: T.nilable(Increase::Models::CardPayment::Element::CardAuthorization),
                card_authorization_expiration: T.nilable(Increase::Models::CardPayment::Element::CardAuthorizationExpiration),
                card_decline: T.nilable(Increase::Models::CardPayment::Element::CardDecline),
                card_fuel_confirmation: T.nilable(Increase::Models::CardPayment::Element::CardFuelConfirmation),
                card_increment: T.nilable(Increase::Models::CardPayment::Element::CardIncrement),
                card_refund: T.nilable(Increase::Models::CardPayment::Element::CardRefund),
                card_reversal: T.nilable(Increase::Models::CardPayment::Element::CardReversal),
                card_settlement: T.nilable(Increase::Models::CardPayment::Element::CardSettlement),
                card_validation: T.nilable(Increase::Models::CardPayment::Element::CardValidation),
                category: Symbol,
                created_at: Time,
                other: T.nilable(T.anything)
              }
            )
        end
        def to_hash
        end

        class CardAuthentication < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def card_id
          end

          sig { params(_: String).returns(String) }
          def card_id=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def category
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def category=(_)
          end

          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Challenge)) }
          def challenge
          end

          sig do
            params(_: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Challenge))
              .returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Challenge))
          end
          def challenge=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def deny_reason
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def deny_reason=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def device_channel
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def device_channel=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_name
          end

          sig { params(_: String).returns(String) }
          def merchant_name=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def purchase_amount
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def purchase_amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def purchase_currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def purchase_currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def real_time_decision_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def real_time_decision_id=(_)
          end

          sig { returns(Symbol) }
          def status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def status=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              id: String,
              card_id: String,
              card_payment_id: String,
              category: T.nilable(Symbol),
              challenge: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Challenge),
              created_at: Time,
              deny_reason: T.nilable(Symbol),
              device_channel: T.nilable(Symbol),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_country: String,
              merchant_name: String,
              purchase_amount: T.nilable(Integer),
              purchase_currency: T.nilable(String),
              real_time_decision_id: T.nilable(String),
              status: Symbol,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            card_id:,
            card_payment_id:,
            category:,
            challenge:,
            created_at:,
            deny_reason:,
            device_channel:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_country:,
            merchant_name:,
            purchase_amount:,
            purchase_currency:,
            real_time_decision_id:,
            status:,
            type:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  card_id: String,
                  card_payment_id: String,
                  category: T.nilable(Symbol),
                  challenge: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Challenge),
                  created_at: Time,
                  deny_reason: T.nilable(Symbol),
                  device_channel: T.nilable(Symbol),
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_country: String,
                  merchant_name: String,
                  purchase_amount: T.nilable(Integer),
                  purchase_currency: T.nilable(String),
                  real_time_decision_id: T.nilable(String),
                  status: Symbol,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class Category < Increase::Enum
            abstract!

            # The authentication attempt is for a payment.
            PAYMENT_AUTHENTICATION = T.let(:payment_authentication, T.nilable(Symbol))

            # The authentication attempt is not for a payment.
            NON_PAYMENT_AUTHENTICATION = T.let(:non_payment_authentication, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Challenge < Increase::BaseModel
            sig { returns(T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt]) }
            def attempts
            end

            sig do
              params(_: T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt])
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt])
            end
            def attempts=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig { returns(String) }
            def one_time_code
            end

            sig { params(_: String).returns(String) }
            def one_time_code=(_)
            end

            sig { returns(Symbol) }
            def verification_method
            end

            sig { params(_: Symbol).returns(Symbol) }
            def verification_method=(_)
            end

            sig { returns(T.nilable(String)) }
            def verification_value
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def verification_value=(_)
            end

            sig do
              params(
                attempts: T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt],
                created_at: Time,
                one_time_code: String,
                verification_method: Symbol,
                verification_value: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(attempts:, created_at:, one_time_code:, verification_method:, verification_value:)
            end

            sig do
              override
                .returns(
                  {
                    attempts: T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt],
                    created_at: Time,
                    one_time_code: String,
                    verification_method: Symbol,
                    verification_value: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Attempt < Increase::BaseModel
              sig { returns(Time) }
              def created_at
              end

              sig { params(_: Time).returns(Time) }
              def created_at=(_)
              end

              sig { returns(Symbol) }
              def outcome
              end

              sig { params(_: Symbol).returns(Symbol) }
              def outcome=(_)
              end

              sig { params(created_at: Time, outcome: Symbol).returns(T.attached_class) }
              def self.new(created_at:, outcome:)
              end

              sig { override.returns({created_at: Time, outcome: Symbol}) }
              def to_hash
              end

              class Outcome < Increase::Enum
                abstract!

                # The attempt was successful.
                SUCCESSFUL = :successful

                # The attempt was unsuccessful.
                FAILED = :failed

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class VerificationMethod < Increase::Enum
              abstract!

              # The one-time code was sent via text message.
              TEXT_MESSAGE = :text_message

              # The one-time code was sent via email.
              EMAIL = :email

              # The one-time code was not successfully delievered.
              NONE_AVAILABLE = :none_available

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class DenyReason < Increase::Enum
            abstract!

            # The group was locked.
            GROUP_LOCKED = T.let(:group_locked, T.nilable(Symbol))

            # The card was not active.
            CARD_NOT_ACTIVE = T.let(:card_not_active, T.nilable(Symbol))

            # The entity was not active.
            ENTITY_NOT_ACTIVE = T.let(:entity_not_active, T.nilable(Symbol))

            # The transaction was not allowed.
            TRANSACTION_NOT_ALLOWED = T.let(:transaction_not_allowed, T.nilable(Symbol))

            # The webhook was denied.
            WEBHOOK_DENIED = T.let(:webhook_denied, T.nilable(Symbol))

            # The webhook timed out.
            WEBHOOK_TIMED_OUT = T.let(:webhook_timed_out, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class DeviceChannel < Increase::Enum
            abstract!

            # The authentication attempt was made from an app.
            APP = T.let(:app, T.nilable(Symbol))

            # The authentication attempt was made from a browser.
            BROWSER = T.let(:browser, T.nilable(Symbol))

            # The authentication attempt was initiated by the 3DS Requestor.
            THREE_DS_REQUESTOR_INITIATED = T.let(:three_ds_requestor_initiated, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Status < Increase::Enum
            abstract!

            # The authentication attempt was denied.
            DENIED = :denied

            # The authentication attempt was authenticated with a challenge.
            AUTHENTICATED_WITH_CHALLENGE = :authenticated_with_challenge

            # The authentication attempt was authenticated without a challenge.
            AUTHENTICATED_WITHOUT_CHALLENGE = :authenticated_without_challenge

            # The authentication attempt is awaiting a challenge.
            AWAITING_CHALLENGE = :awaiting_challenge

            # The authentication attempt is validating a challenge.
            VALIDATING_CHALLENGE = :validating_challenge

            # The authentication attempt was canceled.
            CANCELED = :canceled

            # The authentication attempt timed out while awaiting a challenge.
            TIMED_OUT_AWAITING_CHALLENGE = :timed_out_awaiting_challenge

            # The authentication attempt errored.
            ERRORED = :errored

            # The authentication attempt exceeded the attempt threshold.
            EXCEEDED_ATTEMPT_THRESHOLD = :exceeded_attempt_threshold

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_AUTHENTICATION = :card_authentication

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class CardAuthorization < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def actioner
          end

          sig { params(_: Symbol).returns(Symbol) }
          def actioner=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def digital_wallet_token_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def digital_wallet_token_id=(_)
          end

          sig { returns(Symbol) }
          def direction
          end

          sig { params(_: Symbol).returns(Symbol) }
          def direction=(_)
          end

          sig { returns(Time) }
          def expires_at
          end

          sig { params(_: Time).returns(Time) }
          def expires_at=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_city=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_descriptor
          end

          sig { params(_: String).returns(String) }
          def merchant_descriptor=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails) }
          def network_details
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails)
              .returns(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails)
          end
          def network_details=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers)
              .returns(Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def network_risk_score
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def network_risk_score=(_)
          end

          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def physical_card_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def physical_card_id=(_)
          end

          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          sig { returns(Symbol) }
          def processing_category
          end

          sig { params(_: Symbol).returns(Symbol) }
          def processing_category=(_)
          end

          sig { returns(T.nilable(String)) }
          def real_time_decision_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def real_time_decision_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def terminal_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification) }
          def verification
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardAuthorization::Verification)
              .returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification)
          end
          def verification=(_)
          end

          sig do
            params(
              id: String,
              actioner: Symbol,
              amount: Integer,
              card_payment_id: String,
              currency: Symbol,
              digital_wallet_token_id: T.nilable(String),
              direction: Symbol,
              expires_at: Time,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails,
              network_identifiers: Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers,
              network_risk_score: T.nilable(Integer),
              pending_transaction_id: T.nilable(String),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Symbol,
              real_time_decision_id: T.nilable(String),
              terminal_id: T.nilable(String),
              type: Symbol,
              verification: Increase::Models::CardPayment::Element::CardAuthorization::Verification
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            actioner:,
            amount:,
            card_payment_id:,
            currency:,
            digital_wallet_token_id:,
            direction:,
            expires_at:,
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
            pending_transaction_id:,
            physical_card_id:,
            presentment_amount:,
            presentment_currency:,
            processing_category:,
            real_time_decision_id:,
            terminal_id:,
            type:,
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
                  digital_wallet_token_id: T.nilable(String),
                  direction: Symbol,
                  expires_at: Time,
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: T.nilable(String),
                  merchant_country: String,
                  merchant_descriptor: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network_details: Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails,
                  network_identifiers: Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  pending_transaction_id: T.nilable(String),
                  physical_card_id: T.nilable(String),
                  presentment_amount: Integer,
                  presentment_currency: String,
                  processing_category: Symbol,
                  real_time_decision_id: T.nilable(String),
                  terminal_id: T.nilable(String),
                  type: Symbol,
                  verification: Increase::Models::CardPayment::Element::CardAuthorization::Verification
                }
              )
          end
          def to_hash
          end

          class Actioner < Increase::Enum
            abstract!

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Direction < Increase::Enum
            abstract!

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class NetworkDetails < Increase::BaseModel
            sig { returns(Symbol) }
            def category
            end

            sig { params(_: Symbol).returns(Symbol) }
            def category=(_)
            end

            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa)) }
            def visa
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa))
            end
            def visa=(_)
            end

            sig do
              params(
                category: Symbol,
                visa: T.nilable(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa)
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
                    visa: T.nilable(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            class Category < Increase::Enum
              abstract!

              # Visa
              VISA = :visa

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class Visa < Increase::BaseModel
              sig { returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def stand_in_processing_reason
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def stand_in_processing_reason=(_)
              end

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

              class ElectronicCommerceIndicator < Increase::Enum
                abstract!

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = T.let(:mail_phone_order, T.nilable(Symbol))

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = T.let(:recurring, T.nilable(Symbol))

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = T.let(:installment, T.nilable(Symbol))

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = T.let(:unknown_mail_phone_order, T.nilable(Symbol))

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = T.let(:secure_electronic_commerce, T.nilable(Symbol))

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT = T.let(
                  :non_authenticated_security_transaction_at_3ds_capable_merchant, T.nilable(Symbol)
                )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = T.let(
                  :non_authenticated_security_transaction,
                  T.nilable(Symbol)
                )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = T.let(:non_secure_transaction, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class PointOfServiceEntryMode < Increase::Enum
                abstract!

                # Unknown
                UNKNOWN = T.let(:unknown, T.nilable(Symbol))

                # Manual key entry
                MANUAL = T.let(:manual, T.nilable(Symbol))

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = T.let(:magnetic_stripe_no_cvv, T.nilable(Symbol))

                # Optical code
                OPTICAL_CODE = T.let(:optical_code, T.nilable(Symbol))

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = T.let(:integrated_circuit_card, T.nilable(Symbol))

                # Contactless read of chip card
                CONTACTLESS = T.let(:contactless, T.nilable(Symbol))

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = T.let(:credential_on_file, T.nilable(Symbol))

                # Magnetic stripe read
                MAGNETIC_STRIPE = T.let(:magnetic_stripe, T.nilable(Symbol))

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = T.let(:contactless_magnetic_stripe, T.nilable(Symbol))

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = T.let(:integrated_circuit_card_no_cvv, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class StandInProcessingReason < Increase::Enum
                abstract!

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = T.let(:issuer_error, T.nilable(Symbol))

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = T.let(:invalid_physical_card, T.nilable(Symbol))

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = T.let(
                  :invalid_cardholder_authentication_verification_value, T.nilable(Symbol)
                )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = T.let(:internal_visa_error, T.nilable(Symbol))

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = T.let(
                  :merchant_transaction_advisory_service_authentication_required, T.nilable(Symbol)
                )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = T.let(
                  :payment_fraud_disruption_acquirer_block,
                  T.nilable(Symbol)
                )

                # An unspecific reason for stand-in processing.
                OTHER = T.let(:other, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

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

          class ProcessingCategory < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_AUTHORIZATION = :card_authorization

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Verification < Increase::BaseModel
            sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode) }
            def card_verification_code
            end

            sig do
              params(_: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode)
                .returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode)
            end
            def card_verification_code=(_)
            end

            sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress) }
            def cardholder_address
            end

            sig do
              params(_: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress)
                .returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress)
            end
            def cardholder_address=(_)
            end

            sig do
              params(
                card_verification_code: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode,
                cardholder_address: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress
              )
                .returns(T.attached_class)
            end
            def self.new(card_verification_code:, cardholder_address:)
            end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress
                  }
                )
            end
            def to_hash
            end

            class CardVerificationCode < Increase::BaseModel
              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

              sig { params(result: Symbol).returns(T.attached_class) }
              def self.new(result:)
              end

              sig { override.returns({result: Symbol}) }
              def to_hash
              end

              class Result < Increase::Enum
                abstract!

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class CardholderAddress < Increase::BaseModel
              sig { returns(T.nilable(String)) }
              def actual_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def actual_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_postal_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def provided_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def provided_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_postal_code=(_)
              end

              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

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

              class Result < Increase::Enum
                abstract!

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

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end
        end

        class CardAuthorizationExpiration < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def card_authorization_id
          end

          sig { params(_: String).returns(String) }
          def card_authorization_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Integer) }
          def expired_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def expired_amount=(_)
          end

          sig { returns(Symbol) }
          def network
          end

          sig { params(_: Symbol).returns(Symbol) }
          def network=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              id: String,
              card_authorization_id: String,
              currency: Symbol,
              expired_amount: Integer,
              network: Symbol,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(id:, card_authorization_id:, currency:, expired_amount:, network:, type:)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  card_authorization_id: String,
                  currency: Symbol,
                  expired_amount: Integer,
                  network: Symbol,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Network < Increase::Enum
            abstract!

            # Visa
            VISA = :visa

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_AUTHORIZATION_EXPIRATION = :card_authorization_expiration

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class CardDecline < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def actioner
          end

          sig { params(_: Symbol).returns(Symbol) }
          def actioner=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def declined_transaction_id
          end

          sig { params(_: String).returns(String) }
          def declined_transaction_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def digital_wallet_token_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def digital_wallet_token_id=(_)
          end

          sig { returns(Symbol) }
          def direction
          end

          sig { params(_: Symbol).returns(Symbol) }
          def direction=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_city=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_descriptor
          end

          sig { params(_: String).returns(String) }
          def merchant_descriptor=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails) }
          def network_details
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardDecline::NetworkDetails)
              .returns(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails)
          end
          def network_details=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers)
              .returns(Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def network_risk_score
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def network_risk_score=(_)
          end

          sig { returns(T.nilable(String)) }
          def physical_card_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def physical_card_id=(_)
          end

          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          sig { returns(Symbol) }
          def processing_category
          end

          sig { params(_: Symbol).returns(Symbol) }
          def processing_category=(_)
          end

          sig { returns(T.nilable(String)) }
          def real_time_decision_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def real_time_decision_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def real_time_decision_reason
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def real_time_decision_reason=(_)
          end

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          sig { returns(T.nilable(String)) }
          def terminal_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardDecline::Verification) }
          def verification
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardDecline::Verification)
              .returns(Increase::Models::CardPayment::Element::CardDecline::Verification)
          end
          def verification=(_)
          end

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
              network_details: Increase::Models::CardPayment::Element::CardDecline::NetworkDetails,
              network_identifiers: Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers,
              network_risk_score: T.nilable(Integer),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Symbol,
              real_time_decision_id: T.nilable(String),
              real_time_decision_reason: T.nilable(Symbol),
              reason: Symbol,
              terminal_id: T.nilable(String),
              verification: Increase::Models::CardPayment::Element::CardDecline::Verification
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
                  network_details: Increase::Models::CardPayment::Element::CardDecline::NetworkDetails,
                  network_identifiers: Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  physical_card_id: T.nilable(String),
                  presentment_amount: Integer,
                  presentment_currency: String,
                  processing_category: Symbol,
                  real_time_decision_id: T.nilable(String),
                  real_time_decision_reason: T.nilable(Symbol),
                  reason: Symbol,
                  terminal_id: T.nilable(String),
                  verification: Increase::Models::CardPayment::Element::CardDecline::Verification
                }
              )
          end
          def to_hash
          end

          class Actioner < Increase::Enum
            abstract!

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Direction < Increase::Enum
            abstract!

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class NetworkDetails < Increase::BaseModel
            sig { returns(Symbol) }
            def category
            end

            sig { params(_: Symbol).returns(Symbol) }
            def category=(_)
            end

            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa)) }
            def visa
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa))
            end
            def visa=(_)
            end

            sig do
              params(
                category: Symbol,
                visa: T.nilable(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa)
              )
                .returns(T.attached_class)
            end
            def self.new(category:, visa:)
            end

            sig do
              override
                .returns(
                  {category: Symbol, visa: T.nilable(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa)}
                )
            end
            def to_hash
            end

            class Category < Increase::Enum
              abstract!

              # Visa
              VISA = :visa

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class Visa < Increase::BaseModel
              sig { returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def stand_in_processing_reason
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def stand_in_processing_reason=(_)
              end

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

              class ElectronicCommerceIndicator < Increase::Enum
                abstract!

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = T.let(:mail_phone_order, T.nilable(Symbol))

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = T.let(:recurring, T.nilable(Symbol))

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = T.let(:installment, T.nilable(Symbol))

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = T.let(:unknown_mail_phone_order, T.nilable(Symbol))

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = T.let(:secure_electronic_commerce, T.nilable(Symbol))

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT = T.let(
                  :non_authenticated_security_transaction_at_3ds_capable_merchant, T.nilable(Symbol)
                )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = T.let(
                  :non_authenticated_security_transaction,
                  T.nilable(Symbol)
                )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = T.let(:non_secure_transaction, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class PointOfServiceEntryMode < Increase::Enum
                abstract!

                # Unknown
                UNKNOWN = T.let(:unknown, T.nilable(Symbol))

                # Manual key entry
                MANUAL = T.let(:manual, T.nilable(Symbol))

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = T.let(:magnetic_stripe_no_cvv, T.nilable(Symbol))

                # Optical code
                OPTICAL_CODE = T.let(:optical_code, T.nilable(Symbol))

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = T.let(:integrated_circuit_card, T.nilable(Symbol))

                # Contactless read of chip card
                CONTACTLESS = T.let(:contactless, T.nilable(Symbol))

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = T.let(:credential_on_file, T.nilable(Symbol))

                # Magnetic stripe read
                MAGNETIC_STRIPE = T.let(:magnetic_stripe, T.nilable(Symbol))

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = T.let(:contactless_magnetic_stripe, T.nilable(Symbol))

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = T.let(:integrated_circuit_card_no_cvv, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class StandInProcessingReason < Increase::Enum
                abstract!

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = T.let(:issuer_error, T.nilable(Symbol))

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = T.let(:invalid_physical_card, T.nilable(Symbol))

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = T.let(
                  :invalid_cardholder_authentication_verification_value, T.nilable(Symbol)
                )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = T.let(:internal_visa_error, T.nilable(Symbol))

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = T.let(
                  :merchant_transaction_advisory_service_authentication_required, T.nilable(Symbol)
                )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = T.let(
                  :payment_fraud_disruption_acquirer_block,
                  T.nilable(Symbol)
                )

                # An unspecific reason for stand-in processing.
                OTHER = T.let(:other, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

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

          class ProcessingCategory < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class RealTimeDecisionReason < Increase::Enum
            abstract!

            # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
            INSUFFICIENT_FUNDS = T.let(:insufficient_funds, T.nilable(Symbol))

            # This type of transaction is not allowed for this card. This transaction should not be retried.
            TRANSACTION_NEVER_ALLOWED = T.let(:transaction_never_allowed, T.nilable(Symbol))

            # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
            EXCEEDS_APPROVAL_LIMIT = T.let(:exceeds_approval_limit, T.nilable(Symbol))

            # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
            CARD_TEMPORARILY_DISABLED = T.let(:card_temporarily_disabled, T.nilable(Symbol))

            # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
            SUSPECTED_FRAUD = T.let(:suspected_fraud, T.nilable(Symbol))

            # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
            OTHER = T.let(:other, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Reason < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Verification < Increase::BaseModel
            sig { returns(Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode) }
            def card_verification_code
            end

            sig do
              params(_: Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode)
                .returns(Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode)
            end
            def card_verification_code=(_)
            end

            sig { returns(Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress) }
            def cardholder_address
            end

            sig do
              params(_: Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress)
                .returns(Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress)
            end
            def cardholder_address=(_)
            end

            sig do
              params(
                card_verification_code: Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode,
                cardholder_address: Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress
              )
                .returns(T.attached_class)
            end
            def self.new(card_verification_code:, cardholder_address:)
            end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress
                  }
                )
            end
            def to_hash
            end

            class CardVerificationCode < Increase::BaseModel
              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

              sig { params(result: Symbol).returns(T.attached_class) }
              def self.new(result:)
              end

              sig { override.returns({result: Symbol}) }
              def to_hash
              end

              class Result < Increase::Enum
                abstract!

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class CardholderAddress < Increase::BaseModel
              sig { returns(T.nilable(String)) }
              def actual_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def actual_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_postal_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def provided_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def provided_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_postal_code=(_)
              end

              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

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

              class Result < Increase::Enum
                abstract!

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

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end
        end

        class CardFuelConfirmation < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def card_authorization_id
          end

          sig { params(_: String).returns(String) }
          def card_authorization_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Symbol) }
          def network
          end

          sig { params(_: Symbol).returns(Symbol) }
          def network=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers)
              .returns(Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { returns(Integer) }
          def updated_authorization_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def updated_authorization_amount=(_)
          end

          sig do
            params(
              id: String,
              card_authorization_id: String,
              currency: Symbol,
              network: Symbol,
              network_identifiers: Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers,
              pending_transaction_id: T.nilable(String),
              type: Symbol,
              updated_authorization_amount: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            card_authorization_id:,
            currency:,
            network:,
            network_identifiers:,
            pending_transaction_id:,
            type:,
            updated_authorization_amount:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  card_authorization_id: String,
                  currency: Symbol,
                  network: Symbol,
                  network_identifiers: Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers,
                  pending_transaction_id: T.nilable(String),
                  type: Symbol,
                  updated_authorization_amount: Integer
                }
              )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Network < Increase::Enum
            abstract!

            # Visa
            VISA = :visa

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

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

          class Type < Increase::Enum
            abstract!

            CARD_FUEL_CONFIRMATION = :card_fuel_confirmation

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class CardIncrement < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def actioner
          end

          sig { params(_: Symbol).returns(Symbol) }
          def actioner=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def card_authorization_id
          end

          sig { params(_: String).returns(String) }
          def card_authorization_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Symbol) }
          def network
          end

          sig { params(_: Symbol).returns(Symbol) }
          def network=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers)
              .returns(Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def network_risk_score
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def network_risk_score=(_)
          end

          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def real_time_decision_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def real_time_decision_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { returns(Integer) }
          def updated_authorization_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def updated_authorization_amount=(_)
          end

          sig do
            params(
              id: String,
              actioner: Symbol,
              amount: Integer,
              card_authorization_id: String,
              currency: Symbol,
              network: Symbol,
              network_identifiers: Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers,
              network_risk_score: T.nilable(Integer),
              pending_transaction_id: T.nilable(String),
              real_time_decision_id: T.nilable(String),
              type: Symbol,
              updated_authorization_amount: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            actioner:,
            amount:,
            card_authorization_id:,
            currency:,
            network:,
            network_identifiers:,
            network_risk_score:,
            pending_transaction_id:,
            real_time_decision_id:,
            type:,
            updated_authorization_amount:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  actioner: Symbol,
                  amount: Integer,
                  card_authorization_id: String,
                  currency: Symbol,
                  network: Symbol,
                  network_identifiers: Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  pending_transaction_id: T.nilable(String),
                  real_time_decision_id: T.nilable(String),
                  type: Symbol,
                  updated_authorization_amount: Integer
                }
              )
          end
          def to_hash
          end

          class Actioner < Increase::Enum
            abstract!

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Network < Increase::Enum
            abstract!

            # Visa
            VISA = :visa

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

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

          class Type < Increase::Enum
            abstract!

            CARD_INCREMENT = :card_increment

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class CardRefund < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::Cashback)) }
          def cashback
          end

          sig do
            params(_: T.nilable(Increase::Models::CardPayment::Element::CardRefund::Cashback))
              .returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::Cashback))
          end
          def cashback=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::Interchange)) }
          def interchange
          end

          sig do
            params(_: T.nilable(Increase::Models::CardPayment::Element::CardRefund::Interchange))
              .returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::Interchange))
          end
          def interchange=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(String) }
          def merchant_city
          end

          sig { params(_: String).returns(String) }
          def merchant_city=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_name
          end

          sig { params(_: String).returns(String) }
          def merchant_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers)
              .returns(Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails)) }
          def purchase_details
          end

          sig do
            params(_: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails))
              .returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails))
          end
          def purchase_details=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              id: String,
              amount: Integer,
              card_payment_id: String,
              cashback: T.nilable(Increase::Models::CardPayment::Element::CardRefund::Cashback),
              currency: Symbol,
              interchange: T.nilable(Increase::Models::CardPayment::Element::CardRefund::Interchange),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: String,
              merchant_country: String,
              merchant_name: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_identifiers: Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers,
              presentment_amount: Integer,
              presentment_currency: String,
              purchase_details: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails),
              transaction_id: String,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            card_payment_id:,
            cashback:,
            currency:,
            interchange:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_city:,
            merchant_country:,
            merchant_name:,
            merchant_postal_code:,
            merchant_state:,
            network_identifiers:,
            presentment_amount:,
            presentment_currency:,
            purchase_details:,
            transaction_id:,
            type:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  card_payment_id: String,
                  cashback: T.nilable(Increase::Models::CardPayment::Element::CardRefund::Cashback),
                  currency: Symbol,
                  interchange: T.nilable(Increase::Models::CardPayment::Element::CardRefund::Interchange),
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: String,
                  merchant_country: String,
                  merchant_name: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network_identifiers: Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers,
                  presentment_amount: Integer,
                  presentment_currency: String,
                  purchase_details: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails),
                  transaction_id: String,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class Cashback < Increase::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(Symbol) }
            def currency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def currency=(_)
            end

            sig { params(amount: String, currency: Symbol).returns(T.attached_class) }
            def self.new(amount:, currency:)
            end

            sig { override.returns({amount: String, currency: Symbol}) }
            def to_hash
            end

            class Currency < Increase::Enum
              abstract!

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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Interchange < Increase::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def code=(_)
            end

            sig { returns(Symbol) }
            def currency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def currency=(_)
            end

            sig do
              params(amount: String, code: T.nilable(String), currency: Symbol).returns(T.attached_class)
            end
            def self.new(amount:, code:, currency:)
            end

            sig { override.returns({amount: String, code: T.nilable(String), currency: Symbol}) }
            def to_hash
            end

            class Currency < Increase::Enum
              abstract!

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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(String) }
            def acquirer_business_id
            end

            sig { params(_: String).returns(String) }
            def acquirer_business_id=(_)
            end

            sig { returns(String) }
            def acquirer_reference_number
            end

            sig { params(_: String).returns(String) }
            def acquirer_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            sig do
              params(
                acquirer_business_id: String,
                acquirer_reference_number: String,
                transaction_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(acquirer_business_id:, acquirer_reference_number:, transaction_id:)
            end

            sig do
              override
                .returns(
                  {
                    acquirer_business_id: String,
                    acquirer_reference_number: String,
                    transaction_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          class PurchaseDetails < Increase::BaseModel
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental)) }
            def car_rental
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental))
            end
            def car_rental=(_)
            end

            sig { returns(T.nilable(String)) }
            def customer_reference_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def customer_reference_identifier=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def local_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def local_tax_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def local_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def local_tax_currency=(_)
            end

            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging)) }
            def lodging
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging))
            end
            def lodging=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def national_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def national_tax_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def national_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def national_tax_currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def purchase_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_identifier=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def purchase_identifier_format
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def purchase_identifier_format=(_)
            end

            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel)) }
            def travel
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel))
            end
            def travel=(_)
            end

            sig do
              params(
                car_rental: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental),
                customer_reference_identifier: T.nilable(String),
                local_tax_amount: T.nilable(Integer),
                local_tax_currency: T.nilable(String),
                lodging: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging),
                national_tax_amount: T.nilable(Integer),
                national_tax_currency: T.nilable(String),
                purchase_identifier: T.nilable(String),
                purchase_identifier_format: T.nilable(Symbol),
                travel: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel)
              )
                .returns(T.attached_class)
            end
            def self.new(
              car_rental:,
              customer_reference_identifier:,
              local_tax_amount:,
              local_tax_currency:,
              lodging:,
              national_tax_amount:,
              national_tax_currency:,
              purchase_identifier:,
              purchase_identifier_format:,
              travel:
            )
            end

            sig do
              override
                .returns(
                  {
                    car_rental: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental),
                    customer_reference_identifier: T.nilable(String),
                    local_tax_amount: T.nilable(Integer),
                    local_tax_currency: T.nilable(String),
                    lodging: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging),
                    national_tax_amount: T.nilable(Integer),
                    national_tax_currency: T.nilable(String),
                    purchase_identifier: T.nilable(String),
                    purchase_identifier_format: T.nilable(Symbol),
                    travel: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel)
                  }
                )
            end
            def to_hash
            end

            class CarRental < Increase::BaseModel
              sig { returns(T.nilable(String)) }
              def car_class_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def car_class_code=(_)
              end

              sig { returns(T.nilable(Date)) }
              def checkout_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def checkout_date=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def daily_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_rental_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def daily_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_rental_rate_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def days_rented
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def days_rented=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def extra_charges
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def extra_charges=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def fuel_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def fuel_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def fuel_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def fuel_charges_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def insurance_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def insurance_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def insurance_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def insurance_charges_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def no_show_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def no_show_indicator=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency=(_)
              end

              sig { returns(T.nilable(String)) }
              def renter_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def renter_name=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def weekly_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def weekly_rental_rate_currency=(_)
              end

              sig do
                params(
                  car_class_code: T.nilable(String),
                  checkout_date: T.nilable(Date),
                  daily_rental_rate_amount: T.nilable(Integer),
                  daily_rental_rate_currency: T.nilable(String),
                  days_rented: T.nilable(Integer),
                  extra_charges: T.nilable(Symbol),
                  fuel_charges_amount: T.nilable(Integer),
                  fuel_charges_currency: T.nilable(String),
                  insurance_charges_amount: T.nilable(Integer),
                  insurance_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(Symbol),
                  one_way_drop_off_charges_amount: T.nilable(Integer),
                  one_way_drop_off_charges_currency: T.nilable(String),
                  renter_name: T.nilable(String),
                  weekly_rental_rate_amount: T.nilable(Integer),
                  weekly_rental_rate_currency: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
                car_class_code:,
                checkout_date:,
                daily_rental_rate_amount:,
                daily_rental_rate_currency:,
                days_rented:,
                extra_charges:,
                fuel_charges_amount:,
                fuel_charges_currency:,
                insurance_charges_amount:,
                insurance_charges_currency:,
                no_show_indicator:,
                one_way_drop_off_charges_amount:,
                one_way_drop_off_charges_currency:,
                renter_name:,
                weekly_rental_rate_amount:,
                weekly_rental_rate_currency:
              )
              end

              sig do
                override
                  .returns(
                    {
                      car_class_code: T.nilable(String),
                      checkout_date: T.nilable(Date),
                      daily_rental_rate_amount: T.nilable(Integer),
                      daily_rental_rate_currency: T.nilable(String),
                      days_rented: T.nilable(Integer),
                      extra_charges: T.nilable(Symbol),
                      fuel_charges_amount: T.nilable(Integer),
                      fuel_charges_currency: T.nilable(String),
                      insurance_charges_amount: T.nilable(Integer),
                      insurance_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(Symbol),
                      one_way_drop_off_charges_amount: T.nilable(Integer),
                      one_way_drop_off_charges_currency: T.nilable(String),
                      renter_name: T.nilable(String),
                      weekly_rental_rate_amount: T.nilable(Integer),
                      weekly_rental_rate_currency: T.nilable(String)
                    }
                  )
              end
              def to_hash
              end

              class ExtraCharges < Increase::Enum
                abstract!

                # No extra charge
                NO_EXTRA_CHARGE = T.let(:no_extra_charge, T.nilable(Symbol))

                # Gas
                GAS = T.let(:gas, T.nilable(Symbol))

                # Extra mileage
                EXTRA_MILEAGE = T.let(:extra_mileage, T.nilable(Symbol))

                # Late return
                LATE_RETURN = T.let(:late_return, T.nilable(Symbol))

                # One way service fee
                ONE_WAY_SERVICE_FEE = T.let(:one_way_service_fee, T.nilable(Symbol))

                # Parking violation
                PARKING_VIOLATION = T.let(:parking_violation, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class NoShowIndicator < Increase::Enum
                abstract!

                # Not applicable
                NOT_APPLICABLE = T.let(:not_applicable, T.nilable(Symbol))

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = T.let(:no_show_for_specialized_vehicle, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class Lodging < Increase::BaseModel
              sig { returns(T.nilable(Date)) }
              def check_in_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def check_in_date=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def daily_room_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_room_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def daily_room_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_room_rate_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def extra_charges
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def extra_charges=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def folio_cash_advances_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def folio_cash_advances_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def folio_cash_advances_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def folio_cash_advances_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def food_beverage_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def food_beverage_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def food_beverage_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def food_beverage_charges_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def no_show_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def no_show_indicator=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def prepaid_expenses_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def prepaid_expenses_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def prepaid_expenses_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def prepaid_expenses_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def room_nights
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def room_nights=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def total_room_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_room_tax_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def total_room_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_room_tax_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def total_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_tax_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def total_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_tax_currency=(_)
              end

              sig do
                params(
                  check_in_date: T.nilable(Date),
                  daily_room_rate_amount: T.nilable(Integer),
                  daily_room_rate_currency: T.nilable(String),
                  extra_charges: T.nilable(Symbol),
                  folio_cash_advances_amount: T.nilable(Integer),
                  folio_cash_advances_currency: T.nilable(String),
                  food_beverage_charges_amount: T.nilable(Integer),
                  food_beverage_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(Symbol),
                  prepaid_expenses_amount: T.nilable(Integer),
                  prepaid_expenses_currency: T.nilable(String),
                  room_nights: T.nilable(Integer),
                  total_room_tax_amount: T.nilable(Integer),
                  total_room_tax_currency: T.nilable(String),
                  total_tax_amount: T.nilable(Integer),
                  total_tax_currency: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
                check_in_date:,
                daily_room_rate_amount:,
                daily_room_rate_currency:,
                extra_charges:,
                folio_cash_advances_amount:,
                folio_cash_advances_currency:,
                food_beverage_charges_amount:,
                food_beverage_charges_currency:,
                no_show_indicator:,
                prepaid_expenses_amount:,
                prepaid_expenses_currency:,
                room_nights:,
                total_room_tax_amount:,
                total_room_tax_currency:,
                total_tax_amount:,
                total_tax_currency:
              )
              end

              sig do
                override
                  .returns(
                    {
                      check_in_date: T.nilable(Date),
                      daily_room_rate_amount: T.nilable(Integer),
                      daily_room_rate_currency: T.nilable(String),
                      extra_charges: T.nilable(Symbol),
                      folio_cash_advances_amount: T.nilable(Integer),
                      folio_cash_advances_currency: T.nilable(String),
                      food_beverage_charges_amount: T.nilable(Integer),
                      food_beverage_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(Symbol),
                      prepaid_expenses_amount: T.nilable(Integer),
                      prepaid_expenses_currency: T.nilable(String),
                      room_nights: T.nilable(Integer),
                      total_room_tax_amount: T.nilable(Integer),
                      total_room_tax_currency: T.nilable(String),
                      total_tax_amount: T.nilable(Integer),
                      total_tax_currency: T.nilable(String)
                    }
                  )
              end
              def to_hash
              end

              class ExtraCharges < Increase::Enum
                abstract!

                # No extra charge
                NO_EXTRA_CHARGE = T.let(:no_extra_charge, T.nilable(Symbol))

                # Restaurant
                RESTAURANT = T.let(:restaurant, T.nilable(Symbol))

                # Gift shop
                GIFT_SHOP = T.let(:gift_shop, T.nilable(Symbol))

                # Mini bar
                MINI_BAR = T.let(:mini_bar, T.nilable(Symbol))

                # Telephone
                TELEPHONE = T.let(:telephone, T.nilable(Symbol))

                # Other
                OTHER = T.let(:other, T.nilable(Symbol))

                # Laundry
                LAUNDRY = T.let(:laundry, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class NoShowIndicator < Increase::Enum
                abstract!

                # Not applicable
                NOT_APPLICABLE = T.let(:not_applicable, T.nilable(Symbol))

                # No show
                NO_SHOW = T.let(:no_show, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class PurchaseIdentifierFormat < Increase::Enum
              abstract!

              # Free text
              FREE_TEXT = T.let(:free_text, T.nilable(Symbol))

              # Order number
              ORDER_NUMBER = T.let(:order_number, T.nilable(Symbol))

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = T.let(:rental_agreement_number, T.nilable(Symbol))

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = T.let(:hotel_folio_number, T.nilable(Symbol))

              # Invoice number
              INVOICE_NUMBER = T.let(:invoice_number, T.nilable(Symbol))

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class Travel < Increase::BaseModel
              sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary)) }
              def ancillary
              end

              sig do
                params(
                  _: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary)
                )
                  .returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary))
              end
              def ancillary=(_)
              end

              sig { returns(T.nilable(String)) }
              def computerized_reservation_system
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def computerized_reservation_system=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def credit_reason_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def credit_reason_indicator=(_)
              end

              sig { returns(T.nilable(Date)) }
              def departure_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def departure_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def origination_city_airport_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def origination_city_airport_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def passenger_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def passenger_name=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def restricted_ticket_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def restricted_ticket_indicator=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def ticket_change_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def ticket_change_indicator=(_)
              end

              sig { returns(T.nilable(String)) }
              def ticket_number
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def ticket_number=(_)
              end

              sig { returns(T.nilable(String)) }
              def travel_agency_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def travel_agency_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_name=(_)
              end

              sig do
                returns(
                  T.nilable(T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg])
                )
              end
              def trip_legs
              end

              sig do
                params(
                  _: T.nilable(T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg])
                )
                  .returns(
                    T.nilable(T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg])
                  )
              end
              def trip_legs=(_)
              end

              sig do
                params(
                  ancillary: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary),
                  computerized_reservation_system: T.nilable(String),
                  credit_reason_indicator: T.nilable(Symbol),
                  departure_date: T.nilable(Date),
                  origination_city_airport_code: T.nilable(String),
                  passenger_name: T.nilable(String),
                  restricted_ticket_indicator: T.nilable(Symbol),
                  ticket_change_indicator: T.nilable(Symbol),
                  ticket_number: T.nilable(String),
                  travel_agency_code: T.nilable(String),
                  travel_agency_name: T.nilable(String),
                  trip_legs: T.nilable(T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg])
                )
                  .returns(T.attached_class)
              end
              def self.new(
                ancillary:,
                computerized_reservation_system:,
                credit_reason_indicator:,
                departure_date:,
                origination_city_airport_code:,
                passenger_name:,
                restricted_ticket_indicator:,
                ticket_change_indicator:,
                ticket_number:,
                travel_agency_code:,
                travel_agency_name:,
                trip_legs:
              )
              end

              sig do
                override
                  .returns(
                    {
                      ancillary: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary),
                      computerized_reservation_system: T.nilable(String),
                      credit_reason_indicator: T.nilable(Symbol),
                      departure_date: T.nilable(Date),
                      origination_city_airport_code: T.nilable(String),
                      passenger_name: T.nilable(String),
                      restricted_ticket_indicator: T.nilable(Symbol),
                      ticket_change_indicator: T.nilable(Symbol),
                      ticket_number: T.nilable(String),
                      travel_agency_code: T.nilable(String),
                      travel_agency_name: T.nilable(String),
                      trip_legs: T.nilable(T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg])
                    }
                  )
              end
              def to_hash
              end

              class Ancillary < Increase::BaseModel
                sig { returns(T.nilable(String)) }
                def connected_ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def connected_ticket_document_number=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def credit_reason_indicator
                end

                sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                def credit_reason_indicator=(_)
                end

                sig { returns(T.nilable(String)) }
                def passenger_name_or_description
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def passenger_name_or_description=(_)
                end

                sig do
                  returns(
                    T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                  )
                end
                def services
                end

                sig do
                  params(
                    _: T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                  )
                    .returns(
                      T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                    )
                end
                def services=(_)
                end

                sig { returns(T.nilable(String)) }
                def ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_document_number=(_)
                end

                sig do
                  params(
                    connected_ticket_document_number: T.nilable(String),
                    credit_reason_indicator: T.nilable(Symbol),
                    passenger_name_or_description: T.nilable(String),
                    services: T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service],
                    ticket_document_number: T.nilable(String)
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  connected_ticket_document_number:,
                  credit_reason_indicator:,
                  passenger_name_or_description:,
                  services:,
                  ticket_document_number:
                )
                end

                sig do
                  override
                    .returns(
                      {
                        connected_ticket_document_number: T.nilable(String),
                        credit_reason_indicator: T.nilable(Symbol),
                        passenger_name_or_description: T.nilable(String),
                        services: T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service],
                        ticket_document_number: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end

                class CreditReasonIndicator < Increase::Enum
                  abstract!

                  # No credit
                  NO_CREDIT = T.let(:no_credit, T.nilable(Symbol))

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                    :passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                  )

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                  )

                  # Other
                  OTHER = T.let(:other, T.nilable(Symbol))

                  class << self
                    sig { override.returns(T::Array[Symbol]) }
                    def values
                    end
                  end
                end

                class Service < Increase::BaseModel
                  sig { returns(T.nilable(Symbol)) }
                  def category
                  end

                  sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                  def category=(_)
                  end

                  sig { returns(T.nilable(String)) }
                  def sub_category
                  end

                  sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                  def sub_category=(_)
                  end

                  sig do
                    params(
                      category: T.nilable(Symbol),
                      sub_category: T.nilable(String)
                    ).returns(T.attached_class)
                  end
                  def self.new(category:, sub_category:)
                  end

                  sig { override.returns({category: T.nilable(Symbol), sub_category: T.nilable(String)}) }
                  def to_hash
                  end

                  class Category < Increase::Enum
                    abstract!

                    # None
                    NONE = T.let(:none, T.nilable(Symbol))

                    # Bundled service
                    BUNDLED_SERVICE = T.let(:bundled_service, T.nilable(Symbol))

                    # Baggage fee
                    BAGGAGE_FEE = T.let(:baggage_fee, T.nilable(Symbol))

                    # Change fee
                    CHANGE_FEE = T.let(:change_fee, T.nilable(Symbol))

                    # Cargo
                    CARGO = T.let(:cargo, T.nilable(Symbol))

                    # Carbon offset
                    CARBON_OFFSET = T.let(:carbon_offset, T.nilable(Symbol))

                    # Frequent flyer
                    FREQUENT_FLYER = T.let(:frequent_flyer, T.nilable(Symbol))

                    # Gift card
                    GIFT_CARD = T.let(:gift_card, T.nilable(Symbol))

                    # Ground transport
                    GROUND_TRANSPORT = T.let(:ground_transport, T.nilable(Symbol))

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = T.let(:in_flight_entertainment, T.nilable(Symbol))

                    # Lounge
                    LOUNGE = T.let(:lounge, T.nilable(Symbol))

                    # Medical
                    MEDICAL = T.let(:medical, T.nilable(Symbol))

                    # Meal beverage
                    MEAL_BEVERAGE = T.let(:meal_beverage, T.nilable(Symbol))

                    # Other
                    OTHER = T.let(:other, T.nilable(Symbol))

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = T.let(:passenger_assist_fee, T.nilable(Symbol))

                    # Pets
                    PETS = T.let(:pets, T.nilable(Symbol))

                    # Seat fees
                    SEAT_FEES = T.let(:seat_fees, T.nilable(Symbol))

                    # Standby
                    STANDBY = T.let(:standby, T.nilable(Symbol))

                    # Service fee
                    SERVICE_FEE = T.let(:service_fee, T.nilable(Symbol))

                    # Store
                    STORE = T.let(:store, T.nilable(Symbol))

                    # Travel service
                    TRAVEL_SERVICE = T.let(:travel_service, T.nilable(Symbol))

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = T.let(:unaccompanied_travel, T.nilable(Symbol))

                    # Upgrades
                    UPGRADES = T.let(:upgrades, T.nilable(Symbol))

                    # Wi-fi
                    WIFI = T.let(:wifi, T.nilable(Symbol))

                    class << self
                      sig { override.returns(T::Array[Symbol]) }
                      def values
                      end
                    end
                  end
                end
              end

              class CreditReasonIndicator < Increase::Enum
                abstract!

                # No credit
                NO_CREDIT = T.let(:no_credit, T.nilable(Symbol))

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                  :passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                )

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                  :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                )

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = T.let(:airline_ticket_cancellation, T.nilable(Symbol))

                # Other
                OTHER = T.let(:other, T.nilable(Symbol))

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = T.let(:partial_refund_of_airline_ticket, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class RestrictedTicketIndicator < Increase::Enum
                abstract!

                # No restrictions
                NO_RESTRICTIONS = T.let(:no_restrictions, T.nilable(Symbol))

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = T.let(:restricted_non_refundable_ticket, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class TicketChangeIndicator < Increase::Enum
                abstract!

                # None
                NONE = T.let(:none, T.nilable(Symbol))

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = T.let(:change_to_existing_ticket, T.nilable(Symbol))

                # New ticket
                NEW_TICKET = T.let(:new_ticket, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class TripLeg < Increase::BaseModel
                sig { returns(T.nilable(String)) }
                def carrier_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def destination_city_airport_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def destination_city_airport_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def fare_basis_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def fare_basis_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def flight_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def flight_number=(_)
                end

                sig { returns(T.nilable(String)) }
                def service_class
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def service_class=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def stop_over_code
                end

                sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                def stop_over_code=(_)
                end

                sig do
                  params(
                    carrier_code: T.nilable(String),
                    destination_city_airport_code: T.nilable(String),
                    fare_basis_code: T.nilable(String),
                    flight_number: T.nilable(String),
                    service_class: T.nilable(String),
                    stop_over_code: T.nilable(Symbol)
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  carrier_code:,
                  destination_city_airport_code:,
                  fare_basis_code:,
                  flight_number:,
                  service_class:,
                  stop_over_code:
                )
                end

                sig do
                  override
                    .returns(
                      {
                        carrier_code: T.nilable(String),
                        destination_city_airport_code: T.nilable(String),
                        fare_basis_code: T.nilable(String),
                        flight_number: T.nilable(String),
                        service_class: T.nilable(String),
                        stop_over_code: T.nilable(Symbol)
                      }
                    )
                end
                def to_hash
                end

                class StopOverCode < Increase::Enum
                  abstract!

                  # None
                  NONE = T.let(:none, T.nilable(Symbol))

                  # Stop over allowed
                  STOP_OVER_ALLOWED = T.let(:stop_over_allowed, T.nilable(Symbol))

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = T.let(:stop_over_not_allowed, T.nilable(Symbol))

                  class << self
                    sig { override.returns(T::Array[Symbol]) }
                    def values
                    end
                  end
                end
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_REFUND = :card_refund

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class CardReversal < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def card_authorization_id
          end

          sig { params(_: String).returns(String) }
          def card_authorization_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_city=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_country
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_descriptor
          end

          sig { params(_: String).returns(String) }
          def merchant_descriptor=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Symbol) }
          def network
          end

          sig { params(_: Symbol).returns(Symbol) }
          def network=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers)
              .returns(Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          sig { returns(Integer) }
          def reversal_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def reversal_amount=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def reversal_reason
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def reversal_reason=(_)
          end

          sig { returns(T.nilable(String)) }
          def terminal_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { returns(Integer) }
          def updated_authorization_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def updated_authorization_amount=(_)
          end

          sig do
            params(
              id: String,
              card_authorization_id: String,
              currency: Symbol,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: T.nilable(String),
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network: Symbol,
              network_identifiers: Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers,
              pending_transaction_id: T.nilable(String),
              reversal_amount: Integer,
              reversal_reason: T.nilable(Symbol),
              terminal_id: T.nilable(String),
              type: Symbol,
              updated_authorization_amount: Integer
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            card_authorization_id:,
            currency:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_city:,
            merchant_country:,
            merchant_descriptor:,
            merchant_postal_code:,
            merchant_state:,
            network:,
            network_identifiers:,
            pending_transaction_id:,
            reversal_amount:,
            reversal_reason:,
            terminal_id:,
            type:,
            updated_authorization_amount:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  card_authorization_id: String,
                  currency: Symbol,
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: T.nilable(String),
                  merchant_country: T.nilable(String),
                  merchant_descriptor: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network: Symbol,
                  network_identifiers: Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers,
                  pending_transaction_id: T.nilable(String),
                  reversal_amount: Integer,
                  reversal_reason: T.nilable(Symbol),
                  terminal_id: T.nilable(String),
                  type: Symbol,
                  updated_authorization_amount: Integer
                }
              )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Network < Increase::Enum
            abstract!

            # Visa
            VISA = :visa

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

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

          class ReversalReason < Increase::Enum
            abstract!

            # The Card Reversal was initiated at the customer's request.
            REVERSED_BY_CUSTOMER = T.let(:reversed_by_customer, T.nilable(Symbol))

            # The Card Reversal was initiated by the network or acquirer.
            REVERSED_BY_NETWORK_OR_ACQUIRER = T.let(:reversed_by_network_or_acquirer, T.nilable(Symbol))

            # The Card Reversal was initiated by the point of sale device.
            REVERSED_BY_POINT_OF_SALE = T.let(:reversed_by_point_of_sale, T.nilable(Symbol))

            # The Card Reversal was a partial reversal, for any reason.
            PARTIAL_REVERSAL = T.let(:partial_reversal, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_REVERSAL = :card_reversal

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class CardSettlement < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def card_authorization
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def card_authorization=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Cashback)) }
          def cashback
          end

          sig do
            params(_: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Cashback))
              .returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Cashback))
          end
          def cashback=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Interchange)) }
          def interchange
          end

          sig do
            params(_: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Interchange))
              .returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Interchange))
          end
          def interchange=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(String) }
          def merchant_city
          end

          sig { params(_: String).returns(String) }
          def merchant_city=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_name
          end

          sig { params(_: String).returns(String) }
          def merchant_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers)
              .returns(Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails)) }
          def purchase_details
          end

          sig do
            params(_: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails))
              .returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails))
          end
          def purchase_details=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              id: String,
              amount: Integer,
              card_authorization: T.nilable(String),
              card_payment_id: String,
              cashback: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Cashback),
              currency: Symbol,
              interchange: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Interchange),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: String,
              merchant_country: String,
              merchant_name: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_identifiers: Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers,
              pending_transaction_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              purchase_details: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails),
              transaction_id: String,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            card_authorization:,
            card_payment_id:,
            cashback:,
            currency:,
            interchange:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_city:,
            merchant_country:,
            merchant_name:,
            merchant_postal_code:,
            merchant_state:,
            network_identifiers:,
            pending_transaction_id:,
            presentment_amount:,
            presentment_currency:,
            purchase_details:,
            transaction_id:,
            type:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  card_authorization: T.nilable(String),
                  card_payment_id: String,
                  cashback: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Cashback),
                  currency: Symbol,
                  interchange: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Interchange),
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: String,
                  merchant_country: String,
                  merchant_name: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network_identifiers: Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers,
                  pending_transaction_id: T.nilable(String),
                  presentment_amount: Integer,
                  presentment_currency: String,
                  purchase_details: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails),
                  transaction_id: String,
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class Cashback < Increase::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(Symbol) }
            def currency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def currency=(_)
            end

            sig { params(amount: String, currency: Symbol).returns(T.attached_class) }
            def self.new(amount:, currency:)
            end

            sig { override.returns({amount: String, currency: Symbol}) }
            def to_hash
            end

            class Currency < Increase::Enum
              abstract!

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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Interchange < Increase::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def code=(_)
            end

            sig { returns(Symbol) }
            def currency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def currency=(_)
            end

            sig do
              params(amount: String, code: T.nilable(String), currency: Symbol).returns(T.attached_class)
            end
            def self.new(amount:, code:, currency:)
            end

            sig { override.returns({amount: String, code: T.nilable(String), currency: Symbol}) }
            def to_hash
            end

            class Currency < Increase::Enum
              abstract!

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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(String) }
            def acquirer_business_id
            end

            sig { params(_: String).returns(String) }
            def acquirer_business_id=(_)
            end

            sig { returns(String) }
            def acquirer_reference_number
            end

            sig { params(_: String).returns(String) }
            def acquirer_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            sig do
              params(
                acquirer_business_id: String,
                acquirer_reference_number: String,
                transaction_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(acquirer_business_id:, acquirer_reference_number:, transaction_id:)
            end

            sig do
              override
                .returns(
                  {
                    acquirer_business_id: String,
                    acquirer_reference_number: String,
                    transaction_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          class PurchaseDetails < Increase::BaseModel
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental)) }
            def car_rental
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental))
            end
            def car_rental=(_)
            end

            sig { returns(T.nilable(String)) }
            def customer_reference_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def customer_reference_identifier=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def local_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def local_tax_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def local_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def local_tax_currency=(_)
            end

            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging)) }
            def lodging
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging))
            end
            def lodging=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def national_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def national_tax_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def national_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def national_tax_currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def purchase_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_identifier=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def purchase_identifier_format
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def purchase_identifier_format=(_)
            end

            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel)) }
            def travel
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel))
            end
            def travel=(_)
            end

            sig do
              params(
                car_rental: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental),
                customer_reference_identifier: T.nilable(String),
                local_tax_amount: T.nilable(Integer),
                local_tax_currency: T.nilable(String),
                lodging: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging),
                national_tax_amount: T.nilable(Integer),
                national_tax_currency: T.nilable(String),
                purchase_identifier: T.nilable(String),
                purchase_identifier_format: T.nilable(Symbol),
                travel: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel)
              )
                .returns(T.attached_class)
            end
            def self.new(
              car_rental:,
              customer_reference_identifier:,
              local_tax_amount:,
              local_tax_currency:,
              lodging:,
              national_tax_amount:,
              national_tax_currency:,
              purchase_identifier:,
              purchase_identifier_format:,
              travel:
            )
            end

            sig do
              override
                .returns(
                  {
                    car_rental: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental),
                    customer_reference_identifier: T.nilable(String),
                    local_tax_amount: T.nilable(Integer),
                    local_tax_currency: T.nilable(String),
                    lodging: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging),
                    national_tax_amount: T.nilable(Integer),
                    national_tax_currency: T.nilable(String),
                    purchase_identifier: T.nilable(String),
                    purchase_identifier_format: T.nilable(Symbol),
                    travel: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel)
                  }
                )
            end
            def to_hash
            end

            class CarRental < Increase::BaseModel
              sig { returns(T.nilable(String)) }
              def car_class_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def car_class_code=(_)
              end

              sig { returns(T.nilable(Date)) }
              def checkout_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def checkout_date=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def daily_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_rental_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def daily_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_rental_rate_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def days_rented
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def days_rented=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def extra_charges
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def extra_charges=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def fuel_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def fuel_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def fuel_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def fuel_charges_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def insurance_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def insurance_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def insurance_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def insurance_charges_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def no_show_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def no_show_indicator=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency=(_)
              end

              sig { returns(T.nilable(String)) }
              def renter_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def renter_name=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def weekly_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def weekly_rental_rate_currency=(_)
              end

              sig do
                params(
                  car_class_code: T.nilable(String),
                  checkout_date: T.nilable(Date),
                  daily_rental_rate_amount: T.nilable(Integer),
                  daily_rental_rate_currency: T.nilable(String),
                  days_rented: T.nilable(Integer),
                  extra_charges: T.nilable(Symbol),
                  fuel_charges_amount: T.nilable(Integer),
                  fuel_charges_currency: T.nilable(String),
                  insurance_charges_amount: T.nilable(Integer),
                  insurance_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(Symbol),
                  one_way_drop_off_charges_amount: T.nilable(Integer),
                  one_way_drop_off_charges_currency: T.nilable(String),
                  renter_name: T.nilable(String),
                  weekly_rental_rate_amount: T.nilable(Integer),
                  weekly_rental_rate_currency: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
                car_class_code:,
                checkout_date:,
                daily_rental_rate_amount:,
                daily_rental_rate_currency:,
                days_rented:,
                extra_charges:,
                fuel_charges_amount:,
                fuel_charges_currency:,
                insurance_charges_amount:,
                insurance_charges_currency:,
                no_show_indicator:,
                one_way_drop_off_charges_amount:,
                one_way_drop_off_charges_currency:,
                renter_name:,
                weekly_rental_rate_amount:,
                weekly_rental_rate_currency:
              )
              end

              sig do
                override
                  .returns(
                    {
                      car_class_code: T.nilable(String),
                      checkout_date: T.nilable(Date),
                      daily_rental_rate_amount: T.nilable(Integer),
                      daily_rental_rate_currency: T.nilable(String),
                      days_rented: T.nilable(Integer),
                      extra_charges: T.nilable(Symbol),
                      fuel_charges_amount: T.nilable(Integer),
                      fuel_charges_currency: T.nilable(String),
                      insurance_charges_amount: T.nilable(Integer),
                      insurance_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(Symbol),
                      one_way_drop_off_charges_amount: T.nilable(Integer),
                      one_way_drop_off_charges_currency: T.nilable(String),
                      renter_name: T.nilable(String),
                      weekly_rental_rate_amount: T.nilable(Integer),
                      weekly_rental_rate_currency: T.nilable(String)
                    }
                  )
              end
              def to_hash
              end

              class ExtraCharges < Increase::Enum
                abstract!

                # No extra charge
                NO_EXTRA_CHARGE = T.let(:no_extra_charge, T.nilable(Symbol))

                # Gas
                GAS = T.let(:gas, T.nilable(Symbol))

                # Extra mileage
                EXTRA_MILEAGE = T.let(:extra_mileage, T.nilable(Symbol))

                # Late return
                LATE_RETURN = T.let(:late_return, T.nilable(Symbol))

                # One way service fee
                ONE_WAY_SERVICE_FEE = T.let(:one_way_service_fee, T.nilable(Symbol))

                # Parking violation
                PARKING_VIOLATION = T.let(:parking_violation, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class NoShowIndicator < Increase::Enum
                abstract!

                # Not applicable
                NOT_APPLICABLE = T.let(:not_applicable, T.nilable(Symbol))

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = T.let(:no_show_for_specialized_vehicle, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class Lodging < Increase::BaseModel
              sig { returns(T.nilable(Date)) }
              def check_in_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def check_in_date=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def daily_room_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_room_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def daily_room_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_room_rate_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def extra_charges
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def extra_charges=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def folio_cash_advances_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def folio_cash_advances_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def folio_cash_advances_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def folio_cash_advances_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def food_beverage_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def food_beverage_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def food_beverage_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def food_beverage_charges_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def no_show_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def no_show_indicator=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def prepaid_expenses_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def prepaid_expenses_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def prepaid_expenses_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def prepaid_expenses_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def room_nights
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def room_nights=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def total_room_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_room_tax_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def total_room_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_room_tax_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def total_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_tax_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def total_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_tax_currency=(_)
              end

              sig do
                params(
                  check_in_date: T.nilable(Date),
                  daily_room_rate_amount: T.nilable(Integer),
                  daily_room_rate_currency: T.nilable(String),
                  extra_charges: T.nilable(Symbol),
                  folio_cash_advances_amount: T.nilable(Integer),
                  folio_cash_advances_currency: T.nilable(String),
                  food_beverage_charges_amount: T.nilable(Integer),
                  food_beverage_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(Symbol),
                  prepaid_expenses_amount: T.nilable(Integer),
                  prepaid_expenses_currency: T.nilable(String),
                  room_nights: T.nilable(Integer),
                  total_room_tax_amount: T.nilable(Integer),
                  total_room_tax_currency: T.nilable(String),
                  total_tax_amount: T.nilable(Integer),
                  total_tax_currency: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
                check_in_date:,
                daily_room_rate_amount:,
                daily_room_rate_currency:,
                extra_charges:,
                folio_cash_advances_amount:,
                folio_cash_advances_currency:,
                food_beverage_charges_amount:,
                food_beverage_charges_currency:,
                no_show_indicator:,
                prepaid_expenses_amount:,
                prepaid_expenses_currency:,
                room_nights:,
                total_room_tax_amount:,
                total_room_tax_currency:,
                total_tax_amount:,
                total_tax_currency:
              )
              end

              sig do
                override
                  .returns(
                    {
                      check_in_date: T.nilable(Date),
                      daily_room_rate_amount: T.nilable(Integer),
                      daily_room_rate_currency: T.nilable(String),
                      extra_charges: T.nilable(Symbol),
                      folio_cash_advances_amount: T.nilable(Integer),
                      folio_cash_advances_currency: T.nilable(String),
                      food_beverage_charges_amount: T.nilable(Integer),
                      food_beverage_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(Symbol),
                      prepaid_expenses_amount: T.nilable(Integer),
                      prepaid_expenses_currency: T.nilable(String),
                      room_nights: T.nilable(Integer),
                      total_room_tax_amount: T.nilable(Integer),
                      total_room_tax_currency: T.nilable(String),
                      total_tax_amount: T.nilable(Integer),
                      total_tax_currency: T.nilable(String)
                    }
                  )
              end
              def to_hash
              end

              class ExtraCharges < Increase::Enum
                abstract!

                # No extra charge
                NO_EXTRA_CHARGE = T.let(:no_extra_charge, T.nilable(Symbol))

                # Restaurant
                RESTAURANT = T.let(:restaurant, T.nilable(Symbol))

                # Gift shop
                GIFT_SHOP = T.let(:gift_shop, T.nilable(Symbol))

                # Mini bar
                MINI_BAR = T.let(:mini_bar, T.nilable(Symbol))

                # Telephone
                TELEPHONE = T.let(:telephone, T.nilable(Symbol))

                # Other
                OTHER = T.let(:other, T.nilable(Symbol))

                # Laundry
                LAUNDRY = T.let(:laundry, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class NoShowIndicator < Increase::Enum
                abstract!

                # Not applicable
                NOT_APPLICABLE = T.let(:not_applicable, T.nilable(Symbol))

                # No show
                NO_SHOW = T.let(:no_show, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class PurchaseIdentifierFormat < Increase::Enum
              abstract!

              # Free text
              FREE_TEXT = T.let(:free_text, T.nilable(Symbol))

              # Order number
              ORDER_NUMBER = T.let(:order_number, T.nilable(Symbol))

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = T.let(:rental_agreement_number, T.nilable(Symbol))

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = T.let(:hotel_folio_number, T.nilable(Symbol))

              # Invoice number
              INVOICE_NUMBER = T.let(:invoice_number, T.nilable(Symbol))

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class Travel < Increase::BaseModel
              sig do
                returns(
                  T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary)
                )
              end
              def ancillary
              end

              sig do
                params(
                  _: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary)
                )
                  .returns(
                    T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary)
                  )
              end
              def ancillary=(_)
              end

              sig { returns(T.nilable(String)) }
              def computerized_reservation_system
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def computerized_reservation_system=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def credit_reason_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def credit_reason_indicator=(_)
              end

              sig { returns(T.nilable(Date)) }
              def departure_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def departure_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def origination_city_airport_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def origination_city_airport_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def passenger_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def passenger_name=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def restricted_ticket_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def restricted_ticket_indicator=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def ticket_change_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def ticket_change_indicator=(_)
              end

              sig { returns(T.nilable(String)) }
              def ticket_number
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def ticket_number=(_)
              end

              sig { returns(T.nilable(String)) }
              def travel_agency_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def travel_agency_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_name=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg]
                  )
                )
              end
              def trip_legs
              end

              sig do
                params(
                  _: T.nilable(
                    T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg]
                  )
                )
                  .returns(
                    T.nilable(
                      T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg]
                    )
                  )
              end
              def trip_legs=(_)
              end

              sig do
                params(
                  ancillary: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary),
                  computerized_reservation_system: T.nilable(String),
                  credit_reason_indicator: T.nilable(Symbol),
                  departure_date: T.nilable(Date),
                  origination_city_airport_code: T.nilable(String),
                  passenger_name: T.nilable(String),
                  restricted_ticket_indicator: T.nilable(Symbol),
                  ticket_change_indicator: T.nilable(Symbol),
                  ticket_number: T.nilable(String),
                  travel_agency_code: T.nilable(String),
                  travel_agency_name: T.nilable(String),
                  trip_legs: T.nilable(
                    T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg]
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(
                ancillary:,
                computerized_reservation_system:,
                credit_reason_indicator:,
                departure_date:,
                origination_city_airport_code:,
                passenger_name:,
                restricted_ticket_indicator:,
                ticket_change_indicator:,
                ticket_number:,
                travel_agency_code:,
                travel_agency_name:,
                trip_legs:
              )
              end

              sig do
                override
                  .returns(
                    {
                      ancillary: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary),
                      computerized_reservation_system: T.nilable(String),
                      credit_reason_indicator: T.nilable(Symbol),
                      departure_date: T.nilable(Date),
                      origination_city_airport_code: T.nilable(String),
                      passenger_name: T.nilable(String),
                      restricted_ticket_indicator: T.nilable(Symbol),
                      ticket_change_indicator: T.nilable(Symbol),
                      ticket_number: T.nilable(String),
                      travel_agency_code: T.nilable(String),
                      travel_agency_name: T.nilable(String),
                      trip_legs: T.nilable(
                        T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg]
                      )
                    }
                  )
              end
              def to_hash
              end

              class Ancillary < Increase::BaseModel
                sig { returns(T.nilable(String)) }
                def connected_ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def connected_ticket_document_number=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def credit_reason_indicator
                end

                sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                def credit_reason_indicator=(_)
                end

                sig { returns(T.nilable(String)) }
                def passenger_name_or_description
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def passenger_name_or_description=(_)
                end

                sig do
                  returns(
                    T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                  )
                end
                def services
                end

                sig do
                  params(
                    _: T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                  )
                    .returns(
                      T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                    )
                end
                def services=(_)
                end

                sig { returns(T.nilable(String)) }
                def ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_document_number=(_)
                end

                sig do
                  params(
                    connected_ticket_document_number: T.nilable(String),
                    credit_reason_indicator: T.nilable(Symbol),
                    passenger_name_or_description: T.nilable(String),
                    services: T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service],
                    ticket_document_number: T.nilable(String)
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  connected_ticket_document_number:,
                  credit_reason_indicator:,
                  passenger_name_or_description:,
                  services:,
                  ticket_document_number:
                )
                end

                sig do
                  override
                    .returns(
                      {
                        connected_ticket_document_number: T.nilable(String),
                        credit_reason_indicator: T.nilable(Symbol),
                        passenger_name_or_description: T.nilable(String),
                        services: T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service],
                        ticket_document_number: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end

                class CreditReasonIndicator < Increase::Enum
                  abstract!

                  # No credit
                  NO_CREDIT = T.let(:no_credit, T.nilable(Symbol))

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                    :passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                  )

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                  )

                  # Other
                  OTHER = T.let(:other, T.nilable(Symbol))

                  class << self
                    sig { override.returns(T::Array[Symbol]) }
                    def values
                    end
                  end
                end

                class Service < Increase::BaseModel
                  sig { returns(T.nilable(Symbol)) }
                  def category
                  end

                  sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                  def category=(_)
                  end

                  sig { returns(T.nilable(String)) }
                  def sub_category
                  end

                  sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                  def sub_category=(_)
                  end

                  sig do
                    params(
                      category: T.nilable(Symbol),
                      sub_category: T.nilable(String)
                    ).returns(T.attached_class)
                  end
                  def self.new(category:, sub_category:)
                  end

                  sig { override.returns({category: T.nilable(Symbol), sub_category: T.nilable(String)}) }
                  def to_hash
                  end

                  class Category < Increase::Enum
                    abstract!

                    # None
                    NONE = T.let(:none, T.nilable(Symbol))

                    # Bundled service
                    BUNDLED_SERVICE = T.let(:bundled_service, T.nilable(Symbol))

                    # Baggage fee
                    BAGGAGE_FEE = T.let(:baggage_fee, T.nilable(Symbol))

                    # Change fee
                    CHANGE_FEE = T.let(:change_fee, T.nilable(Symbol))

                    # Cargo
                    CARGO = T.let(:cargo, T.nilable(Symbol))

                    # Carbon offset
                    CARBON_OFFSET = T.let(:carbon_offset, T.nilable(Symbol))

                    # Frequent flyer
                    FREQUENT_FLYER = T.let(:frequent_flyer, T.nilable(Symbol))

                    # Gift card
                    GIFT_CARD = T.let(:gift_card, T.nilable(Symbol))

                    # Ground transport
                    GROUND_TRANSPORT = T.let(:ground_transport, T.nilable(Symbol))

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = T.let(:in_flight_entertainment, T.nilable(Symbol))

                    # Lounge
                    LOUNGE = T.let(:lounge, T.nilable(Symbol))

                    # Medical
                    MEDICAL = T.let(:medical, T.nilable(Symbol))

                    # Meal beverage
                    MEAL_BEVERAGE = T.let(:meal_beverage, T.nilable(Symbol))

                    # Other
                    OTHER = T.let(:other, T.nilable(Symbol))

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = T.let(:passenger_assist_fee, T.nilable(Symbol))

                    # Pets
                    PETS = T.let(:pets, T.nilable(Symbol))

                    # Seat fees
                    SEAT_FEES = T.let(:seat_fees, T.nilable(Symbol))

                    # Standby
                    STANDBY = T.let(:standby, T.nilable(Symbol))

                    # Service fee
                    SERVICE_FEE = T.let(:service_fee, T.nilable(Symbol))

                    # Store
                    STORE = T.let(:store, T.nilable(Symbol))

                    # Travel service
                    TRAVEL_SERVICE = T.let(:travel_service, T.nilable(Symbol))

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = T.let(:unaccompanied_travel, T.nilable(Symbol))

                    # Upgrades
                    UPGRADES = T.let(:upgrades, T.nilable(Symbol))

                    # Wi-fi
                    WIFI = T.let(:wifi, T.nilable(Symbol))

                    class << self
                      sig { override.returns(T::Array[Symbol]) }
                      def values
                      end
                    end
                  end
                end
              end

              class CreditReasonIndicator < Increase::Enum
                abstract!

                # No credit
                NO_CREDIT = T.let(:no_credit, T.nilable(Symbol))

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                  :passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                )

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                  :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                )

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = T.let(:airline_ticket_cancellation, T.nilable(Symbol))

                # Other
                OTHER = T.let(:other, T.nilable(Symbol))

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = T.let(:partial_refund_of_airline_ticket, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class RestrictedTicketIndicator < Increase::Enum
                abstract!

                # No restrictions
                NO_RESTRICTIONS = T.let(:no_restrictions, T.nilable(Symbol))

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = T.let(:restricted_non_refundable_ticket, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class TicketChangeIndicator < Increase::Enum
                abstract!

                # None
                NONE = T.let(:none, T.nilable(Symbol))

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = T.let(:change_to_existing_ticket, T.nilable(Symbol))

                # New ticket
                NEW_TICKET = T.let(:new_ticket, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class TripLeg < Increase::BaseModel
                sig { returns(T.nilable(String)) }
                def carrier_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def destination_city_airport_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def destination_city_airport_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def fare_basis_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def fare_basis_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def flight_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def flight_number=(_)
                end

                sig { returns(T.nilable(String)) }
                def service_class
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def service_class=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def stop_over_code
                end

                sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                def stop_over_code=(_)
                end

                sig do
                  params(
                    carrier_code: T.nilable(String),
                    destination_city_airport_code: T.nilable(String),
                    fare_basis_code: T.nilable(String),
                    flight_number: T.nilable(String),
                    service_class: T.nilable(String),
                    stop_over_code: T.nilable(Symbol)
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  carrier_code:,
                  destination_city_airport_code:,
                  fare_basis_code:,
                  flight_number:,
                  service_class:,
                  stop_over_code:
                )
                end

                sig do
                  override
                    .returns(
                      {
                        carrier_code: T.nilable(String),
                        destination_city_airport_code: T.nilable(String),
                        fare_basis_code: T.nilable(String),
                        flight_number: T.nilable(String),
                        service_class: T.nilable(String),
                        stop_over_code: T.nilable(Symbol)
                      }
                    )
                end
                def to_hash
                end

                class StopOverCode < Increase::Enum
                  abstract!

                  # None
                  NONE = T.let(:none, T.nilable(Symbol))

                  # Stop over allowed
                  STOP_OVER_ALLOWED = T.let(:stop_over_allowed, T.nilable(Symbol))

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = T.let(:stop_over_not_allowed, T.nilable(Symbol))

                  class << self
                    sig { override.returns(T::Array[Symbol]) }
                    def values
                    end
                  end
                end
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_SETTLEMENT = :card_settlement

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class CardValidation < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def actioner
          end

          sig { params(_: Symbol).returns(Symbol) }
          def actioner=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def digital_wallet_token_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def digital_wallet_token_id=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_city=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_descriptor
          end

          sig { params(_: String).returns(String) }
          def merchant_descriptor=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails) }
          def network_details
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardValidation::NetworkDetails)
              .returns(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails)
          end
          def network_details=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers)
              .returns(Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def network_risk_score
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def network_risk_score=(_)
          end

          sig { returns(T.nilable(String)) }
          def physical_card_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def physical_card_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def real_time_decision_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def real_time_decision_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def terminal_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { returns(Increase::Models::CardPayment::Element::CardValidation::Verification) }
          def verification
          end

          sig do
            params(_: Increase::Models::CardPayment::Element::CardValidation::Verification)
              .returns(Increase::Models::CardPayment::Element::CardValidation::Verification)
          end
          def verification=(_)
          end

          sig do
            params(
              id: String,
              actioner: Symbol,
              card_payment_id: String,
              currency: Symbol,
              digital_wallet_token_id: T.nilable(String),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: Increase::Models::CardPayment::Element::CardValidation::NetworkDetails,
              network_identifiers: Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers,
              network_risk_score: T.nilable(Integer),
              physical_card_id: T.nilable(String),
              real_time_decision_id: T.nilable(String),
              terminal_id: T.nilable(String),
              type: Symbol,
              verification: Increase::Models::CardPayment::Element::CardValidation::Verification
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            actioner:,
            card_payment_id:,
            currency:,
            digital_wallet_token_id:,
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
            real_time_decision_id:,
            terminal_id:,
            type:,
            verification:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  actioner: Symbol,
                  card_payment_id: String,
                  currency: Symbol,
                  digital_wallet_token_id: T.nilable(String),
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: T.nilable(String),
                  merchant_country: String,
                  merchant_descriptor: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network_details: Increase::Models::CardPayment::Element::CardValidation::NetworkDetails,
                  network_identifiers: Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  physical_card_id: T.nilable(String),
                  real_time_decision_id: T.nilable(String),
                  terminal_id: T.nilable(String),
                  type: Symbol,
                  verification: Increase::Models::CardPayment::Element::CardValidation::Verification
                }
              )
          end
          def to_hash
          end

          class Actioner < Increase::Enum
            abstract!

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Currency < Increase::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class NetworkDetails < Increase::BaseModel
            sig { returns(Symbol) }
            def category
            end

            sig { params(_: Symbol).returns(Symbol) }
            def category=(_)
            end

            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa)) }
            def visa
            end

            sig do
              params(_: T.nilable(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa))
                .returns(T.nilable(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa))
            end
            def visa=(_)
            end

            sig do
              params(
                category: Symbol,
                visa: T.nilable(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa)
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
                    visa: T.nilable(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            class Category < Increase::Enum
              abstract!

              # Visa
              VISA = :visa

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class Visa < Increase::BaseModel
              sig { returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def stand_in_processing_reason
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def stand_in_processing_reason=(_)
              end

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

              class ElectronicCommerceIndicator < Increase::Enum
                abstract!

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = T.let(:mail_phone_order, T.nilable(Symbol))

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = T.let(:recurring, T.nilable(Symbol))

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = T.let(:installment, T.nilable(Symbol))

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = T.let(:unknown_mail_phone_order, T.nilable(Symbol))

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = T.let(:secure_electronic_commerce, T.nilable(Symbol))

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT = T.let(
                  :non_authenticated_security_transaction_at_3ds_capable_merchant, T.nilable(Symbol)
                )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = T.let(
                  :non_authenticated_security_transaction,
                  T.nilable(Symbol)
                )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = T.let(:non_secure_transaction, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class PointOfServiceEntryMode < Increase::Enum
                abstract!

                # Unknown
                UNKNOWN = T.let(:unknown, T.nilable(Symbol))

                # Manual key entry
                MANUAL = T.let(:manual, T.nilable(Symbol))

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = T.let(:magnetic_stripe_no_cvv, T.nilable(Symbol))

                # Optical code
                OPTICAL_CODE = T.let(:optical_code, T.nilable(Symbol))

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = T.let(:integrated_circuit_card, T.nilable(Symbol))

                # Contactless read of chip card
                CONTACTLESS = T.let(:contactless, T.nilable(Symbol))

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = T.let(:credential_on_file, T.nilable(Symbol))

                # Magnetic stripe read
                MAGNETIC_STRIPE = T.let(:magnetic_stripe, T.nilable(Symbol))

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = T.let(:contactless_magnetic_stripe, T.nilable(Symbol))

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = T.let(:integrated_circuit_card_no_cvv, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class StandInProcessingReason < Increase::Enum
                abstract!

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = T.let(:issuer_error, T.nilable(Symbol))

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = T.let(:invalid_physical_card, T.nilable(Symbol))

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = T.let(
                  :invalid_cardholder_authentication_verification_value, T.nilable(Symbol)
                )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = T.let(:internal_visa_error, T.nilable(Symbol))

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = T.let(
                  :merchant_transaction_advisory_service_authentication_required, T.nilable(Symbol)
                )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = T.let(
                  :payment_fraud_disruption_acquirer_block,
                  T.nilable(Symbol)
                )

                # An unspecific reason for stand-in processing.
                OTHER = T.let(:other, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

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

          class Type < Increase::Enum
            abstract!

            CARD_VALIDATION = :card_validation

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Verification < Increase::BaseModel
            sig { returns(Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode) }
            def card_verification_code
            end

            sig do
              params(_: Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode)
                .returns(Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode)
            end
            def card_verification_code=(_)
            end

            sig { returns(Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress) }
            def cardholder_address
            end

            sig do
              params(_: Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress)
                .returns(Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress)
            end
            def cardholder_address=(_)
            end

            sig do
              params(
                card_verification_code: Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode,
                cardholder_address: Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress
              )
                .returns(T.attached_class)
            end
            def self.new(card_verification_code:, cardholder_address:)
            end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress
                  }
                )
            end
            def to_hash
            end

            class CardVerificationCode < Increase::BaseModel
              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

              sig { params(result: Symbol).returns(T.attached_class) }
              def self.new(result:)
              end

              sig { override.returns({result: Symbol}) }
              def to_hash
              end

              class Result < Increase::Enum
                abstract!

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class CardholderAddress < Increase::BaseModel
              sig { returns(T.nilable(String)) }
              def actual_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def actual_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_postal_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def provided_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def provided_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_postal_code=(_)
              end

              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

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

              class Result < Increase::Enum
                abstract!

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

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end
        end

        class Category < Increase::Enum
          abstract!

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION = :card_authorization

          # Card Authentication: details will be under the `card_authentication` object.
          CARD_AUTHENTICATION = :card_authentication

          # Card Validation: details will be under the `card_validation` object.
          CARD_VALIDATION = :card_validation

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = :card_decline

          # Card Reversal: details will be under the `card_reversal` object.
          CARD_REVERSAL = :card_reversal

          # Card Authorization Expiration: details will be under the `card_authorization_expiration` object.
          CARD_AUTHORIZATION_EXPIRATION = :card_authorization_expiration

          # Card Increment: details will be under the `card_increment` object.
          CARD_INCREMENT = :card_increment

          # Card Settlement: details will be under the `card_settlement` object.
          CARD_SETTLEMENT = :card_settlement

          # Card Refund: details will be under the `card_refund` object.
          CARD_REFUND = :card_refund

          # Card Fuel Confirmation: details will be under the `card_fuel_confirmation` object.
          CARD_FUEL_CONFIRMATION = :card_fuel_confirmation

          # Unknown card payment element.
          OTHER = :other

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class State < Increase::BaseModel
        sig { returns(Integer) }
        def authorized_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def authorized_amount=(_)
        end

        sig { returns(Integer) }
        def fuel_confirmed_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def fuel_confirmed_amount=(_)
        end

        sig { returns(Integer) }
        def incremented_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def incremented_amount=(_)
        end

        sig { returns(Integer) }
        def reversed_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def reversed_amount=(_)
        end

        sig { returns(Integer) }
        def settled_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def settled_amount=(_)
        end

        sig do
          params(
            authorized_amount: Integer,
            fuel_confirmed_amount: Integer,
            incremented_amount: Integer,
            reversed_amount: Integer,
            settled_amount: Integer
          )
            .returns(T.attached_class)
        end
        def self.new(authorized_amount:, fuel_confirmed_amount:, incremented_amount:, reversed_amount:, settled_amount:)
        end

        sig do
          override
            .returns(
              {
                authorized_amount: Integer,
                fuel_confirmed_amount: Integer,
                incremented_amount: Integer,
                reversed_amount: Integer,
                settled_amount: Integer
              }
            )
        end
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        CARD_PAYMENT = :card_payment

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
