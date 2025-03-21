# typed: strong

module Increase
  module Models
    class CardPayment < Increase::BaseModel
      # The Card Payment identifier.
      sig { returns(String) }
      attr_accessor :id

      # The identifier for the Account the Transaction belongs to.
      sig { returns(String) }
      attr_accessor :account_id

      # The Card identifier for this payment.
      sig { returns(String) }
      attr_accessor :card_id

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Card
      #   Payment was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The Digital Wallet Token identifier for this payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :digital_wallet_token_id

      # The interactions related to this card payment.
      sig { returns(T::Array[Increase::Models::CardPayment::Element]) }
      attr_accessor :elements

      # The Physical Card identifier for this payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :physical_card_id

      # The summarized state of this card payment.
      sig { returns(Increase::Models::CardPayment::State) }
      attr_reader :state

      sig { params(state: T.any(Increase::Models::CardPayment::State, Increase::Util::AnyHash)).void }
      attr_writer :state

      # A constant representing the object's type. For this resource it will always be
      #   `card_payment`.
      sig { returns(Increase::Models::CardPayment::Type::TaggedSymbol) }
      attr_accessor :type

      # Card Payments group together interactions related to a single card payment, such
      #   as an authorization and its corresponding settlement.
      sig do
        params(
          id: String,
          account_id: String,
          card_id: String,
          created_at: Time,
          digital_wallet_token_id: T.nilable(String),
          elements: T::Array[T.any(Increase::Models::CardPayment::Element, Increase::Util::AnyHash)],
          physical_card_id: T.nilable(String),
          state: T.any(Increase::Models::CardPayment::State, Increase::Util::AnyHash),
          type: Increase::Models::CardPayment::Type::OrSymbol
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
              type: Increase::Models::CardPayment::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Element < Increase::BaseModel
        # A Card Authentication object. This field will be present in the JSON response if
        #   and only if `category` is equal to `card_authentication`. Card Authentications
        #   are attempts to authenticate a transaction or a card with 3DS.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthentication)) }
        attr_reader :card_authentication

        sig do
          params(
            card_authentication: T.nilable(T.any(Increase::Models::CardPayment::Element::CardAuthentication, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_authentication

        # A Card Authorization object. This field will be present in the JSON response if
        #   and only if `category` is equal to `card_authorization`. Card Authorizations are
        #   temporary holds placed on a customers funds with the intent to later clear a
        #   transaction.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorization)) }
        attr_reader :card_authorization

        sig do
          params(
            card_authorization: T.nilable(T.any(Increase::Models::CardPayment::Element::CardAuthorization, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_authorization

        # A Card Authorization Expiration object. This field will be present in the JSON
        #   response if and only if `category` is equal to `card_authorization_expiration`.
        #   Card Authorization Expirations are cancellations of authorizations that were
        #   never settled by the acquirer.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorizationExpiration)) }
        attr_reader :card_authorization_expiration

        sig do
          params(
            card_authorization_expiration: T.nilable(
              T.any(Increase::Models::CardPayment::Element::CardAuthorizationExpiration, Increase::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :card_authorization_expiration

        # A Card Decline object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_decline`.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardDecline)) }
        attr_reader :card_decline

        sig do
          params(
            card_decline: T.nilable(T.any(Increase::Models::CardPayment::Element::CardDecline, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_decline

        # A Card Fuel Confirmation object. This field will be present in the JSON response
        #   if and only if `category` is equal to `card_fuel_confirmation`. Card Fuel
        #   Confirmations update the amount of a Card Authorization after a fuel pump
        #   transaction is completed.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardFuelConfirmation)) }
        attr_reader :card_fuel_confirmation

        sig do
          params(
            card_fuel_confirmation: T.nilable(T.any(Increase::Models::CardPayment::Element::CardFuelConfirmation, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_fuel_confirmation

        # A Card Increment object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_increment`. Card Increments increase the
        #   pending amount of an authorized transaction.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardIncrement)) }
        attr_reader :card_increment

        sig do
          params(
            card_increment: T.nilable(T.any(Increase::Models::CardPayment::Element::CardIncrement, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_increment

        # A Card Refund object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_refund`. Card Refunds move money back to
        #   the cardholder. While they are usually connected to a Card Settlement an
        #   acquirer can also refund money directly to a card without relation to a
        #   transaction.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund)) }
        attr_reader :card_refund

        sig do
          params(
            card_refund: T.nilable(T.any(Increase::Models::CardPayment::Element::CardRefund, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_refund

        # A Card Reversal object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_reversal`. Card Reversals cancel parts of
        #   or the entirety of an existing Card Authorization.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardReversal)) }
        attr_reader :card_reversal

        sig do
          params(
            card_reversal: T.nilable(T.any(Increase::Models::CardPayment::Element::CardReversal, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_reversal

        # A Card Settlement object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_settlement`. Card Settlements are card
        #   transactions that have cleared and settled. While a settlement is usually
        #   preceded by an authorization, an acquirer can also directly clear a transaction
        #   without first authorizing it.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement)) }
        attr_reader :card_settlement

        sig do
          params(
            card_settlement: T.nilable(T.any(Increase::Models::CardPayment::Element::CardSettlement, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_settlement

        # A Card Validation object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_validation`. Card Validations are requests
        #   from a merchant to verify that a card number and optionally its address and/or
        #   Card Verification Value are valid.
        sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardValidation)) }
        attr_reader :card_validation

        sig do
          params(
            card_validation: T.nilable(T.any(Increase::Models::CardPayment::Element::CardValidation, Increase::Util::AnyHash))
          )
            .void
        end
        attr_writer :card_validation

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        sig { returns(Increase::Models::CardPayment::Element::Category::TaggedSymbol) }
        attr_accessor :category

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the card payment element was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # If the category of this Transaction source is equal to `other`, this field will
        #   contain an empty object, otherwise it will contain null.
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :other

        sig do
          params(
            card_authentication: T.nilable(T.any(Increase::Models::CardPayment::Element::CardAuthentication, Increase::Util::AnyHash)),
            card_authorization: T.nilable(T.any(Increase::Models::CardPayment::Element::CardAuthorization, Increase::Util::AnyHash)),
            card_authorization_expiration: T.nilable(
              T.any(Increase::Models::CardPayment::Element::CardAuthorizationExpiration, Increase::Util::AnyHash)
            ),
            card_decline: T.nilable(T.any(Increase::Models::CardPayment::Element::CardDecline, Increase::Util::AnyHash)),
            card_fuel_confirmation: T.nilable(T.any(Increase::Models::CardPayment::Element::CardFuelConfirmation, Increase::Util::AnyHash)),
            card_increment: T.nilable(T.any(Increase::Models::CardPayment::Element::CardIncrement, Increase::Util::AnyHash)),
            card_refund: T.nilable(T.any(Increase::Models::CardPayment::Element::CardRefund, Increase::Util::AnyHash)),
            card_reversal: T.nilable(T.any(Increase::Models::CardPayment::Element::CardReversal, Increase::Util::AnyHash)),
            card_settlement: T.nilable(T.any(Increase::Models::CardPayment::Element::CardSettlement, Increase::Util::AnyHash)),
            card_validation: T.nilable(T.any(Increase::Models::CardPayment::Element::CardValidation, Increase::Util::AnyHash)),
            category: Increase::Models::CardPayment::Element::Category::OrSymbol,
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
                category: Increase::Models::CardPayment::Element::Category::TaggedSymbol,
                created_at: Time,
                other: T.nilable(T.anything)
              }
            )
        end
        def to_hash
        end

        class CardAuthentication < Increase::BaseModel
          # The Card Authentication identifier.
          sig { returns(String) }
          attr_accessor :id

          # The identifier of the Card.
          sig { returns(String) }
          attr_accessor :card_id

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          attr_accessor :card_payment_id

          # The category of the card authentication attempt.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Category::TaggedSymbol)) }
          attr_accessor :category

          # Details about the challenge, if one was requested.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Challenge)) }
          attr_reader :challenge

          sig do
            params(
              challenge: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardAuthentication::Challenge, Increase::Util::AnyHash)
              )
            )
              .void
          end
          attr_writer :challenge

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Card
          #   Authentication was attempted.
          sig { returns(Time) }
          attr_accessor :created_at

          # The reason why this authentication attempt was denied, if it was.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol)) }
          attr_accessor :deny_reason

          # The device channel of the card authentication attempt.
          sig do
            returns(
              T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel::TaggedSymbol)
            )
          end
          attr_accessor :device_channel

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # The country the merchant resides in.
          sig { returns(String) }
          attr_accessor :merchant_country

          # The name of the merchant.
          sig { returns(String) }
          attr_accessor :merchant_name

          # The purchase amount in minor units.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :purchase_amount

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   authentication attempt's purchase currency.
          sig { returns(T.nilable(String)) }
          attr_accessor :purchase_currency

          # The identifier of the Real-Time Decision sent to approve or decline this
          #   authentication attempt.
          sig { returns(T.nilable(String)) }
          attr_accessor :real_time_decision_id

          # The status of the card authentication.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol) }
          attr_accessor :status

          # A constant representing the object's type. For this resource it will always be
          #   `card_authentication`.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthentication::Type::TaggedSymbol) }
          attr_accessor :type

          # A Card Authentication object. This field will be present in the JSON response if
          #   and only if `category` is equal to `card_authentication`. Card Authentications
          #   are attempts to authenticate a transaction or a card with 3DS.
          sig do
            params(
              id: String,
              card_id: String,
              card_payment_id: String,
              category: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Category::OrSymbol),
              challenge: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardAuthentication::Challenge, Increase::Util::AnyHash)
              ),
              created_at: Time,
              deny_reason: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::OrSymbol),
              device_channel: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel::OrSymbol),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_country: String,
              merchant_name: String,
              purchase_amount: T.nilable(Integer),
              purchase_currency: T.nilable(String),
              real_time_decision_id: T.nilable(String),
              status: Increase::Models::CardPayment::Element::CardAuthentication::Status::OrSymbol,
              type: Increase::Models::CardPayment::Element::CardAuthentication::Type::OrSymbol
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
                  category: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Category::TaggedSymbol),
                  challenge: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::Challenge),
                  created_at: Time,
                  deny_reason: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol),
                  device_channel: T.nilable(Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel::TaggedSymbol),
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_country: String,
                  merchant_name: String,
                  purchase_amount: T.nilable(Integer),
                  purchase_currency: T.nilable(String),
                  real_time_decision_id: T.nilable(String),
                  status: Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol,
                  type: Increase::Models::CardPayment::Element::CardAuthentication::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          # The category of the card authentication attempt.
          module Category
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Category) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Category::TaggedSymbol) }

            # The authentication attempt is for a payment.
            PAYMENT_AUTHENTICATION =
              T.let(
                :payment_authentication,
                Increase::Models::CardPayment::Element::CardAuthentication::Category::TaggedSymbol
              )

            # The authentication attempt is not for a payment.
            NON_PAYMENT_AUTHENTICATION =
              T.let(
                :non_payment_authentication,
                Increase::Models::CardPayment::Element::CardAuthentication::Category::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Category::TaggedSymbol])
            end
            def self.values
            end
          end

          class Challenge < Increase::BaseModel
            # Details about the challenge verification attempts, if any happened.
            sig { returns(T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt]) }
            attr_accessor :attempts

            # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Card
            #   Authentication Challenge was started.
            sig { returns(Time) }
            attr_accessor :created_at

            # The one-time code used for the Card Authentication Challenge.
            sig { returns(String) }
            attr_accessor :one_time_code

            # The method used to verify the Card Authentication Challenge.
            sig do
              returns(
                Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod::TaggedSymbol
              )
            end
            attr_accessor :verification_method

            # E.g., the email address or phone number used for the Card Authentication
            #   Challenge.
            sig { returns(T.nilable(String)) }
            attr_accessor :verification_value

            # Details about the challenge, if one was requested.
            sig do
              params(
                attempts: T::Array[
                T.any(
                  Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt,
                  Increase::Util::AnyHash
                )
                ],
                created_at: Time,
                one_time_code: String,
                verification_method: Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod::OrSymbol,
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
                    verification_method: Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod::TaggedSymbol,
                    verification_value: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Attempt < Increase::BaseModel
              # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time of the Card
              #   Authentication Challenge Attempt.
              sig { returns(Time) }
              attr_accessor :created_at

              # The outcome of the Card Authentication Challenge Attempt.
              sig do
                returns(
                  Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome::TaggedSymbol
                )
              end
              attr_accessor :outcome

              sig do
                params(
                  created_at: Time,
                  outcome: Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(created_at:, outcome:)
              end

              sig do
                override
                  .returns(
                    {
                      created_at: Time,
                      outcome: Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The outcome of the Card Authentication Challenge Attempt.
              module Outcome
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome::TaggedSymbol
                    )
                  end

                # The attempt was successful.
                SUCCESSFUL =
                  T.let(
                    :successful,
                    Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome::TaggedSymbol
                  )

                # The attempt was unsuccessful.
                FAILED =
                  T.let(
                    :failed,
                    Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome::TaggedSymbol]
                    )
                end
                def self.values
                end
              end
            end

            # The method used to verify the Card Authentication Challenge.
            module VerificationMethod
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod::TaggedSymbol
                  )
                end

              # The one-time code was sent via text message.
              TEXT_MESSAGE =
                T.let(
                  :text_message,
                  Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod::TaggedSymbol
                )

              # The one-time code was sent via email.
              EMAIL =
                T.let(
                  :email,
                  Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod::TaggedSymbol
                )

              # The one-time code was not successfully delievered.
              NONE_AVAILABLE =
                T.let(
                  :none_available,
                  Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod::TaggedSymbol]
                  )
              end
              def self.values
              end
            end
          end

          # The reason why this authentication attempt was denied, if it was.
          module DenyReason
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::DenyReason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol) }

            # The group was locked.
            GROUP_LOCKED =
              T.let(:group_locked, Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol)

            # The card was not active.
            CARD_NOT_ACTIVE =
              T.let(
                :card_not_active,
                Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol
              )

            # The entity was not active.
            ENTITY_NOT_ACTIVE =
              T.let(
                :entity_not_active,
                Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol
              )

            # The transaction was not allowed.
            TRANSACTION_NOT_ALLOWED =
              T.let(
                :transaction_not_allowed,
                Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol
              )

            # The webhook was denied.
            WEBHOOK_DENIED =
              T.let(
                :webhook_denied,
                Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol
              )

            # The webhook timed out.
            WEBHOOK_TIMED_OUT =
              T.let(
                :webhook_timed_out,
                Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthentication::DenyReason::TaggedSymbol])
            end
            def self.values
            end
          end

          # The device channel of the card authentication attempt.
          module DeviceChannel
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel::TaggedSymbol) }

            # The authentication attempt was made from an app.
            APP =
              T.let(:app, Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel::TaggedSymbol)

            # The authentication attempt was made from a browser.
            BROWSER =
              T.let(:browser, Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel::TaggedSymbol)

            # The authentication attempt was initiated by the 3DS Requestor.
            THREE_DS_REQUESTOR_INITIATED =
              T.let(
                :three_ds_requestor_initiated,
                Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel::TaggedSymbol])
            end
            def self.values
            end
          end

          # The status of the card authentication.
          module Status
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Status) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol) }

            # The authentication attempt was denied.
            DENIED = T.let(:denied, Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol)

            # The authentication attempt was authenticated with a challenge.
            AUTHENTICATED_WITH_CHALLENGE =
              T.let(
                :authenticated_with_challenge,
                Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol
              )

            # The authentication attempt was authenticated without a challenge.
            AUTHENTICATED_WITHOUT_CHALLENGE =
              T.let(
                :authenticated_without_challenge,
                Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol
              )

            # The authentication attempt is awaiting a challenge.
            AWAITING_CHALLENGE =
              T.let(
                :awaiting_challenge,
                Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol
              )

            # The authentication attempt is validating a challenge.
            VALIDATING_CHALLENGE =
              T.let(
                :validating_challenge,
                Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol
              )

            # The authentication attempt was canceled.
            CANCELED =
              T.let(:canceled, Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol)

            # The authentication attempt timed out while awaiting a challenge.
            TIMED_OUT_AWAITING_CHALLENGE =
              T.let(
                :timed_out_awaiting_challenge,
                Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol
              )

            # The authentication attempt errored.
            ERRORED =
              T.let(:errored, Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol)

            # The authentication attempt exceeded the attempt threshold.
            EXCEEDED_ATTEMPT_THRESHOLD =
              T.let(
                :exceeded_attempt_threshold,
                Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Status::TaggedSymbol])
            end
            def self.values
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_authentication`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Type::TaggedSymbol) }

            CARD_AUTHENTICATION =
              T.let(
                :card_authentication,
                Increase::Models::CardPayment::Element::CardAuthentication::Type::TaggedSymbol
              )

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardAuthentication::Type::TaggedSymbol]) }
            def self.values
            end
          end
        end

        class CardAuthorization < Increase::BaseModel
          # The Card Authorization identifier.
          sig { returns(String) }
          attr_accessor :id

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Actioner::TaggedSymbol) }
          attr_accessor :actioner

          # The pending amount in the minor unit of the transaction's currency. For dollars,
          #   for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :amount

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          attr_accessor :card_payment_id

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol) }
          attr_accessor :currency

          # If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   purchase), the identifier of the token that was used.
          sig { returns(T.nilable(String)) }
          attr_accessor :digital_wallet_token_id

          # The direction describes the direction the funds will move, either from the
          #   cardholder to the merchant or from the merchant to the cardholder.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Direction::TaggedSymbol) }
          attr_accessor :direction

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) when this authorization
          #   will expire and the pending transaction will be released.
          sig { returns(Time) }
          attr_accessor :expires_at

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # The city the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_city

          # The country the merchant resides in.
          sig { returns(String) }
          attr_accessor :merchant_country

          # The merchant descriptor of the merchant the card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_descriptor

          # The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   ZIP code, where the first 5 and last 4 are separated by a dash.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          # Fields specific to the `network`.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails) }
          attr_reader :network_details

          sig do
            params(
              network_details: T.any(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_details

          # Network-specific identifiers for a specific request or transaction.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(
                Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers,
                Increase::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :network_identifiers

          # The risk score generated by the card network. For Visa this is the Visa Advanced
          #   Authorization risk score, from 0 to 99, where 99 is the riskiest.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :network_risk_score

          # The identifier of the Pending Transaction associated with this Transaction.
          sig { returns(T.nilable(String)) }
          attr_accessor :pending_transaction_id

          # If the authorization was made in-person with a physical card, the Physical Card
          #   that was used.
          sig { returns(T.nilable(String)) }
          attr_accessor :physical_card_id

          # The pending amount in the minor unit of the transaction's presentment currency.
          sig { returns(Integer) }
          attr_accessor :presentment_amount

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's presentment currency.
          sig { returns(String) }
          attr_accessor :presentment_currency

          # The processing category describes the intent behind the authorization, such as
          #   whether it was used for bill payments or an automatic fuel dispenser.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol) }
          attr_accessor :processing_category

          # The identifier of the Real-Time Decision sent to approve or decline this
          #   transaction.
          sig { returns(T.nilable(String)) }
          attr_accessor :real_time_decision_id

          # The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   is transacting with.
          sig { returns(T.nilable(String)) }
          attr_accessor :terminal_id

          # A constant representing the object's type. For this resource it will always be
          #   `card_authorization`.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Type::TaggedSymbol) }
          attr_accessor :type

          # Fields related to verification of cardholder-provided values.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification) }
          attr_reader :verification

          sig do
            params(
              verification: T.any(Increase::Models::CardPayment::Element::CardAuthorization::Verification, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :verification

          # A Card Authorization object. This field will be present in the JSON response if
          #   and only if `category` is equal to `card_authorization`. Card Authorizations are
          #   temporary holds placed on a customers funds with the intent to later clear a
          #   transaction.
          sig do
            params(
              id: String,
              actioner: Increase::Models::CardPayment::Element::CardAuthorization::Actioner::OrSymbol,
              amount: Integer,
              card_payment_id: String,
              currency: Increase::Models::CardPayment::Element::CardAuthorization::Currency::OrSymbol,
              digital_wallet_token_id: T.nilable(String),
              direction: Increase::Models::CardPayment::Element::CardAuthorization::Direction::OrSymbol,
              expires_at: Time,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: T.any(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails, Increase::Util::AnyHash),
              network_identifiers: T.any(
                Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers,
                Increase::Util::AnyHash
              ),
              network_risk_score: T.nilable(Integer),
              pending_transaction_id: T.nilable(String),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::OrSymbol,
              real_time_decision_id: T.nilable(String),
              terminal_id: T.nilable(String),
              type: Increase::Models::CardPayment::Element::CardAuthorization::Type::OrSymbol,
              verification: T.any(Increase::Models::CardPayment::Element::CardAuthorization::Verification, Increase::Util::AnyHash)
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
                  actioner: Increase::Models::CardPayment::Element::CardAuthorization::Actioner::TaggedSymbol,
                  amount: Integer,
                  card_payment_id: String,
                  currency: Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol,
                  digital_wallet_token_id: T.nilable(String),
                  direction: Increase::Models::CardPayment::Element::CardAuthorization::Direction::TaggedSymbol,
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
                  processing_category: Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol,
                  real_time_decision_id: T.nilable(String),
                  terminal_id: T.nilable(String),
                  type: Increase::Models::CardPayment::Element::CardAuthorization::Type::TaggedSymbol,
                  verification: Increase::Models::CardPayment::Element::CardAuthorization::Verification
                }
              )
          end
          def to_hash
          end

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          module Actioner
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Actioner) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Actioner::TaggedSymbol) }

            # This object was actioned by the user through a real-time decision.
            USER = T.let(:user, Increase::Models::CardPayment::Element::CardAuthorization::Actioner::TaggedSymbol)

            # This object was actioned by Increase without user intervention.
            INCREASE =
              T.let(:increase, Increase::Models::CardPayment::Element::CardAuthorization::Actioner::TaggedSymbol)

            # This object was actioned by the network, through stand-in processing.
            NETWORK =
              T.let(:network, Increase::Models::CardPayment::Element::CardAuthorization::Actioner::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthorization::Actioner::TaggedSymbol])
            end
            def self.values
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthorization::Currency::TaggedSymbol])
            end
            def self.values
            end
          end

          # The direction describes the direction the funds will move, either from the
          #   cardholder to the merchant or from the merchant to the cardholder.
          module Direction
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Direction) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Direction::TaggedSymbol) }

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT =
              T.let(:settlement, Increase::Models::CardPayment::Element::CardAuthorization::Direction::TaggedSymbol)

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND =
              T.let(:refund, Increase::Models::CardPayment::Element::CardAuthorization::Direction::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthorization::Direction::TaggedSymbol])
            end
            def self.values
            end
          end

          class NetworkDetails < Increase::BaseModel
            # The payment network used to process this card authorization.
            sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category::TaggedSymbol) }
            attr_accessor :category

            # Fields specific to the `visa` network.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa)) }
            attr_reader :visa

            sig do
              params(
                visa: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa,
                    Increase::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :visa

            # Fields specific to the `network`.
            sig do
              params(
                category: Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category::OrSymbol,
                visa: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa,
                    Increase::Util::AnyHash
                  )
                )
              )
                .returns(T.attached_class)
            end
            def self.new(category:, visa:)
            end

            sig do
              override
                .returns(
                  {
                    category: Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category::TaggedSymbol,
                    visa: T.nilable(Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            # The payment network used to process this card authorization.
            module Category
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                  )
                end

              # Visa
              VISA =
                T.let(
                  :visa,
                  Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class Visa < Increase::BaseModel
              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :electronic_commerce_indicator

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                )
              end
              attr_accessor :point_of_service_entry_mode

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :stand_in_processing_reason

              # Fields specific to the `visa` network.
              sig do
                params(
                  electronic_commerce_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::OrSymbol
                  ),
                  point_of_service_entry_mode: T.nilable(
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::OrSymbol
                  ),
                  stand_in_processing_reason: T.nilable(
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::OrSymbol
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:)
              end

              sig do
                override
                  .returns(
                    {
                      electronic_commerce_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ),
                      point_of_service_entry_mode: T.nilable(
                        Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ),
                      stand_in_processing_reason: T.nilable(
                        Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      )
                    }
                  )
              end
              def to_hash
              end

              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              module ElectronicCommerceIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                    )
                  end

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER =
                  T.let(
                    :mail_phone_order,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING =
                  T.let(
                    :recurring,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT =
                  T.let(
                    :installment,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER =
                  T.let(
                    :unknown_mail_phone_order,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE =
                  T.let(
                    :secure_electronic_commerce,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  T.let(
                    :non_authenticated_security_transaction_at_3ds_capable_merchant,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION =
                  T.let(
                    :non_authenticated_security_transaction,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION =
                  T.let(
                    :non_secure_transaction,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              module PointOfServiceEntryMode
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                    )
                  end

                # Unknown
                UNKNOWN =
                  T.let(
                    :unknown,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Manual key entry
                MANUAL =
                  T.let(
                    :manual,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV =
                  T.let(
                    :magnetic_stripe_no_cvv,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Optical code
                OPTICAL_CODE =
                  T.let(
                    :optical_code,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD =
                  T.let(
                    :integrated_circuit_card,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of chip card
                CONTACTLESS =
                  T.let(
                    :contactless,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE =
                  T.let(
                    :credential_on_file,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read
                MAGNETIC_STRIPE =
                  T.let(
                    :magnetic_stripe,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE =
                  T.let(
                    :contactless_magnetic_stripe,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV =
                  T.let(
                    :integrated_circuit_card_no_cvv,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              module StandInProcessingReason
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                    )
                  end

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR =
                  T.let(
                    :issuer_error,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD =
                  T.let(
                    :invalid_physical_card,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                  T.let(
                    :invalid_cardholder_authentication_verification_value,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR =
                  T.let(
                    :internal_visa_error,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                  T.let(
                    :merchant_transaction_advisory_service_authentication_required,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK =
                  T.let(
                    :payment_fraud_disruption_acquirer_block,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An unspecific reason for stand-in processing.
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A life-cycle identifier used across e.g., an authorization and a reversal.
            #   Expected to be unique per acquirer within a window of time. For some card
            #   networks the retrieval reference number includes the trace counter.
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            # A counter used to verify an individual authorization. Expected to be unique per
            #   acquirer within a window of time.
            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

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
          module ProcessingCategory
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol) }

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING =
              T.let(
                :account_funding,
                Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER =
              T.let(
                :automatic_fuel_dispenser,
                Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # A transaction used to pay a bill.
            BILL_PAYMENT =
              T.let(
                :bill_payment,
                Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # A regular purchase.
            PURCHASE =
              T.let(
                :purchase,
                Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH =
              T.let(
                :quasi_cash,
                Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND =
              T.let(
                :refund,
                Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory::TaggedSymbol]
                )
            end
            def self.values
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_authorization`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Type::TaggedSymbol) }

            CARD_AUTHORIZATION =
              T.let(:card_authorization, Increase::Models::CardPayment::Element::CardAuthorization::Type::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardAuthorization::Type::TaggedSymbol]) }
            def self.values
            end
          end

          class Verification < Increase::BaseModel
            # Fields related to verification of the Card Verification Code, a 3-digit code on
            #   the back of the card.
            sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode) }
            attr_reader :card_verification_code

            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode,
                  Increase::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :card_verification_code

            # Cardholder address provided in the authorization request and the address on file
            #   we verified it against.
            sig { returns(Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress) }
            attr_reader :cardholder_address

            sig do
              params(
                cardholder_address: T.any(
                  Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress,
                  Increase::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :cardholder_address

            # Fields related to verification of cardholder-provided values.
            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode,
                  Increase::Util::AnyHash
                ),
                cardholder_address: T.any(
                  Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress,
                  Increase::Util::AnyHash
                )
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
              # The result of verifying the Card Verification Code.
              sig do
                returns(
                  Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # Fields related to verification of the Card Verification Code, a 3-digit code on
              #   the back of the card.
              sig do
                params(
                  result: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(result:)
              end

              sig do
                override
                  .returns(
                    {
                      result: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The result of verifying the Card Verification Code.
              module Result
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                    )
                  end

                # No card verification code was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code matched the one on file.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code did not match the one on file.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class CardholderAddress < Increase::BaseModel
              # Line 1 of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_line1

              # The postal code of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_postal_code

              # The cardholder address line 1 provided for verification in the authorization
              #   request.
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_line1

              # The postal code provided for verification in the authorization request.
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_postal_code

              # The address verification result returned to the card network.
              sig do
                returns(
                  Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # Cardholder address provided in the authorization request and the address on file
              #   we verified it against.
              sig do
                params(
                  actual_line1: T.nilable(String),
                  actual_postal_code: T.nilable(String),
                  provided_line1: T.nilable(String),
                  provided_postal_code: T.nilable(String),
                  result: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::OrSymbol
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
                      result: Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The address verification result returned to the card network.
              module Result
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                    )
                  end

                # No adress was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED =
                  T.let(
                    :postal_code_match_address_not_checked,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH =
                  T.let(
                    :postal_code_match_address_no_match,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH =
                  T.let(
                    :postal_code_no_match_address_match,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address match.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address do not match.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end
        end

        class CardAuthorizationExpiration < Increase::BaseModel
          # The Card Authorization Expiration identifier.
          sig { returns(String) }
          attr_accessor :id

          # The identifier for the Card Authorization this reverses.
          sig { returns(String) }
          attr_accessor :card_authorization_id

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's
          #   currency.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol) }
          attr_accessor :currency

          # The amount of this authorization expiration in the minor unit of the
          #   transaction's currency. For dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :expired_amount

          # The card network used to process this card authorization.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network::TaggedSymbol) }
          attr_accessor :network

          # A constant representing the object's type. For this resource it will always be
          #   `card_authorization_expiration`.
          sig { returns(Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type::TaggedSymbol) }
          attr_accessor :type

          # A Card Authorization Expiration object. This field will be present in the JSON
          #   response if and only if `category` is equal to `card_authorization_expiration`.
          #   Card Authorization Expirations are cancellations of authorizations that were
          #   never settled by the acquirer.
          sig do
            params(
              id: String,
              card_authorization_id: String,
              currency: Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::OrSymbol,
              expired_amount: Integer,
              network: Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network::OrSymbol,
              type: Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type::OrSymbol
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
                  currency: Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol,
                  expired_amount: Integer,
                  network: Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network::TaggedSymbol,
                  type: Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD =
              T.let(:CAD, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF =
              T.let(:CHF, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR =
              T.let(:EUR, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP =
              T.let(:GBP, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY =
              T.let(:JPY, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD =
              T.let(:USD, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency::TaggedSymbol]
                )
            end
            def self.values
            end
          end

          # The card network used to process this card authorization.
          module Network
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network::TaggedSymbol) }

            # Visa
            VISA =
              T.let(:visa, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network::TaggedSymbol]
                )
            end
            def self.values
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_authorization_expiration`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type::TaggedSymbol) }

            CARD_AUTHORIZATION_EXPIRATION =
              T.let(
                :card_authorization_expiration,
                Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class CardDecline < Increase::BaseModel
          # The Card Decline identifier.
          sig { returns(String) }
          attr_accessor :id

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          sig { returns(Increase::Models::CardPayment::Element::CardDecline::Actioner::TaggedSymbol) }
          attr_accessor :actioner

          # The declined amount in the minor unit of the destination account currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :amount

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          attr_accessor :card_payment_id

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   account currency.
          sig { returns(Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol) }
          attr_accessor :currency

          # The identifier of the declined transaction created for this Card Decline.
          sig { returns(String) }
          attr_accessor :declined_transaction_id

          # If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   purchase), the identifier of the token that was used.
          sig { returns(T.nilable(String)) }
          attr_accessor :digital_wallet_token_id

          # The direction describes the direction the funds will move, either from the
          #   cardholder to the merchant or from the merchant to the cardholder.
          sig { returns(Increase::Models::CardPayment::Element::CardDecline::Direction::TaggedSymbol) }
          attr_accessor :direction

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # The city the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_city

          # The country the merchant resides in.
          sig { returns(String) }
          attr_accessor :merchant_country

          # The merchant descriptor of the merchant the card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_descriptor

          # The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   ZIP code, where the first 5 and last 4 are separated by a dash.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          # Fields specific to the `network`.
          sig { returns(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails) }
          attr_reader :network_details

          sig do
            params(
              network_details: T.any(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_details

          # Network-specific identifiers for a specific request or transaction.
          sig { returns(Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_identifiers

          # The risk score generated by the card network. For Visa this is the Visa Advanced
          #   Authorization risk score, from 0 to 99, where 99 is the riskiest.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :network_risk_score

          # If the authorization was made in-person with a physical card, the Physical Card
          #   that was used.
          sig { returns(T.nilable(String)) }
          attr_accessor :physical_card_id

          # The declined amount in the minor unit of the transaction's presentment currency.
          sig { returns(Integer) }
          attr_accessor :presentment_amount

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's presentment currency.
          sig { returns(String) }
          attr_accessor :presentment_currency

          # The processing category describes the intent behind the authorization, such as
          #   whether it was used for bill payments or an automatic fuel dispenser.
          sig { returns(Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol) }
          attr_accessor :processing_category

          # The identifier of the Real-Time Decision sent to approve or decline this
          #   transaction.
          sig { returns(T.nilable(String)) }
          attr_accessor :real_time_decision_id

          # This is present if a specific decline reason was given in the real-time
          #   decision.
          sig do
            returns(
              T.nilable(Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol)
            )
          end
          attr_accessor :real_time_decision_reason

          # Why the transaction was declined.
          sig { returns(Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol) }
          attr_accessor :reason

          # The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   is transacting with.
          sig { returns(T.nilable(String)) }
          attr_accessor :terminal_id

          # Fields related to verification of cardholder-provided values.
          sig { returns(Increase::Models::CardPayment::Element::CardDecline::Verification) }
          attr_reader :verification

          sig do
            params(
              verification: T.any(Increase::Models::CardPayment::Element::CardDecline::Verification, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :verification

          # A Card Decline object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_decline`.
          sig do
            params(
              id: String,
              actioner: Increase::Models::CardPayment::Element::CardDecline::Actioner::OrSymbol,
              amount: Integer,
              card_payment_id: String,
              currency: Increase::Models::CardPayment::Element::CardDecline::Currency::OrSymbol,
              declined_transaction_id: String,
              digital_wallet_token_id: T.nilable(String),
              direction: Increase::Models::CardPayment::Element::CardDecline::Direction::OrSymbol,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: T.any(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails, Increase::Util::AnyHash),
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers, Increase::Util::AnyHash),
              network_risk_score: T.nilable(Integer),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::OrSymbol,
              real_time_decision_id: T.nilable(String),
              real_time_decision_reason: T.nilable(Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::OrSymbol),
              reason: Increase::Models::CardPayment::Element::CardDecline::Reason::OrSymbol,
              terminal_id: T.nilable(String),
              verification: T.any(Increase::Models::CardPayment::Element::CardDecline::Verification, Increase::Util::AnyHash)
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
                  actioner: Increase::Models::CardPayment::Element::CardDecline::Actioner::TaggedSymbol,
                  amount: Integer,
                  card_payment_id: String,
                  currency: Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol,
                  declined_transaction_id: String,
                  digital_wallet_token_id: T.nilable(String),
                  direction: Increase::Models::CardPayment::Element::CardDecline::Direction::TaggedSymbol,
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
                  processing_category: Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol,
                  real_time_decision_id: T.nilable(String),
                  real_time_decision_reason: T.nilable(Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol),
                  reason: Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol,
                  terminal_id: T.nilable(String),
                  verification: Increase::Models::CardPayment::Element::CardDecline::Verification
                }
              )
          end
          def to_hash
          end

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          module Actioner
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::Actioner) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardDecline::Actioner::TaggedSymbol) }

            # This object was actioned by the user through a real-time decision.
            USER = T.let(:user, Increase::Models::CardPayment::Element::CardDecline::Actioner::TaggedSymbol)

            # This object was actioned by Increase without user intervention.
            INCREASE = T.let(:increase, Increase::Models::CardPayment::Element::CardDecline::Actioner::TaggedSymbol)

            # This object was actioned by the network, through stand-in processing.
            NETWORK = T.let(:network, Increase::Models::CardPayment::Element::CardDecline::Actioner::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardDecline::Actioner::TaggedSymbol]) }
            def self.values
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   account currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardDecline::Currency::TaggedSymbol]) }
            def self.values
            end
          end

          # The direction describes the direction the funds will move, either from the
          #   cardholder to the merchant or from the merchant to the cardholder.
          module Direction
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::Direction) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardDecline::Direction::TaggedSymbol) }

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT =
              T.let(:settlement, Increase::Models::CardPayment::Element::CardDecline::Direction::TaggedSymbol)

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = T.let(:refund, Increase::Models::CardPayment::Element::CardDecline::Direction::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardDecline::Direction::TaggedSymbol]) }
            def self.values
            end
          end

          class NetworkDetails < Increase::BaseModel
            # The payment network used to process this card authorization.
            sig { returns(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category::TaggedSymbol) }
            attr_accessor :category

            # Fields specific to the `visa` network.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa)) }
            attr_reader :visa

            sig do
              params(
                visa: T.nilable(
                  T.any(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa, Increase::Util::AnyHash)
                )
              )
                .void
            end
            attr_writer :visa

            # Fields specific to the `network`.
            sig do
              params(
                category: Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category::OrSymbol,
                visa: T.nilable(
                  T.any(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa, Increase::Util::AnyHash)
                )
              )
                .returns(T.attached_class)
            end
            def self.new(category:, visa:)
            end

            sig do
              override
                .returns(
                  {
                    category: Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category::TaggedSymbol,
                    visa: T.nilable(Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            # The payment network used to process this card authorization.
            module Category
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category::TaggedSymbol) }

              # Visa
              VISA =
                T.let(:visa, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class Visa < Increase::BaseModel
              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :electronic_commerce_indicator

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                )
              end
              attr_accessor :point_of_service_entry_mode

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :stand_in_processing_reason

              # Fields specific to the `visa` network.
              sig do
                params(
                  electronic_commerce_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::OrSymbol
                  ),
                  point_of_service_entry_mode: T.nilable(
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::OrSymbol
                  ),
                  stand_in_processing_reason: T.nilable(
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::OrSymbol
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:)
              end

              sig do
                override
                  .returns(
                    {
                      electronic_commerce_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ),
                      point_of_service_entry_mode: T.nilable(
                        Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ),
                      stand_in_processing_reason: T.nilable(
                        Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      )
                    }
                  )
              end
              def to_hash
              end

              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              module ElectronicCommerceIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                    )
                  end

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER =
                  T.let(
                    :mail_phone_order,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING =
                  T.let(
                    :recurring,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT =
                  T.let(
                    :installment,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER =
                  T.let(
                    :unknown_mail_phone_order,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE =
                  T.let(
                    :secure_electronic_commerce,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  T.let(
                    :non_authenticated_security_transaction_at_3ds_capable_merchant,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION =
                  T.let(
                    :non_authenticated_security_transaction,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION =
                  T.let(
                    :non_secure_transaction,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              module PointOfServiceEntryMode
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                    )
                  end

                # Unknown
                UNKNOWN =
                  T.let(
                    :unknown,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Manual key entry
                MANUAL =
                  T.let(
                    :manual,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV =
                  T.let(
                    :magnetic_stripe_no_cvv,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Optical code
                OPTICAL_CODE =
                  T.let(
                    :optical_code,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD =
                  T.let(
                    :integrated_circuit_card,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of chip card
                CONTACTLESS =
                  T.let(
                    :contactless,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE =
                  T.let(
                    :credential_on_file,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read
                MAGNETIC_STRIPE =
                  T.let(
                    :magnetic_stripe,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE =
                  T.let(
                    :contactless_magnetic_stripe,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV =
                  T.let(
                    :integrated_circuit_card_no_cvv,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              module StandInProcessingReason
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                    )
                  end

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR =
                  T.let(
                    :issuer_error,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD =
                  T.let(
                    :invalid_physical_card,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                  T.let(
                    :invalid_cardholder_authentication_verification_value,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR =
                  T.let(
                    :internal_visa_error,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                  T.let(
                    :merchant_transaction_advisory_service_authentication_required,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK =
                  T.let(
                    :payment_fraud_disruption_acquirer_block,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An unspecific reason for stand-in processing.
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A life-cycle identifier used across e.g., an authorization and a reversal.
            #   Expected to be unique per acquirer within a window of time. For some card
            #   networks the retrieval reference number includes the trace counter.
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            # A counter used to verify an individual authorization. Expected to be unique per
            #   acquirer within a window of time.
            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

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
          module ProcessingCategory
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol) }

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING =
              T.let(
                :account_funding,
                Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol
              )

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER =
              T.let(
                :automatic_fuel_dispenser,
                Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol
              )

            # A transaction used to pay a bill.
            BILL_PAYMENT =
              T.let(
                :bill_payment,
                Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol
              )

            # A regular purchase.
            PURCHASE =
              T.let(:purchase, Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol)

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH =
              T.let(:quasi_cash, Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol)

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND =
              T.let(:refund, Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory::TaggedSymbol])
            end
            def self.values
            end
          end

          # This is present if a specific decline reason was given in the real-time
          #   decision.
          module RealTimeDecisionReason
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol) }

            # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # This type of transaction is not allowed for this card. This transaction should not be retried.
            TRANSACTION_NEVER_ALLOWED =
              T.let(
                :transaction_never_allowed,
                Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
            EXCEEDS_APPROVAL_LIMIT =
              T.let(
                :exceeds_approval_limit,
                Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
            CARD_TEMPORARILY_DISABLED =
              T.let(
                :card_temporarily_disabled,
                Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
            SUSPECTED_FRAUD =
              T.let(
                :suspected_fraud,
                Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
            OTHER =
              T.let(:other, Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason::TaggedSymbol]
                )
            end
            def self.values
            end
          end

          # Why the transaction was declined.
          module Reason
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::Reason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol) }

            # The account has been closed.
            ACCOUNT_CLOSED =
              T.let(:account_closed, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The Card was not active.
            CARD_NOT_ACTIVE =
              T.let(:card_not_active, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The Card has been canceled.
            CARD_CANCELED =
              T.let(:card_canceled, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The Physical Card was not active.
            PHYSICAL_CARD_NOT_ACTIVE =
              T.let(
                :physical_card_not_active,
                Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol
              )

            # The account's entity was not active.
            ENTITY_NOT_ACTIVE =
              T.let(:entity_not_active, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The account was inactive.
            GROUP_LOCKED =
              T.let(:group_locked, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The Card's Account did not have a sufficient available balance.
            INSUFFICIENT_FUNDS =
              T.let(:insufficient_funds, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The given CVV2 did not match the card's value.
            CVV2_MISMATCH =
              T.let(:cvv2_mismatch, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The given expiration date did not match the card's value. Only applies when a CVV2 is present.
            CARD_EXPIRATION_MISMATCH =
              T.let(
                :card_expiration_mismatch,
                Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol
              )

            # The attempted card transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED =
              T.let(:transaction_not_allowed, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The transaction was blocked by a Limit.
            BREACHES_LIMIT =
              T.let(:breaches_limit, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # Your application declined the transaction via webhook.
            WEBHOOK_DECLINED =
              T.let(:webhook_declined, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # Your application webhook did not respond without the required timeout.
            WEBHOOK_TIMED_OUT =
              T.let(:webhook_timed_out, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # Declined by stand-in processing.
            DECLINED_BY_STAND_IN_PROCESSING =
              T.let(
                :declined_by_stand_in_processing,
                Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol
              )

            # The card read had an invalid CVV, dCVV, or authorization request cryptogram.
            INVALID_PHYSICAL_CARD =
              T.let(:invalid_physical_card, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            # The original card authorization for this incremental authorization does not exist.
            MISSING_ORIGINAL_AUTHORIZATION =
              T.let(
                :missing_original_authorization,
                Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol
              )

            # The transaction was suspected to be fraudulent. Please reach out to support@increase.com for more information.
            SUSPECTED_FRAUD =
              T.let(:suspected_fraud, Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardDecline::Reason::TaggedSymbol]) }
            def self.values
            end
          end

          class Verification < Increase::BaseModel
            # Fields related to verification of the Card Verification Code, a 3-digit code on
            #   the back of the card.
            sig { returns(Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode) }
            attr_reader :card_verification_code

            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode,
                  Increase::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :card_verification_code

            # Cardholder address provided in the authorization request and the address on file
            #   we verified it against.
            sig { returns(Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress) }
            attr_reader :cardholder_address

            sig do
              params(
                cardholder_address: T.any(
                  Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress,
                  Increase::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :cardholder_address

            # Fields related to verification of cardholder-provided values.
            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode,
                  Increase::Util::AnyHash
                ),
                cardholder_address: T.any(
                  Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress,
                  Increase::Util::AnyHash
                )
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
              # The result of verifying the Card Verification Code.
              sig do
                returns(
                  Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # Fields related to verification of the Card Verification Code, a 3-digit code on
              #   the back of the card.
              sig do
                params(
                  result: Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(result:)
              end

              sig do
                override
                  .returns(
                    {
                      result: Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The result of verifying the Card Verification Code.
              module Result
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                    )
                  end

                # No card verification code was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code matched the one on file.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code did not match the one on file.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class CardholderAddress < Increase::BaseModel
              # Line 1 of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_line1

              # The postal code of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_postal_code

              # The cardholder address line 1 provided for verification in the authorization
              #   request.
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_line1

              # The postal code provided for verification in the authorization request.
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_postal_code

              # The address verification result returned to the card network.
              sig do
                returns(
                  Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # Cardholder address provided in the authorization request and the address on file
              #   we verified it against.
              sig do
                params(
                  actual_line1: T.nilable(String),
                  actual_postal_code: T.nilable(String),
                  provided_line1: T.nilable(String),
                  provided_postal_code: T.nilable(String),
                  result: Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::OrSymbol
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
                      result: Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The address verification result returned to the card network.
              module Result
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                    )
                  end

                # No adress was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED =
                  T.let(
                    :postal_code_match_address_not_checked,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH =
                  T.let(
                    :postal_code_match_address_no_match,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH =
                  T.let(
                    :postal_code_no_match_address_match,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address match.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address do not match.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol]
                    )
                end
                def self.values
                end
              end
            end
          end
        end

        class CardFuelConfirmation < Increase::BaseModel
          # The Card Fuel Confirmation identifier.
          sig { returns(String) }
          attr_accessor :id

          # The identifier for the Card Authorization this updates.
          sig { returns(String) }
          attr_accessor :card_authorization_id

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's
          #   currency.
          sig { returns(Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol) }
          attr_accessor :currency

          # The card network used to process this card authorization.
          sig { returns(Increase::Models::CardPayment::Element::CardFuelConfirmation::Network::TaggedSymbol) }
          attr_accessor :network

          # Network-specific identifiers for a specific request or transaction.
          sig { returns(Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(
                Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers,
                Increase::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :network_identifiers

          # The identifier of the Pending Transaction associated with this Card Fuel
          #   Confirmation.
          sig { returns(T.nilable(String)) }
          attr_accessor :pending_transaction_id

          # A constant representing the object's type. For this resource it will always be
          #   `card_fuel_confirmation`.
          sig { returns(Increase::Models::CardPayment::Element::CardFuelConfirmation::Type::TaggedSymbol) }
          attr_accessor :type

          # The updated authorization amount after this fuel confirmation, in the minor unit
          #   of the transaction's currency. For dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :updated_authorization_amount

          # A Card Fuel Confirmation object. This field will be present in the JSON response
          #   if and only if `category` is equal to `card_fuel_confirmation`. Card Fuel
          #   Confirmations update the amount of a Card Authorization after a fuel pump
          #   transaction is completed.
          sig do
            params(
              id: String,
              card_authorization_id: String,
              currency: Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::OrSymbol,
              network: Increase::Models::CardPayment::Element::CardFuelConfirmation::Network::OrSymbol,
              network_identifiers: T.any(
                Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers,
                Increase::Util::AnyHash
              ),
              pending_transaction_id: T.nilable(String),
              type: Increase::Models::CardPayment::Element::CardFuelConfirmation::Type::OrSymbol,
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
                  currency: Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol,
                  network: Increase::Models::CardPayment::Element::CardFuelConfirmation::Network::TaggedSymbol,
                  network_identifiers: Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers,
                  pending_transaction_id: T.nilable(String),
                  type: Increase::Models::CardPayment::Element::CardFuelConfirmation::Type::TaggedSymbol,
                  updated_authorization_amount: Integer
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency::TaggedSymbol])
            end
            def self.values
            end
          end

          # The card network used to process this card authorization.
          module Network
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Network) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Network::TaggedSymbol) }

            # Visa
            VISA = T.let(:visa, Increase::Models::CardPayment::Element::CardFuelConfirmation::Network::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardFuelConfirmation::Network::TaggedSymbol])
            end
            def self.values
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A life-cycle identifier used across e.g., an authorization and a reversal.
            #   Expected to be unique per acquirer within a window of time. For some card
            #   networks the retrieval reference number includes the trace counter.
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            # A counter used to verify an individual authorization. Expected to be unique per
            #   acquirer within a window of time.
            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

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

          # A constant representing the object's type. For this resource it will always be
          #   `card_fuel_confirmation`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Type::TaggedSymbol) }

            CARD_FUEL_CONFIRMATION =
              T.let(
                :card_fuel_confirmation,
                Increase::Models::CardPayment::Element::CardFuelConfirmation::Type::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardFuelConfirmation::Type::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class CardIncrement < Increase::BaseModel
          # The Card Increment identifier.
          sig { returns(String) }
          attr_accessor :id

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          sig { returns(Increase::Models::CardPayment::Element::CardIncrement::Actioner::TaggedSymbol) }
          attr_accessor :actioner

          # The amount of this increment in the minor unit of the transaction's currency.
          #   For dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :amount

          # The identifier for the Card Authorization this increments.
          sig { returns(String) }
          attr_accessor :card_authorization_id

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's
          #   currency.
          sig { returns(Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol) }
          attr_accessor :currency

          # The card network used to process this card authorization.
          sig { returns(Increase::Models::CardPayment::Element::CardIncrement::Network::TaggedSymbol) }
          attr_accessor :network

          # Network-specific identifiers for a specific request or transaction.
          sig { returns(Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_identifiers

          # The risk score generated by the card network. For Visa this is the Visa Advanced
          #   Authorization risk score, from 0 to 99, where 99 is the riskiest.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :network_risk_score

          # The identifier of the Pending Transaction associated with this Card Increment.
          sig { returns(T.nilable(String)) }
          attr_accessor :pending_transaction_id

          # The identifier of the Real-Time Decision sent to approve or decline this
          #   incremental authorization.
          sig { returns(T.nilable(String)) }
          attr_accessor :real_time_decision_id

          # A constant representing the object's type. For this resource it will always be
          #   `card_increment`.
          sig { returns(Increase::Models::CardPayment::Element::CardIncrement::Type::TaggedSymbol) }
          attr_accessor :type

          # The updated authorization amount after this increment, in the minor unit of the
          #   transaction's currency. For dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :updated_authorization_amount

          # A Card Increment object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_increment`. Card Increments increase the
          #   pending amount of an authorized transaction.
          sig do
            params(
              id: String,
              actioner: Increase::Models::CardPayment::Element::CardIncrement::Actioner::OrSymbol,
              amount: Integer,
              card_authorization_id: String,
              currency: Increase::Models::CardPayment::Element::CardIncrement::Currency::OrSymbol,
              network: Increase::Models::CardPayment::Element::CardIncrement::Network::OrSymbol,
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers, Increase::Util::AnyHash),
              network_risk_score: T.nilable(Integer),
              pending_transaction_id: T.nilable(String),
              real_time_decision_id: T.nilable(String),
              type: Increase::Models::CardPayment::Element::CardIncrement::Type::OrSymbol,
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
                  actioner: Increase::Models::CardPayment::Element::CardIncrement::Actioner::TaggedSymbol,
                  amount: Integer,
                  card_authorization_id: String,
                  currency: Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol,
                  network: Increase::Models::CardPayment::Element::CardIncrement::Network::TaggedSymbol,
                  network_identifiers: Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  pending_transaction_id: T.nilable(String),
                  real_time_decision_id: T.nilable(String),
                  type: Increase::Models::CardPayment::Element::CardIncrement::Type::TaggedSymbol,
                  updated_authorization_amount: Integer
                }
              )
          end
          def to_hash
          end

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          module Actioner
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardIncrement::Actioner) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardIncrement::Actioner::TaggedSymbol) }

            # This object was actioned by the user through a real-time decision.
            USER = T.let(:user, Increase::Models::CardPayment::Element::CardIncrement::Actioner::TaggedSymbol)

            # This object was actioned by Increase without user intervention.
            INCREASE =
              T.let(:increase, Increase::Models::CardPayment::Element::CardIncrement::Actioner::TaggedSymbol)

            # This object was actioned by the network, through stand-in processing.
            NETWORK = T.let(:network, Increase::Models::CardPayment::Element::CardIncrement::Actioner::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardIncrement::Actioner::TaggedSymbol]) }
            def self.values
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardIncrement::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardIncrement::Currency::TaggedSymbol]) }
            def self.values
            end
          end

          # The card network used to process this card authorization.
          module Network
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardIncrement::Network) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardIncrement::Network::TaggedSymbol) }

            # Visa
            VISA = T.let(:visa, Increase::Models::CardPayment::Element::CardIncrement::Network::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardIncrement::Network::TaggedSymbol]) }
            def self.values
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A life-cycle identifier used across e.g., an authorization and a reversal.
            #   Expected to be unique per acquirer within a window of time. For some card
            #   networks the retrieval reference number includes the trace counter.
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            # A counter used to verify an individual authorization. Expected to be unique per
            #   acquirer within a window of time.
            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

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

          # A constant representing the object's type. For this resource it will always be
          #   `card_increment`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardIncrement::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardIncrement::Type::TaggedSymbol) }

            CARD_INCREMENT =
              T.let(:card_increment, Increase::Models::CardPayment::Element::CardIncrement::Type::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardIncrement::Type::TaggedSymbol]) }
            def self.values
            end
          end
        end

        class CardRefund < Increase::BaseModel
          # The Card Refund identifier.
          sig { returns(String) }
          attr_accessor :id

          # The amount in the minor unit of the transaction's settlement currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :amount

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          attr_accessor :card_payment_id

          # Cashback debited for this transaction, if eligible. Cashback is paid out in
          #   aggregate, monthly.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::Cashback)) }
          attr_reader :cashback

          sig do
            params(
              cashback: T.nilable(T.any(Increase::Models::CardPayment::Element::CardRefund::Cashback, Increase::Util::AnyHash))
            )
              .void
          end
          attr_writer :cashback

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's settlement currency.
          sig { returns(Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol) }
          attr_accessor :currency

          # Interchange assessed as a part of this transaciton.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::Interchange)) }
          attr_reader :interchange

          sig do
            params(
              interchange: T.nilable(T.any(Increase::Models::CardPayment::Element::CardRefund::Interchange, Increase::Util::AnyHash))
            )
              .void
          end
          attr_writer :interchange

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # The 4-digit MCC describing the merchant's business.
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # The city the merchant resides in.
          sig { returns(String) }
          attr_accessor :merchant_city

          # The country the merchant resides in.
          sig { returns(String) }
          attr_accessor :merchant_country

          # The name of the merchant.
          sig { returns(String) }
          attr_accessor :merchant_name

          # The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          # Network-specific identifiers for this refund.
          sig { returns(Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_identifiers

          # The amount in the minor unit of the transaction's presentment currency.
          sig { returns(Integer) }
          attr_accessor :presentment_amount

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's presentment currency.
          sig { returns(String) }
          attr_accessor :presentment_currency

          # Additional details about the card purchase, such as tax and industry-specific
          #   fields.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails)) }
          attr_reader :purchase_details

          sig do
            params(
              purchase_details: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails, Increase::Util::AnyHash)
              )
            )
              .void
          end
          attr_writer :purchase_details

          # The identifier of the Transaction associated with this Transaction.
          sig { returns(String) }
          attr_accessor :transaction_id

          # A constant representing the object's type. For this resource it will always be
          #   `card_refund`.
          sig { returns(Increase::Models::CardPayment::Element::CardRefund::Type::TaggedSymbol) }
          attr_accessor :type

          # A Card Refund object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_refund`. Card Refunds move money back to
          #   the cardholder. While they are usually connected to a Card Settlement an
          #   acquirer can also refund money directly to a card without relation to a
          #   transaction.
          sig do
            params(
              id: String,
              amount: Integer,
              card_payment_id: String,
              cashback: T.nilable(T.any(Increase::Models::CardPayment::Element::CardRefund::Cashback, Increase::Util::AnyHash)),
              currency: Increase::Models::CardPayment::Element::CardRefund::Currency::OrSymbol,
              interchange: T.nilable(T.any(Increase::Models::CardPayment::Element::CardRefund::Interchange, Increase::Util::AnyHash)),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: String,
              merchant_country: String,
              merchant_name: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers, Increase::Util::AnyHash),
              presentment_amount: Integer,
              presentment_currency: String,
              purchase_details: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails, Increase::Util::AnyHash)
              ),
              transaction_id: String,
              type: Increase::Models::CardPayment::Element::CardRefund::Type::OrSymbol
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
                  currency: Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol,
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
                  type: Increase::Models::CardPayment::Element::CardRefund::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class Cashback < Increase::BaseModel
            # The cashback amount given as a string containing a decimal number. The amount is
            #   a positive number if it will be credited to you (e.g., settlements) and a
            #   negative number if it will be debited (e.g., refunds).
            sig { returns(String) }
            attr_accessor :amount

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            sig { returns(Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol) }
            attr_accessor :currency

            # Cashback debited for this transaction, if eligible. Cashback is paid out in
            #   aggregate, monthly.
            sig do
              params(
                amount: String,
                currency: Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, currency:)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    currency: Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol
                  }
                )
            end
            def to_hash
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            module Currency
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol) }

              # Canadian Dollar (CAD)
              CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol)

              # Swiss Franc (CHF)
              CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol)

              # Euro (EUR)
              EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol)

              # British Pound (GBP)
              GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol)

              # Japanese Yen (JPY)
              JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol)

              # US Dollar (USD)
              USD = T.let(:USD, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency::TaggedSymbol])
              end
              def self.values
              end
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's settlement currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardRefund::Currency::TaggedSymbol]) }
            def self.values
            end
          end

          class Interchange < Increase::BaseModel
            # The interchange amount given as a string containing a decimal number. The amount
            #   is a positive number if it is credited to Increase (e.g., settlements) and a
            #   negative number if it is debited (e.g., refunds).
            sig { returns(String) }
            attr_accessor :amount

            # The card network specific interchange code.
            sig { returns(T.nilable(String)) }
            attr_accessor :code

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   reimbursement.
            sig { returns(Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol) }
            attr_accessor :currency

            # Interchange assessed as a part of this transaciton.
            sig do
              params(
                amount: String,
                code: T.nilable(String),
                currency: Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, code:, currency:)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    code: T.nilable(String),
                    currency: Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol
                  }
                )
            end
            def to_hash
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   reimbursement.
            module Currency
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol) }

              # Canadian Dollar (CAD)
              CAD =
                T.let(:CAD, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol)

              # Swiss Franc (CHF)
              CHF =
                T.let(:CHF, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol)

              # Euro (EUR)
              EUR =
                T.let(:EUR, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol)

              # British Pound (GBP)
              GBP =
                T.let(:GBP, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol)

              # Japanese Yen (JPY)
              JPY =
                T.let(:JPY, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol)

              # US Dollar (USD)
              USD =
                T.let(:USD, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency::TaggedSymbol])
              end
              def self.values
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A network assigned business ID that identifies the acquirer that processed this
            #   transaction.
            sig { returns(String) }
            attr_accessor :acquirer_business_id

            # A globally unique identifier for this settlement.
            sig { returns(String) }
            attr_accessor :acquirer_reference_number

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

            # Network-specific identifiers for this refund.
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
            # Fields specific to car rentals.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental)) }
            attr_reader :car_rental

            sig do
              params(
                car_rental: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental,
                    Increase::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :car_rental

            # An identifier from the merchant for the customer or consumer.
            sig { returns(T.nilable(String)) }
            attr_accessor :customer_reference_identifier

            # The state or provincial tax amount in minor units.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :local_tax_amount

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   assessed.
            sig { returns(T.nilable(String)) }
            attr_accessor :local_tax_currency

            # Fields specific to lodging.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging)) }
            attr_reader :lodging

            sig do
              params(
                lodging: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging,
                    Increase::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :lodging

            # The national tax amount in minor units.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :national_tax_amount

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   assessed.
            sig { returns(T.nilable(String)) }
            attr_accessor :national_tax_currency

            # An identifier from the merchant for the purchase to the issuer and cardholder.
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_identifier

            # The format of the purchase identifier.
            sig do
              returns(
                T.nilable(
                  Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )
              )
            end
            attr_accessor :purchase_identifier_format

            # Fields specific to travel.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel)) }
            attr_reader :travel

            sig do
              params(
                travel: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel,
                    Increase::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :travel

            # Additional details about the card purchase, such as tax and industry-specific
            #   fields.
            sig do
              params(
                car_rental: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental,
                    Increase::Util::AnyHash
                  )
                ),
                customer_reference_identifier: T.nilable(String),
                local_tax_amount: T.nilable(Integer),
                local_tax_currency: T.nilable(String),
                lodging: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging,
                    Increase::Util::AnyHash
                  )
                ),
                national_tax_amount: T.nilable(Integer),
                national_tax_currency: T.nilable(String),
                purchase_identifier: T.nilable(String),
                purchase_identifier_format: T.nilable(
                  Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::OrSymbol
                ),
                travel: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel,
                    Increase::Util::AnyHash
                  )
                )
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
                    purchase_identifier_format: T.nilable(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                    ),
                    travel: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel)
                  }
                )
            end
            def to_hash
            end

            class CarRental < Increase::BaseModel
              # Code indicating the vehicle's class.
              sig { returns(T.nilable(String)) }
              attr_accessor :car_class_code

              # Date the customer picked up the car or, in the case of a no-show or pre-pay
              #   transaction, the scheduled pick up date.
              sig { returns(T.nilable(Date)) }
              attr_accessor :checkout_date

              # Daily rate being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :daily_rental_rate_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental
              #   rate.
              sig { returns(T.nilable(String)) }
              attr_accessor :daily_rental_rate_currency

              # Number of days the vehicle was rented.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :days_rented

              # Additional charges (gas, late fee, etc.) being billed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )
                )
              end
              attr_accessor :extra_charges

              # Fuel charges for the vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :fuel_charges_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges
              #   assessed.
              sig { returns(T.nilable(String)) }
              attr_accessor :fuel_charges_currency

              # Any insurance being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :insurance_charges_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance
              #   charges assessed.
              sig { returns(T.nilable(String)) }
              attr_accessor :insurance_charges_currency

              # An indicator that the cardholder is being billed for a reserved vehicle that was
              #   not actually rented (that is, a "no-show" charge).
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :no_show_indicator

              # Charges for returning the vehicle at a different location than where it was
              #   picked up.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :one_way_drop_off_charges_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way
              #   drop-off charges assessed.
              sig { returns(T.nilable(String)) }
              attr_accessor :one_way_drop_off_charges_currency

              # Name of the person renting the vehicle.
              sig { returns(T.nilable(String)) }
              attr_accessor :renter_name

              # Weekly rate being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :weekly_rental_rate_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly
              #   rental rate.
              sig { returns(T.nilable(String)) }
              attr_accessor :weekly_rental_rate_currency

              # Fields specific to car rentals.
              sig do
                params(
                  car_class_code: T.nilable(String),
                  checkout_date: T.nilable(Date),
                  daily_rental_rate_amount: T.nilable(Integer),
                  daily_rental_rate_currency: T.nilable(String),
                  days_rented: T.nilable(Integer),
                  extra_charges: T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::OrSymbol
                  ),
                  fuel_charges_amount: T.nilable(Integer),
                  fuel_charges_currency: T.nilable(String),
                  insurance_charges_amount: T.nilable(Integer),
                  insurance_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::OrSymbol
                  ),
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
                      extra_charges: T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                      ),
                      fuel_charges_amount: T.nilable(Integer),
                      fuel_charges_currency: T.nilable(String),
                      insurance_charges_amount: T.nilable(Integer),
                      insurance_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                      ),
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

              # Additional charges (gas, late fee, etc.) being billed.
              module ExtraCharges
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                    )
                  end

                # No extra charge
                NO_EXTRA_CHARGE =
                  T.let(
                    :no_extra_charge,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Gas
                GAS =
                  T.let(
                    :gas,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Extra mileage
                EXTRA_MILEAGE =
                  T.let(
                    :extra_mileage,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Late return
                LATE_RETURN =
                  T.let(
                    :late_return,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # One way service fee
                ONE_WAY_SERVICE_FEE =
                  T.let(
                    :one_way_service_fee,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Parking violation
                PARKING_VIOLATION =
                  T.let(
                    :parking_violation,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol]
                    )
                end
                def self.values
                end
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was
              #   not actually rented (that is, a "no-show" charge).
              module NoShowIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                    )
                  end

                # Not applicable
                NOT_APPLICABLE =
                  T.let(
                    :not_applicable,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE =
                  T.let(
                    :no_show_for_specialized_vehicle,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class Lodging < Increase::BaseModel
              # Date the customer checked in.
              sig { returns(T.nilable(Date)) }
              attr_accessor :check_in_date

              # Daily rate being charged for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :daily_room_rate_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room
              #   rate.
              sig { returns(T.nilable(String)) }
              attr_accessor :daily_room_rate_currency

              # Additional charges (phone, late check-out, etc.) being billed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )
                )
              end
              attr_accessor :extra_charges

              # Folio cash advances for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :folio_cash_advances_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash
              #   advances.
              sig { returns(T.nilable(String)) }
              attr_accessor :folio_cash_advances_currency

              # Food and beverage charges for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :food_beverage_charges_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and
              #   beverage charges.
              sig { returns(T.nilable(String)) }
              attr_accessor :food_beverage_charges_currency

              # Indicator that the cardholder is being billed for a reserved room that was not
              #   actually used.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :no_show_indicator

              # Prepaid expenses being charged for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :prepaid_expenses_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid
              #   expenses.
              sig { returns(T.nilable(String)) }
              attr_accessor :prepaid_expenses_currency

              # Number of nights the room was rented.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :room_nights

              # Total room tax being charged.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :total_room_tax_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room
              #   tax.
              sig { returns(T.nilable(String)) }
              attr_accessor :total_room_tax_currency

              # Total tax being charged for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :total_tax_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax
              #   assessed.
              sig { returns(T.nilable(String)) }
              attr_accessor :total_tax_currency

              # Fields specific to lodging.
              sig do
                params(
                  check_in_date: T.nilable(Date),
                  daily_room_rate_amount: T.nilable(Integer),
                  daily_room_rate_currency: T.nilable(String),
                  extra_charges: T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::OrSymbol
                  ),
                  folio_cash_advances_amount: T.nilable(Integer),
                  folio_cash_advances_currency: T.nilable(String),
                  food_beverage_charges_amount: T.nilable(Integer),
                  food_beverage_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::OrSymbol
                  ),
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
                      extra_charges: T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                      ),
                      folio_cash_advances_amount: T.nilable(Integer),
                      folio_cash_advances_currency: T.nilable(String),
                      food_beverage_charges_amount: T.nilable(Integer),
                      food_beverage_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                      ),
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

              # Additional charges (phone, late check-out, etc.) being billed.
              module ExtraCharges
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                    )
                  end

                # No extra charge
                NO_EXTRA_CHARGE =
                  T.let(
                    :no_extra_charge,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Restaurant
                RESTAURANT =
                  T.let(
                    :restaurant,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Gift shop
                GIFT_SHOP =
                  T.let(
                    :gift_shop,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Mini bar
                MINI_BAR =
                  T.let(
                    :mini_bar,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Telephone
                TELEPHONE =
                  T.let(
                    :telephone,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Other
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Laundry
                LAUNDRY =
                  T.let(
                    :laundry,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol]
                    )
                end
                def self.values
                end
              end

              # Indicator that the cardholder is being billed for a reserved room that was not
              #   actually used.
              module NoShowIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                    )
                  end

                # Not applicable
                NOT_APPLICABLE =
                  T.let(
                    :not_applicable,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )

                # No show
                NO_SHOW =
                  T.let(
                    :no_show,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            # The format of the purchase identifier.
            module PurchaseIdentifierFormat
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                  )
                end

              # Free text
              FREE_TEXT =
                T.let(
                  :free_text,
                  Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Order number
              ORDER_NUMBER =
                T.let(
                  :order_number,
                  Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER =
                T.let(
                  :rental_agreement_number,
                  Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Hotel folio number
              HOTEL_FOLIO_NUMBER =
                T.let(
                  :hotel_folio_number,
                  Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Invoice number
              INVOICE_NUMBER =
                T.let(
                  :invoice_number,
                  Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class Travel < Increase::BaseModel
              # Ancillary purchases in addition to the airfare.
              sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary)) }
              attr_reader :ancillary

              sig do
                params(
                  ancillary: T.nilable(
                    T.any(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary,
                      Increase::Util::AnyHash
                    )
                  )
                )
                  .void
              end
              attr_writer :ancillary

              # Indicates the computerized reservation system used to book the ticket.
              sig { returns(T.nilable(String)) }
              attr_accessor :computerized_reservation_system

              # Indicates the reason for a credit to the cardholder.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :credit_reason_indicator

              # Date of departure.
              sig { returns(T.nilable(Date)) }
              attr_accessor :departure_date

              # Code for the originating city or airport.
              sig { returns(T.nilable(String)) }
              attr_accessor :origination_city_airport_code

              # Name of the passenger.
              sig { returns(T.nilable(String)) }
              attr_accessor :passenger_name

              # Indicates whether this ticket is non-refundable.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :restricted_ticket_indicator

              # Indicates why a ticket was changed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :ticket_change_indicator

              # Ticket number.
              sig { returns(T.nilable(String)) }
              attr_accessor :ticket_number

              # Code for the travel agency if the ticket was issued by a travel agency.
              sig { returns(T.nilable(String)) }
              attr_accessor :travel_agency_code

              # Name of the travel agency if the ticket was issued by a travel agency.
              sig { returns(T.nilable(String)) }
              attr_accessor :travel_agency_name

              # Fields specific to each leg of the journey.
              sig do
                returns(
                  T.nilable(T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg])
                )
              end
              attr_accessor :trip_legs

              # Fields specific to travel.
              sig do
                params(
                  ancillary: T.nilable(
                    T.any(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary,
                      Increase::Util::AnyHash
                    )
                  ),
                  computerized_reservation_system: T.nilable(String),
                  credit_reason_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::OrSymbol
                  ),
                  departure_date: T.nilable(Date),
                  origination_city_airport_code: T.nilable(String),
                  passenger_name: T.nilable(String),
                  restricted_ticket_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::OrSymbol
                  ),
                  ticket_change_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::OrSymbol
                  ),
                  ticket_number: T.nilable(String),
                  travel_agency_code: T.nilable(String),
                  travel_agency_name: T.nilable(String),
                  trip_legs: T.nilable(
                    T::Array[
                    T.any(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg,
                      Increase::Util::AnyHash
                    )
                    ]
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
                      ancillary: T.nilable(Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary),
                      computerized_reservation_system: T.nilable(String),
                      credit_reason_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                      ),
                      departure_date: T.nilable(Date),
                      origination_city_airport_code: T.nilable(String),
                      passenger_name: T.nilable(String),
                      restricted_ticket_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                      ),
                      ticket_change_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                      ),
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
                # If this purchase has a connection or relationship to another purchase, such as a
                #   baggage fee for a passenger transport ticket, this field should contain the
                #   ticket document number for the other purchase.
                sig { returns(T.nilable(String)) }
                attr_accessor :connected_ticket_document_number

                # Indicates the reason for a credit to the cardholder.
                sig do
                  returns(
                    T.nilable(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )
                  )
                end
                attr_accessor :credit_reason_indicator

                # Name of the passenger or description of the ancillary purchase.
                sig { returns(T.nilable(String)) }
                attr_accessor :passenger_name_or_description

                # Additional travel charges, such as baggage fees.
                sig do
                  returns(
                    T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                  )
                end
                attr_accessor :services

                # Ticket document number.
                sig { returns(T.nilable(String)) }
                attr_accessor :ticket_document_number

                # Ancillary purchases in addition to the airfare.
                sig do
                  params(
                    connected_ticket_document_number: T.nilable(String),
                    credit_reason_indicator: T.nilable(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::OrSymbol
                    ),
                    passenger_name_or_description: T.nilable(String),
                    services: T::Array[
                    T.any(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service,
                      Increase::Util::AnyHash
                    )
                    ],
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
                        credit_reason_indicator: T.nilable(
                          Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                        ),
                        passenger_name_or_description: T.nilable(String),
                        services: T::Array[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service],
                        ticket_document_number: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end

                # Indicates the reason for a credit to the cardholder.
                module CreditReasonIndicator
                  extend Increase::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                      )
                    end

                  # No credit
                  NO_CREDIT =
                    T.let(
                      :no_credit,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    T.let(
                      :passenger_transport_ancillary_purchase_cancellation,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    T.let(
                      :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Other
                  OTHER =
                    T.let(
                      :other,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                        ]
                      )
                  end
                  def self.values
                  end
                end

                class Service < Increase::BaseModel
                  # Category of the ancillary service.
                  sig do
                    returns(
                      T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )
                    )
                  end
                  attr_accessor :category

                  # Sub-category of the ancillary service, free-form.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :sub_category

                  sig do
                    params(
                      category: T.nilable(
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::OrSymbol
                      ),
                      sub_category: T.nilable(String)
                    )
                      .returns(T.attached_class)
                  end
                  def self.new(category:, sub_category:)
                  end

                  sig do
                    override
                      .returns(
                        {
                          category: T.nilable(
                            Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                          ),
                          sub_category: T.nilable(String)
                        }
                      )
                  end
                  def to_hash
                  end

                  # Category of the ancillary service.
                  module Category
                    extend Increase::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category)
                      end
                    OrSymbol =
                      T.type_alias do
                        T.any(
                          Symbol,
                          Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                        )
                      end

                    # None
                    NONE =
                      T.let(
                        :none,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Bundled service
                    BUNDLED_SERVICE =
                      T.let(
                        :bundled_service,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Baggage fee
                    BAGGAGE_FEE =
                      T.let(
                        :baggage_fee,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Change fee
                    CHANGE_FEE =
                      T.let(
                        :change_fee,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Cargo
                    CARGO =
                      T.let(
                        :cargo,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Carbon offset
                    CARBON_OFFSET =
                      T.let(
                        :carbon_offset,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Frequent flyer
                    FREQUENT_FLYER =
                      T.let(
                        :frequent_flyer,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Gift card
                    GIFT_CARD =
                      T.let(
                        :gift_card,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Ground transport
                    GROUND_TRANSPORT =
                      T.let(
                        :ground_transport,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT =
                      T.let(
                        :in_flight_entertainment,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Lounge
                    LOUNGE =
                      T.let(
                        :lounge,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Medical
                    MEDICAL =
                      T.let(
                        :medical,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Meal beverage
                    MEAL_BEVERAGE =
                      T.let(
                        :meal_beverage,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Other
                    OTHER =
                      T.let(
                        :other,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE =
                      T.let(
                        :passenger_assist_fee,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Pets
                    PETS =
                      T.let(
                        :pets,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Seat fees
                    SEAT_FEES =
                      T.let(
                        :seat_fees,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Standby
                    STANDBY =
                      T.let(
                        :standby,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Service fee
                    SERVICE_FEE =
                      T.let(
                        :service_fee,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Store
                    STORE =
                      T.let(
                        :store,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Travel service
                    TRAVEL_SERVICE =
                      T.let(
                        :travel_service,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL =
                      T.let(
                        :unaccompanied_travel,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Upgrades
                    UPGRADES =
                      T.let(
                        :upgrades,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Wi-fi
                    WIFI =
                      T.let(
                        :wifi,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    sig do
                      override
                        .returns(
                          T::Array[
                          Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                          ]
                        )
                    end
                    def self.values
                    end
                  end
                end
              end

              # Indicates the reason for a credit to the cardholder.
              module CreditReasonIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                    )
                  end

                # No credit
                NO_CREDIT =
                  T.let(
                    :no_credit,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  T.let(
                    :passenger_transport_ancillary_purchase_cancellation,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  T.let(
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION =
                  T.let(
                    :airline_ticket_cancellation,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Other
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET =
                  T.let(
                    :partial_refund_of_airline_ticket,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # Indicates whether this ticket is non-refundable.
              module RestrictedTicketIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                    )
                  end

                # No restrictions
                NO_RESTRICTIONS =
                  T.let(
                    :no_restrictions,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET =
                  T.let(
                    :restricted_non_refundable_ticket,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # Indicates why a ticket was changed.
              module TicketChangeIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                    )
                  end

                # None
                NONE =
                  T.let(
                    :none,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET =
                  T.let(
                    :change_to_existing_ticket,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                # New ticket
                NEW_TICKET =
                  T.let(
                    :new_ticket,
                    Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              class TripLeg < Increase::BaseModel
                # Carrier code (e.g., United Airlines, Jet Blue, etc.).
                sig { returns(T.nilable(String)) }
                attr_accessor :carrier_code

                # Code for the destination city or airport.
                sig { returns(T.nilable(String)) }
                attr_accessor :destination_city_airport_code

                # Fare basis code.
                sig { returns(T.nilable(String)) }
                attr_accessor :fare_basis_code

                # Flight number.
                sig { returns(T.nilable(String)) }
                attr_accessor :flight_number

                # Service class (e.g., first class, business class, etc.).
                sig { returns(T.nilable(String)) }
                attr_accessor :service_class

                # Indicates whether a stopover is allowed on this ticket.
                sig do
                  returns(
                    T.nilable(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                  )
                end
                attr_accessor :stop_over_code

                sig do
                  params(
                    carrier_code: T.nilable(String),
                    destination_city_airport_code: T.nilable(String),
                    fare_basis_code: T.nilable(String),
                    flight_number: T.nilable(String),
                    service_class: T.nilable(String),
                    stop_over_code: T.nilable(
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::OrSymbol
                    )
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
                        stop_over_code: T.nilable(
                          Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                        )
                      }
                    )
                end
                def to_hash
                end

                # Indicates whether a stopover is allowed on this ticket.
                module StopOverCode
                  extend Increase::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                      )
                    end

                  # None
                  NONE =
                    T.let(
                      :none,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  # Stop over allowed
                  STOP_OVER_ALLOWED =
                    T.let(
                      :stop_over_allowed,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED =
                    T.let(
                      :stop_over_not_allowed,
                      Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                        ]
                      )
                  end
                  def self.values
                  end
                end
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_refund`.
          module Type
            extend Increase::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardRefund::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardRefund::Type::TaggedSymbol) }

            CARD_REFUND = T.let(:card_refund, Increase::Models::CardPayment::Element::CardRefund::Type::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardRefund::Type::TaggedSymbol]) }
            def self.values
            end
          end
        end

        class CardReversal < Increase::BaseModel
          # The Card Reversal identifier.
          sig { returns(String) }
          attr_accessor :id

          # The identifier for the Card Authorization this reverses.
          sig { returns(String) }
          attr_accessor :card_authorization_id

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's
          #   currency.
          sig { returns(Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol) }
          attr_accessor :currency

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # The city the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_city

          # The country the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_country

          # The merchant descriptor of the merchant the card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_descriptor

          # The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   ZIP code, where the first 5 and last 4 are separated by a dash.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          # The card network used to process this card authorization.
          sig { returns(Increase::Models::CardPayment::Element::CardReversal::Network::TaggedSymbol) }
          attr_accessor :network

          # Network-specific identifiers for a specific request or transaction.
          sig { returns(Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_identifiers

          # The identifier of the Pending Transaction associated with this Card Reversal.
          sig { returns(T.nilable(String)) }
          attr_accessor :pending_transaction_id

          # The amount of this reversal in the minor unit of the transaction's currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :reversal_amount

          # Why this reversal was initiated.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardReversal::ReversalReason::TaggedSymbol)) }
          attr_accessor :reversal_reason

          # The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   is transacting with.
          sig { returns(T.nilable(String)) }
          attr_accessor :terminal_id

          # A constant representing the object's type. For this resource it will always be
          #   `card_reversal`.
          sig { returns(Increase::Models::CardPayment::Element::CardReversal::Type::TaggedSymbol) }
          attr_accessor :type

          # The amount left pending on the Card Authorization in the minor unit of the
          #   transaction's currency. For dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :updated_authorization_amount

          # A Card Reversal object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_reversal`. Card Reversals cancel parts of
          #   or the entirety of an existing Card Authorization.
          sig do
            params(
              id: String,
              card_authorization_id: String,
              currency: Increase::Models::CardPayment::Element::CardReversal::Currency::OrSymbol,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: T.nilable(String),
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network: Increase::Models::CardPayment::Element::CardReversal::Network::OrSymbol,
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers, Increase::Util::AnyHash),
              pending_transaction_id: T.nilable(String),
              reversal_amount: Integer,
              reversal_reason: T.nilable(Increase::Models::CardPayment::Element::CardReversal::ReversalReason::OrSymbol),
              terminal_id: T.nilable(String),
              type: Increase::Models::CardPayment::Element::CardReversal::Type::OrSymbol,
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
                  currency: Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol,
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: T.nilable(String),
                  merchant_country: T.nilable(String),
                  merchant_descriptor: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network: Increase::Models::CardPayment::Element::CardReversal::Network::TaggedSymbol,
                  network_identifiers: Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers,
                  pending_transaction_id: T.nilable(String),
                  reversal_amount: Integer,
                  reversal_reason: T.nilable(Increase::Models::CardPayment::Element::CardReversal::ReversalReason::TaggedSymbol),
                  terminal_id: T.nilable(String),
                  type: Increase::Models::CardPayment::Element::CardReversal::Type::TaggedSymbol,
                  updated_authorization_amount: Integer
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardReversal::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardReversal::Currency::TaggedSymbol]) }
            def self.values
            end
          end

          # The card network used to process this card authorization.
          module Network
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardReversal::Network) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardReversal::Network::TaggedSymbol) }

            # Visa
            VISA = T.let(:visa, Increase::Models::CardPayment::Element::CardReversal::Network::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardReversal::Network::TaggedSymbol]) }
            def self.values
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A life-cycle identifier used across e.g., an authorization and a reversal.
            #   Expected to be unique per acquirer within a window of time. For some card
            #   networks the retrieval reference number includes the trace counter.
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            # A counter used to verify an individual authorization. Expected to be unique per
            #   acquirer within a window of time.
            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

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

          # Why this reversal was initiated.
          module ReversalReason
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardReversal::ReversalReason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardReversal::ReversalReason::TaggedSymbol) }

            # The Card Reversal was initiated at the customer's request.
            REVERSED_BY_CUSTOMER =
              T.let(
                :reversed_by_customer,
                Increase::Models::CardPayment::Element::CardReversal::ReversalReason::TaggedSymbol
              )

            # The Card Reversal was initiated by the network or acquirer.
            REVERSED_BY_NETWORK_OR_ACQUIRER =
              T.let(
                :reversed_by_network_or_acquirer,
                Increase::Models::CardPayment::Element::CardReversal::ReversalReason::TaggedSymbol
              )

            # The Card Reversal was initiated by the point of sale device.
            REVERSED_BY_POINT_OF_SALE =
              T.let(
                :reversed_by_point_of_sale,
                Increase::Models::CardPayment::Element::CardReversal::ReversalReason::TaggedSymbol
              )

            # The Card Reversal was a partial reversal, for any reason.
            PARTIAL_REVERSAL =
              T.let(
                :partial_reversal,
                Increase::Models::CardPayment::Element::CardReversal::ReversalReason::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::CardPayment::Element::CardReversal::ReversalReason::TaggedSymbol])
            end
            def self.values
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_reversal`.
          module Type
            extend Increase::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardReversal::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardReversal::Type::TaggedSymbol) }

            CARD_REVERSAL =
              T.let(:card_reversal, Increase::Models::CardPayment::Element::CardReversal::Type::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardReversal::Type::TaggedSymbol]) }
            def self.values
            end
          end
        end

        class CardSettlement < Increase::BaseModel
          # The Card Settlement identifier.
          sig { returns(String) }
          attr_accessor :id

          # The amount in the minor unit of the transaction's settlement currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          attr_accessor :amount

          # The Card Authorization that was created prior to this Card Settlement, if one
          #   exists.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_authorization

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          attr_accessor :card_payment_id

          # Cashback earned on this transaction, if eligible. Cashback is paid out in
          #   aggregate, monthly.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Cashback)) }
          attr_reader :cashback

          sig do
            params(
              cashback: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardSettlement::Cashback, Increase::Util::AnyHash)
              )
            )
              .void
          end
          attr_writer :cashback

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's settlement currency.
          sig { returns(Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol) }
          attr_accessor :currency

          # Interchange assessed as a part of this transaction.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::Interchange)) }
          attr_reader :interchange

          sig do
            params(
              interchange: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardSettlement::Interchange, Increase::Util::AnyHash)
              )
            )
              .void
          end
          attr_writer :interchange

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # The 4-digit MCC describing the merchant's business.
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # The city the merchant resides in.
          sig { returns(String) }
          attr_accessor :merchant_city

          # The country the merchant resides in.
          sig { returns(String) }
          attr_accessor :merchant_country

          # The name of the merchant.
          sig { returns(String) }
          attr_accessor :merchant_name

          # The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          # Network-specific identifiers for this refund.
          sig { returns(Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_identifiers

          # The identifier of the Pending Transaction associated with this Transaction.
          sig { returns(T.nilable(String)) }
          attr_accessor :pending_transaction_id

          # The amount in the minor unit of the transaction's presentment currency.
          sig { returns(Integer) }
          attr_accessor :presentment_amount

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's presentment currency.
          sig { returns(String) }
          attr_accessor :presentment_currency

          # Additional details about the card purchase, such as tax and industry-specific
          #   fields.
          sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails)) }
          attr_reader :purchase_details

          sig do
            params(
              purchase_details: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails, Increase::Util::AnyHash)
              )
            )
              .void
          end
          attr_writer :purchase_details

          # The identifier of the Transaction associated with this Transaction.
          sig { returns(String) }
          attr_accessor :transaction_id

          # A constant representing the object's type. For this resource it will always be
          #   `card_settlement`.
          sig { returns(Increase::Models::CardPayment::Element::CardSettlement::Type::TaggedSymbol) }
          attr_accessor :type

          # A Card Settlement object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_settlement`. Card Settlements are card
          #   transactions that have cleared and settled. While a settlement is usually
          #   preceded by an authorization, an acquirer can also directly clear a transaction
          #   without first authorizing it.
          sig do
            params(
              id: String,
              amount: Integer,
              card_authorization: T.nilable(String),
              card_payment_id: String,
              cashback: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardSettlement::Cashback, Increase::Util::AnyHash)
              ),
              currency: Increase::Models::CardPayment::Element::CardSettlement::Currency::OrSymbol,
              interchange: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardSettlement::Interchange, Increase::Util::AnyHash)
              ),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: String,
              merchant_country: String,
              merchant_name: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers, Increase::Util::AnyHash),
              pending_transaction_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              purchase_details: T.nilable(
                T.any(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails, Increase::Util::AnyHash)
              ),
              transaction_id: String,
              type: Increase::Models::CardPayment::Element::CardSettlement::Type::OrSymbol
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
                  currency: Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol,
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
                  type: Increase::Models::CardPayment::Element::CardSettlement::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class Cashback < Increase::BaseModel
            # The cashback amount given as a string containing a decimal number. The amount is
            #   a positive number if it will be credited to you (e.g., settlements) and a
            #   negative number if it will be debited (e.g., refunds).
            sig { returns(String) }
            attr_accessor :amount

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            sig { returns(Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol) }
            attr_accessor :currency

            # Cashback earned on this transaction, if eligible. Cashback is paid out in
            #   aggregate, monthly.
            sig do
              params(
                amount: String,
                currency: Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, currency:)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    currency: Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol
                  }
                )
            end
            def to_hash
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            module Currency
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol) }

              # Canadian Dollar (CAD)
              CAD =
                T.let(:CAD, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol)

              # Swiss Franc (CHF)
              CHF =
                T.let(:CHF, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol)

              # Euro (EUR)
              EUR =
                T.let(:EUR, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol)

              # British Pound (GBP)
              GBP =
                T.let(:GBP, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol)

              # Japanese Yen (JPY)
              JPY =
                T.let(:JPY, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol)

              # US Dollar (USD)
              USD =
                T.let(:USD, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency::TaggedSymbol]
                  )
              end
              def self.values
              end
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's settlement currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardSettlement::Currency::TaggedSymbol]) }
            def self.values
            end
          end

          class Interchange < Increase::BaseModel
            # The interchange amount given as a string containing a decimal number. The amount
            #   is a positive number if it is credited to Increase (e.g., settlements) and a
            #   negative number if it is debited (e.g., refunds).
            sig { returns(String) }
            attr_accessor :amount

            # The card network specific interchange code.
            sig { returns(T.nilable(String)) }
            attr_accessor :code

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   reimbursement.
            sig { returns(Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol) }
            attr_accessor :currency

            # Interchange assessed as a part of this transaction.
            sig do
              params(
                amount: String,
                code: T.nilable(String),
                currency: Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, code:, currency:)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    code: T.nilable(String),
                    currency: Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol
                  }
                )
            end
            def to_hash
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   reimbursement.
            module Currency
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol) }

              # Canadian Dollar (CAD)
              CAD =
                T.let(:CAD, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol)

              # Swiss Franc (CHF)
              CHF =
                T.let(:CHF, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol)

              # Euro (EUR)
              EUR =
                T.let(:EUR, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol)

              # British Pound (GBP)
              GBP =
                T.let(:GBP, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol)

              # Japanese Yen (JPY)
              JPY =
                T.let(:JPY, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol)

              # US Dollar (USD)
              USD =
                T.let(:USD, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency::TaggedSymbol]
                  )
              end
              def self.values
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A network assigned business ID that identifies the acquirer that processed this
            #   transaction.
            sig { returns(String) }
            attr_accessor :acquirer_business_id

            # A globally unique identifier for this settlement.
            sig { returns(String) }
            attr_accessor :acquirer_reference_number

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

            # Network-specific identifiers for this refund.
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
            # Fields specific to car rentals.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental)) }
            attr_reader :car_rental

            sig do
              params(
                car_rental: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental,
                    Increase::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :car_rental

            # An identifier from the merchant for the customer or consumer.
            sig { returns(T.nilable(String)) }
            attr_accessor :customer_reference_identifier

            # The state or provincial tax amount in minor units.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :local_tax_amount

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   assessed.
            sig { returns(T.nilable(String)) }
            attr_accessor :local_tax_currency

            # Fields specific to lodging.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging)) }
            attr_reader :lodging

            sig do
              params(
                lodging: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging,
                    Increase::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :lodging

            # The national tax amount in minor units.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :national_tax_amount

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   assessed.
            sig { returns(T.nilable(String)) }
            attr_accessor :national_tax_currency

            # An identifier from the merchant for the purchase to the issuer and cardholder.
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_identifier

            # The format of the purchase identifier.
            sig do
              returns(
                T.nilable(
                  Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )
              )
            end
            attr_accessor :purchase_identifier_format

            # Fields specific to travel.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel)) }
            attr_reader :travel

            sig do
              params(
                travel: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel,
                    Increase::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :travel

            # Additional details about the card purchase, such as tax and industry-specific
            #   fields.
            sig do
              params(
                car_rental: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental,
                    Increase::Util::AnyHash
                  )
                ),
                customer_reference_identifier: T.nilable(String),
                local_tax_amount: T.nilable(Integer),
                local_tax_currency: T.nilable(String),
                lodging: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging,
                    Increase::Util::AnyHash
                  )
                ),
                national_tax_amount: T.nilable(Integer),
                national_tax_currency: T.nilable(String),
                purchase_identifier: T.nilable(String),
                purchase_identifier_format: T.nilable(
                  Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::OrSymbol
                ),
                travel: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel,
                    Increase::Util::AnyHash
                  )
                )
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
                    purchase_identifier_format: T.nilable(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                    ),
                    travel: T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel)
                  }
                )
            end
            def to_hash
            end

            class CarRental < Increase::BaseModel
              # Code indicating the vehicle's class.
              sig { returns(T.nilable(String)) }
              attr_accessor :car_class_code

              # Date the customer picked up the car or, in the case of a no-show or pre-pay
              #   transaction, the scheduled pick up date.
              sig { returns(T.nilable(Date)) }
              attr_accessor :checkout_date

              # Daily rate being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :daily_rental_rate_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental
              #   rate.
              sig { returns(T.nilable(String)) }
              attr_accessor :daily_rental_rate_currency

              # Number of days the vehicle was rented.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :days_rented

              # Additional charges (gas, late fee, etc.) being billed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )
                )
              end
              attr_accessor :extra_charges

              # Fuel charges for the vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :fuel_charges_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges
              #   assessed.
              sig { returns(T.nilable(String)) }
              attr_accessor :fuel_charges_currency

              # Any insurance being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :insurance_charges_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance
              #   charges assessed.
              sig { returns(T.nilable(String)) }
              attr_accessor :insurance_charges_currency

              # An indicator that the cardholder is being billed for a reserved vehicle that was
              #   not actually rented (that is, a "no-show" charge).
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :no_show_indicator

              # Charges for returning the vehicle at a different location than where it was
              #   picked up.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :one_way_drop_off_charges_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way
              #   drop-off charges assessed.
              sig { returns(T.nilable(String)) }
              attr_accessor :one_way_drop_off_charges_currency

              # Name of the person renting the vehicle.
              sig { returns(T.nilable(String)) }
              attr_accessor :renter_name

              # Weekly rate being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :weekly_rental_rate_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly
              #   rental rate.
              sig { returns(T.nilable(String)) }
              attr_accessor :weekly_rental_rate_currency

              # Fields specific to car rentals.
              sig do
                params(
                  car_class_code: T.nilable(String),
                  checkout_date: T.nilable(Date),
                  daily_rental_rate_amount: T.nilable(Integer),
                  daily_rental_rate_currency: T.nilable(String),
                  days_rented: T.nilable(Integer),
                  extra_charges: T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::OrSymbol
                  ),
                  fuel_charges_amount: T.nilable(Integer),
                  fuel_charges_currency: T.nilable(String),
                  insurance_charges_amount: T.nilable(Integer),
                  insurance_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::OrSymbol
                  ),
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
                      extra_charges: T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                      ),
                      fuel_charges_amount: T.nilable(Integer),
                      fuel_charges_currency: T.nilable(String),
                      insurance_charges_amount: T.nilable(Integer),
                      insurance_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                      ),
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

              # Additional charges (gas, late fee, etc.) being billed.
              module ExtraCharges
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                    )
                  end

                # No extra charge
                NO_EXTRA_CHARGE =
                  T.let(
                    :no_extra_charge,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Gas
                GAS =
                  T.let(
                    :gas,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Extra mileage
                EXTRA_MILEAGE =
                  T.let(
                    :extra_mileage,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Late return
                LATE_RETURN =
                  T.let(
                    :late_return,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # One way service fee
                ONE_WAY_SERVICE_FEE =
                  T.let(
                    :one_way_service_fee,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Parking violation
                PARKING_VIOLATION =
                  T.let(
                    :parking_violation,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was
              #   not actually rented (that is, a "no-show" charge).
              module NoShowIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                    )
                  end

                # Not applicable
                NOT_APPLICABLE =
                  T.let(
                    :not_applicable,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE =
                  T.let(
                    :no_show_for_specialized_vehicle,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class Lodging < Increase::BaseModel
              # Date the customer checked in.
              sig { returns(T.nilable(Date)) }
              attr_accessor :check_in_date

              # Daily rate being charged for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :daily_room_rate_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room
              #   rate.
              sig { returns(T.nilable(String)) }
              attr_accessor :daily_room_rate_currency

              # Additional charges (phone, late check-out, etc.) being billed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )
                )
              end
              attr_accessor :extra_charges

              # Folio cash advances for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :folio_cash_advances_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash
              #   advances.
              sig { returns(T.nilable(String)) }
              attr_accessor :folio_cash_advances_currency

              # Food and beverage charges for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :food_beverage_charges_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and
              #   beverage charges.
              sig { returns(T.nilable(String)) }
              attr_accessor :food_beverage_charges_currency

              # Indicator that the cardholder is being billed for a reserved room that was not
              #   actually used.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :no_show_indicator

              # Prepaid expenses being charged for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :prepaid_expenses_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid
              #   expenses.
              sig { returns(T.nilable(String)) }
              attr_accessor :prepaid_expenses_currency

              # Number of nights the room was rented.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :room_nights

              # Total room tax being charged.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :total_room_tax_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room
              #   tax.
              sig { returns(T.nilable(String)) }
              attr_accessor :total_room_tax_currency

              # Total tax being charged for the room.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :total_tax_amount

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax
              #   assessed.
              sig { returns(T.nilable(String)) }
              attr_accessor :total_tax_currency

              # Fields specific to lodging.
              sig do
                params(
                  check_in_date: T.nilable(Date),
                  daily_room_rate_amount: T.nilable(Integer),
                  daily_room_rate_currency: T.nilable(String),
                  extra_charges: T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::OrSymbol
                  ),
                  folio_cash_advances_amount: T.nilable(Integer),
                  folio_cash_advances_currency: T.nilable(String),
                  food_beverage_charges_amount: T.nilable(Integer),
                  food_beverage_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::OrSymbol
                  ),
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
                      extra_charges: T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                      ),
                      folio_cash_advances_amount: T.nilable(Integer),
                      folio_cash_advances_currency: T.nilable(String),
                      food_beverage_charges_amount: T.nilable(Integer),
                      food_beverage_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                      ),
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

              # Additional charges (phone, late check-out, etc.) being billed.
              module ExtraCharges
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                    )
                  end

                # No extra charge
                NO_EXTRA_CHARGE =
                  T.let(
                    :no_extra_charge,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Restaurant
                RESTAURANT =
                  T.let(
                    :restaurant,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Gift shop
                GIFT_SHOP =
                  T.let(
                    :gift_shop,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Mini bar
                MINI_BAR =
                  T.let(
                    :mini_bar,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Telephone
                TELEPHONE =
                  T.let(
                    :telephone,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Other
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Laundry
                LAUNDRY =
                  T.let(
                    :laundry,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # Indicator that the cardholder is being billed for a reserved room that was not
              #   actually used.
              module NoShowIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                    )
                  end

                # Not applicable
                NOT_APPLICABLE =
                  T.let(
                    :not_applicable,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )

                # No show
                NO_SHOW =
                  T.let(
                    :no_show,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            # The format of the purchase identifier.
            module PurchaseIdentifierFormat
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                  )
                end

              # Free text
              FREE_TEXT =
                T.let(
                  :free_text,
                  Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Order number
              ORDER_NUMBER =
                T.let(
                  :order_number,
                  Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER =
                T.let(
                  :rental_agreement_number,
                  Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Hotel folio number
              HOTEL_FOLIO_NUMBER =
                T.let(
                  :hotel_folio_number,
                  Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Invoice number
              INVOICE_NUMBER =
                T.let(
                  :invoice_number,
                  Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class Travel < Increase::BaseModel
              # Ancillary purchases in addition to the airfare.
              sig do
                returns(
                  T.nilable(Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary)
                )
              end
              attr_reader :ancillary

              sig do
                params(
                  ancillary: T.nilable(
                    T.any(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary,
                      Increase::Util::AnyHash
                    )
                  )
                )
                  .void
              end
              attr_writer :ancillary

              # Indicates the computerized reservation system used to book the ticket.
              sig { returns(T.nilable(String)) }
              attr_accessor :computerized_reservation_system

              # Indicates the reason for a credit to the cardholder.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :credit_reason_indicator

              # Date of departure.
              sig { returns(T.nilable(Date)) }
              attr_accessor :departure_date

              # Code for the originating city or airport.
              sig { returns(T.nilable(String)) }
              attr_accessor :origination_city_airport_code

              # Name of the passenger.
              sig { returns(T.nilable(String)) }
              attr_accessor :passenger_name

              # Indicates whether this ticket is non-refundable.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :restricted_ticket_indicator

              # Indicates why a ticket was changed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :ticket_change_indicator

              # Ticket number.
              sig { returns(T.nilable(String)) }
              attr_accessor :ticket_number

              # Code for the travel agency if the ticket was issued by a travel agency.
              sig { returns(T.nilable(String)) }
              attr_accessor :travel_agency_code

              # Name of the travel agency if the ticket was issued by a travel agency.
              sig { returns(T.nilable(String)) }
              attr_accessor :travel_agency_name

              # Fields specific to each leg of the journey.
              sig do
                returns(
                  T.nilable(
                    T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg]
                  )
                )
              end
              attr_accessor :trip_legs

              # Fields specific to travel.
              sig do
                params(
                  ancillary: T.nilable(
                    T.any(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary,
                      Increase::Util::AnyHash
                    )
                  ),
                  computerized_reservation_system: T.nilable(String),
                  credit_reason_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::OrSymbol
                  ),
                  departure_date: T.nilable(Date),
                  origination_city_airport_code: T.nilable(String),
                  passenger_name: T.nilable(String),
                  restricted_ticket_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::OrSymbol
                  ),
                  ticket_change_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::OrSymbol
                  ),
                  ticket_number: T.nilable(String),
                  travel_agency_code: T.nilable(String),
                  travel_agency_name: T.nilable(String),
                  trip_legs: T.nilable(
                    T::Array[
                    T.any(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg,
                      Increase::Util::AnyHash
                    )
                    ]
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
                      credit_reason_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                      ),
                      departure_date: T.nilable(Date),
                      origination_city_airport_code: T.nilable(String),
                      passenger_name: T.nilable(String),
                      restricted_ticket_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                      ),
                      ticket_change_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                      ),
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
                # If this purchase has a connection or relationship to another purchase, such as a
                #   baggage fee for a passenger transport ticket, this field should contain the
                #   ticket document number for the other purchase.
                sig { returns(T.nilable(String)) }
                attr_accessor :connected_ticket_document_number

                # Indicates the reason for a credit to the cardholder.
                sig do
                  returns(
                    T.nilable(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )
                  )
                end
                attr_accessor :credit_reason_indicator

                # Name of the passenger or description of the ancillary purchase.
                sig { returns(T.nilable(String)) }
                attr_accessor :passenger_name_or_description

                # Additional travel charges, such as baggage fees.
                sig do
                  returns(
                    T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                  )
                end
                attr_accessor :services

                # Ticket document number.
                sig { returns(T.nilable(String)) }
                attr_accessor :ticket_document_number

                # Ancillary purchases in addition to the airfare.
                sig do
                  params(
                    connected_ticket_document_number: T.nilable(String),
                    credit_reason_indicator: T.nilable(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::OrSymbol
                    ),
                    passenger_name_or_description: T.nilable(String),
                    services: T::Array[
                    T.any(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service,
                      Increase::Util::AnyHash
                    )
                    ],
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
                        credit_reason_indicator: T.nilable(
                          Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                        ),
                        passenger_name_or_description: T.nilable(String),
                        services: T::Array[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service],
                        ticket_document_number: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end

                # Indicates the reason for a credit to the cardholder.
                module CreditReasonIndicator
                  extend Increase::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                      )
                    end

                  # No credit
                  NO_CREDIT =
                    T.let(
                      :no_credit,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    T.let(
                      :passenger_transport_ancillary_purchase_cancellation,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    T.let(
                      :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Other
                  OTHER =
                    T.let(
                      :other,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                        ]
                      )
                  end
                  def self.values
                  end
                end

                class Service < Increase::BaseModel
                  # Category of the ancillary service.
                  sig do
                    returns(
                      T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )
                    )
                  end
                  attr_accessor :category

                  # Sub-category of the ancillary service, free-form.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :sub_category

                  sig do
                    params(
                      category: T.nilable(
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::OrSymbol
                      ),
                      sub_category: T.nilable(String)
                    )
                      .returns(T.attached_class)
                  end
                  def self.new(category:, sub_category:)
                  end

                  sig do
                    override
                      .returns(
                        {
                          category: T.nilable(
                            Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                          ),
                          sub_category: T.nilable(String)
                        }
                      )
                  end
                  def to_hash
                  end

                  # Category of the ancillary service.
                  module Category
                    extend Increase::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category)
                      end
                    OrSymbol =
                      T.type_alias do
                        T.any(
                          Symbol,
                          Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                        )
                      end

                    # None
                    NONE =
                      T.let(
                        :none,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Bundled service
                    BUNDLED_SERVICE =
                      T.let(
                        :bundled_service,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Baggage fee
                    BAGGAGE_FEE =
                      T.let(
                        :baggage_fee,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Change fee
                    CHANGE_FEE =
                      T.let(
                        :change_fee,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Cargo
                    CARGO =
                      T.let(
                        :cargo,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Carbon offset
                    CARBON_OFFSET =
                      T.let(
                        :carbon_offset,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Frequent flyer
                    FREQUENT_FLYER =
                      T.let(
                        :frequent_flyer,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Gift card
                    GIFT_CARD =
                      T.let(
                        :gift_card,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Ground transport
                    GROUND_TRANSPORT =
                      T.let(
                        :ground_transport,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT =
                      T.let(
                        :in_flight_entertainment,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Lounge
                    LOUNGE =
                      T.let(
                        :lounge,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Medical
                    MEDICAL =
                      T.let(
                        :medical,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Meal beverage
                    MEAL_BEVERAGE =
                      T.let(
                        :meal_beverage,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Other
                    OTHER =
                      T.let(
                        :other,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE =
                      T.let(
                        :passenger_assist_fee,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Pets
                    PETS =
                      T.let(
                        :pets,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Seat fees
                    SEAT_FEES =
                      T.let(
                        :seat_fees,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Standby
                    STANDBY =
                      T.let(
                        :standby,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Service fee
                    SERVICE_FEE =
                      T.let(
                        :service_fee,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Store
                    STORE =
                      T.let(
                        :store,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Travel service
                    TRAVEL_SERVICE =
                      T.let(
                        :travel_service,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL =
                      T.let(
                        :unaccompanied_travel,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Upgrades
                    UPGRADES =
                      T.let(
                        :upgrades,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Wi-fi
                    WIFI =
                      T.let(
                        :wifi,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    sig do
                      override
                        .returns(
                          T::Array[
                          Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                          ]
                        )
                    end
                    def self.values
                    end
                  end
                end
              end

              # Indicates the reason for a credit to the cardholder.
              module CreditReasonIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                    )
                  end

                # No credit
                NO_CREDIT =
                  T.let(
                    :no_credit,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  T.let(
                    :passenger_transport_ancillary_purchase_cancellation,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  T.let(
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION =
                  T.let(
                    :airline_ticket_cancellation,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Other
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET =
                  T.let(
                    :partial_refund_of_airline_ticket,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # Indicates whether this ticket is non-refundable.
              module RestrictedTicketIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                    )
                  end

                # No restrictions
                NO_RESTRICTIONS =
                  T.let(
                    :no_restrictions,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET =
                  T.let(
                    :restricted_non_refundable_ticket,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # Indicates why a ticket was changed.
              module TicketChangeIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                    )
                  end

                # None
                NONE =
                  T.let(
                    :none,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET =
                  T.let(
                    :change_to_existing_ticket,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                # New ticket
                NEW_TICKET =
                  T.let(
                    :new_ticket,
                    Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              class TripLeg < Increase::BaseModel
                # Carrier code (e.g., United Airlines, Jet Blue, etc.).
                sig { returns(T.nilable(String)) }
                attr_accessor :carrier_code

                # Code for the destination city or airport.
                sig { returns(T.nilable(String)) }
                attr_accessor :destination_city_airport_code

                # Fare basis code.
                sig { returns(T.nilable(String)) }
                attr_accessor :fare_basis_code

                # Flight number.
                sig { returns(T.nilable(String)) }
                attr_accessor :flight_number

                # Service class (e.g., first class, business class, etc.).
                sig { returns(T.nilable(String)) }
                attr_accessor :service_class

                # Indicates whether a stopover is allowed on this ticket.
                sig do
                  returns(
                    T.nilable(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                  )
                end
                attr_accessor :stop_over_code

                sig do
                  params(
                    carrier_code: T.nilable(String),
                    destination_city_airport_code: T.nilable(String),
                    fare_basis_code: T.nilable(String),
                    flight_number: T.nilable(String),
                    service_class: T.nilable(String),
                    stop_over_code: T.nilable(
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::OrSymbol
                    )
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
                        stop_over_code: T.nilable(
                          Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                        )
                      }
                    )
                end
                def to_hash
                end

                # Indicates whether a stopover is allowed on this ticket.
                module StopOverCode
                  extend Increase::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                      )
                    end

                  # None
                  NONE =
                    T.let(
                      :none,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  # Stop over allowed
                  STOP_OVER_ALLOWED =
                    T.let(
                      :stop_over_allowed,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED =
                    T.let(
                      :stop_over_not_allowed,
                      Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                        ]
                      )
                  end
                  def self.values
                  end
                end
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_settlement`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardSettlement::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardSettlement::Type::TaggedSymbol) }

            CARD_SETTLEMENT =
              T.let(:card_settlement, Increase::Models::CardPayment::Element::CardSettlement::Type::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardSettlement::Type::TaggedSymbol]) }
            def self.values
            end
          end
        end

        class CardValidation < Increase::BaseModel
          # The Card Validation identifier.
          sig { returns(String) }
          attr_accessor :id

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          sig { returns(Increase::Models::CardPayment::Element::CardValidation::Actioner::TaggedSymbol) }
          attr_accessor :actioner

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          attr_accessor :card_payment_id

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          sig { returns(Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol) }
          attr_accessor :currency

          # If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   purchase), the identifier of the token that was used.
          sig { returns(T.nilable(String)) }
          attr_accessor :digital_wallet_token_id

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # The city the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_city

          # The country the merchant resides in.
          sig { returns(String) }
          attr_accessor :merchant_country

          # The merchant descriptor of the merchant the card is transacting with.
          sig { returns(String) }
          attr_accessor :merchant_descriptor

          # The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   ZIP code, where the first 5 and last 4 are separated by a dash.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          # Fields specific to the `network`.
          sig { returns(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails) }
          attr_reader :network_details

          sig do
            params(
              network_details: T.any(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_details

          # Network-specific identifiers for a specific request or transaction.
          sig { returns(Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :network_identifiers

          # The risk score generated by the card network. For Visa this is the Visa Advanced
          #   Authorization risk score, from 0 to 99, where 99 is the riskiest.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :network_risk_score

          # If the authorization was made in-person with a physical card, the Physical Card
          #   that was used.
          sig { returns(T.nilable(String)) }
          attr_accessor :physical_card_id

          # The identifier of the Real-Time Decision sent to approve or decline this
          #   transaction.
          sig { returns(T.nilable(String)) }
          attr_accessor :real_time_decision_id

          # The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   is transacting with.
          sig { returns(T.nilable(String)) }
          attr_accessor :terminal_id

          # A constant representing the object's type. For this resource it will always be
          #   `card_validation`.
          sig { returns(Increase::Models::CardPayment::Element::CardValidation::Type::TaggedSymbol) }
          attr_accessor :type

          # Fields related to verification of cardholder-provided values.
          sig { returns(Increase::Models::CardPayment::Element::CardValidation::Verification) }
          attr_reader :verification

          sig do
            params(
              verification: T.any(Increase::Models::CardPayment::Element::CardValidation::Verification, Increase::Util::AnyHash)
            )
              .void
          end
          attr_writer :verification

          # A Card Validation object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_validation`. Card Validations are requests
          #   from a merchant to verify that a card number and optionally its address and/or
          #   Card Verification Value are valid.
          sig do
            params(
              id: String,
              actioner: Increase::Models::CardPayment::Element::CardValidation::Actioner::OrSymbol,
              card_payment_id: String,
              currency: Increase::Models::CardPayment::Element::CardValidation::Currency::OrSymbol,
              digital_wallet_token_id: T.nilable(String),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: T.any(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails, Increase::Util::AnyHash),
              network_identifiers: T.any(Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers, Increase::Util::AnyHash),
              network_risk_score: T.nilable(Integer),
              physical_card_id: T.nilable(String),
              real_time_decision_id: T.nilable(String),
              terminal_id: T.nilable(String),
              type: Increase::Models::CardPayment::Element::CardValidation::Type::OrSymbol,
              verification: T.any(Increase::Models::CardPayment::Element::CardValidation::Verification, Increase::Util::AnyHash)
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
                  actioner: Increase::Models::CardPayment::Element::CardValidation::Actioner::TaggedSymbol,
                  card_payment_id: String,
                  currency: Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol,
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
                  type: Increase::Models::CardPayment::Element::CardValidation::Type::TaggedSymbol,
                  verification: Increase::Models::CardPayment::Element::CardValidation::Verification
                }
              )
          end
          def to_hash
          end

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          module Actioner
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::Actioner) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardValidation::Actioner::TaggedSymbol) }

            # This object was actioned by the user through a real-time decision.
            USER = T.let(:user, Increase::Models::CardPayment::Element::CardValidation::Actioner::TaggedSymbol)

            # This object was actioned by Increase without user intervention.
            INCREASE =
              T.let(:increase, Increase::Models::CardPayment::Element::CardValidation::Actioner::TaggedSymbol)

            # This object was actioned by the network, through stand-in processing.
            NETWORK = T.let(:network, Increase::Models::CardPayment::Element::CardValidation::Actioner::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardValidation::Actioner::TaggedSymbol]) }
            def self.values
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardValidation::Currency::TaggedSymbol]) }
            def self.values
            end
          end

          class NetworkDetails < Increase::BaseModel
            # The payment network used to process this card authorization.
            sig { returns(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category::TaggedSymbol) }
            attr_accessor :category

            # Fields specific to the `visa` network.
            sig { returns(T.nilable(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa)) }
            attr_reader :visa

            sig do
              params(
                visa: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa,
                    Increase::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :visa

            # Fields specific to the `network`.
            sig do
              params(
                category: Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category::OrSymbol,
                visa: T.nilable(
                  T.any(
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa,
                    Increase::Util::AnyHash
                  )
                )
              )
                .returns(T.attached_class)
            end
            def self.new(category:, visa:)
            end

            sig do
              override
                .returns(
                  {
                    category: Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category::TaggedSymbol,
                    visa: T.nilable(Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            # The payment network used to process this card authorization.
            module Category
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category::TaggedSymbol
                  )
                end

              # Visa
              VISA =
                T.let(
                  :visa,
                  Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class Visa < Increase::BaseModel
              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :electronic_commerce_indicator

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                )
              end
              attr_accessor :point_of_service_entry_mode

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :stand_in_processing_reason

              # Fields specific to the `visa` network.
              sig do
                params(
                  electronic_commerce_indicator: T.nilable(
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::OrSymbol
                  ),
                  point_of_service_entry_mode: T.nilable(
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::OrSymbol
                  ),
                  stand_in_processing_reason: T.nilable(
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::OrSymbol
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:)
              end

              sig do
                override
                  .returns(
                    {
                      electronic_commerce_indicator: T.nilable(
                        Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ),
                      point_of_service_entry_mode: T.nilable(
                        Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ),
                      stand_in_processing_reason: T.nilable(
                        Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      )
                    }
                  )
              end
              def to_hash
              end

              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              module ElectronicCommerceIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                    )
                  end

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER =
                  T.let(
                    :mail_phone_order,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING =
                  T.let(
                    :recurring,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT =
                  T.let(
                    :installment,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER =
                  T.let(
                    :unknown_mail_phone_order,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE =
                  T.let(
                    :secure_electronic_commerce,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  T.let(
                    :non_authenticated_security_transaction_at_3ds_capable_merchant,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION =
                  T.let(
                    :non_authenticated_security_transaction,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION =
                  T.let(
                    :non_secure_transaction,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              module PointOfServiceEntryMode
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                    )
                  end

                # Unknown
                UNKNOWN =
                  T.let(
                    :unknown,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Manual key entry
                MANUAL =
                  T.let(
                    :manual,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV =
                  T.let(
                    :magnetic_stripe_no_cvv,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Optical code
                OPTICAL_CODE =
                  T.let(
                    :optical_code,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD =
                  T.let(
                    :integrated_circuit_card,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of chip card
                CONTACTLESS =
                  T.let(
                    :contactless,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE =
                  T.let(
                    :credential_on_file,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read
                MAGNETIC_STRIPE =
                  T.let(
                    :magnetic_stripe,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE =
                  T.let(
                    :contactless_magnetic_stripe,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV =
                  T.let(
                    :integrated_circuit_card_no_cvv,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              module StandInProcessingReason
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                    )
                  end

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR =
                  T.let(
                    :issuer_error,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD =
                  T.let(
                    :invalid_physical_card,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                  T.let(
                    :invalid_cardholder_authentication_verification_value,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR =
                  T.let(
                    :internal_visa_error,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                  T.let(
                    :merchant_transaction_advisory_service_authentication_required,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK =
                  T.let(
                    :payment_fraud_disruption_acquirer_block,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An unspecific reason for stand-in processing.
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A life-cycle identifier used across e.g., an authorization and a reversal.
            #   Expected to be unique per acquirer within a window of time. For some card
            #   networks the retrieval reference number includes the trace counter.
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            # A counter used to verify an individual authorization. Expected to be unique per
            #   acquirer within a window of time.
            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

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

          # A constant representing the object's type. For this resource it will always be
          #   `card_validation`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::CardValidation::Type::TaggedSymbol) }

            CARD_VALIDATION =
              T.let(:card_validation, Increase::Models::CardPayment::Element::CardValidation::Type::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::CardPayment::Element::CardValidation::Type::TaggedSymbol]) }
            def self.values
            end
          end

          class Verification < Increase::BaseModel
            # Fields related to verification of the Card Verification Code, a 3-digit code on
            #   the back of the card.
            sig { returns(Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode) }
            attr_reader :card_verification_code

            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode,
                  Increase::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :card_verification_code

            # Cardholder address provided in the authorization request and the address on file
            #   we verified it against.
            sig { returns(Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress) }
            attr_reader :cardholder_address

            sig do
              params(
                cardholder_address: T.any(
                  Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress,
                  Increase::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :cardholder_address

            # Fields related to verification of cardholder-provided values.
            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode,
                  Increase::Util::AnyHash
                ),
                cardholder_address: T.any(
                  Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress,
                  Increase::Util::AnyHash
                )
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
              # The result of verifying the Card Verification Code.
              sig do
                returns(
                  Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # Fields related to verification of the Card Verification Code, a 3-digit code on
              #   the back of the card.
              sig do
                params(
                  result: Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(result:)
              end

              sig do
                override
                  .returns(
                    {
                      result: Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The result of verifying the Card Verification Code.
              module Result
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result::TaggedSymbol
                    )
                  end

                # No card verification code was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code matched the one on file.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code did not match the one on file.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class CardholderAddress < Increase::BaseModel
              # Line 1 of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_line1

              # The postal code of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_postal_code

              # The cardholder address line 1 provided for verification in the authorization
              #   request.
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_line1

              # The postal code provided for verification in the authorization request.
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_postal_code

              # The address verification result returned to the card network.
              sig do
                returns(
                  Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # Cardholder address provided in the authorization request and the address on file
              #   we verified it against.
              sig do
                params(
                  actual_line1: T.nilable(String),
                  actual_postal_code: T.nilable(String),
                  provided_line1: T.nilable(String),
                  provided_postal_code: T.nilable(String),
                  result: Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::OrSymbol
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
                      result: Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The address verification result returned to the card network.
              module Result
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                    )
                  end

                # No adress was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED =
                  T.let(
                    :postal_code_match_address_not_checked,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH =
                  T.let(
                    :postal_code_match_address_no_match,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH =
                  T.let(
                    :postal_code_no_match_address_match,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address match.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address do not match.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end
        end

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        module Category
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Element::Category) }
          OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Element::Category::TaggedSymbol) }

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION =
            T.let(:card_authorization, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Authentication: details will be under the `card_authentication` object.
          CARD_AUTHENTICATION =
            T.let(:card_authentication, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Validation: details will be under the `card_validation` object.
          CARD_VALIDATION = T.let(:card_validation, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = T.let(:card_decline, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Reversal: details will be under the `card_reversal` object.
          CARD_REVERSAL = T.let(:card_reversal, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Authorization Expiration: details will be under the `card_authorization_expiration` object.
          CARD_AUTHORIZATION_EXPIRATION =
            T.let(:card_authorization_expiration, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Increment: details will be under the `card_increment` object.
          CARD_INCREMENT = T.let(:card_increment, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Settlement: details will be under the `card_settlement` object.
          CARD_SETTLEMENT = T.let(:card_settlement, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Refund: details will be under the `card_refund` object.
          CARD_REFUND = T.let(:card_refund, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Card Fuel Confirmation: details will be under the `card_fuel_confirmation` object.
          CARD_FUEL_CONFIRMATION =
            T.let(:card_fuel_confirmation, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          # Unknown card payment element.
          OTHER = T.let(:other, Increase::Models::CardPayment::Element::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::CardPayment::Element::Category::TaggedSymbol]) }
          def self.values
          end
        end
      end

      class State < Increase::BaseModel
        # The total authorized amount in the minor unit of the transaction's currency. For
        #   dollars, for example, this is cents.
        sig { returns(Integer) }
        attr_accessor :authorized_amount

        # The total amount from fuel confirmations in the minor unit of the transaction's
        #   currency. For dollars, for example, this is cents.
        sig { returns(Integer) }
        attr_accessor :fuel_confirmed_amount

        # The total incrementally updated authorized amount in the minor unit of the
        #   transaction's currency. For dollars, for example, this is cents.
        sig { returns(Integer) }
        attr_accessor :incremented_amount

        # The total reversed amount in the minor unit of the transaction's currency. For
        #   dollars, for example, this is cents.
        sig { returns(Integer) }
        attr_accessor :reversed_amount

        # The total settled or refunded amount in the minor unit of the transaction's
        #   currency. For dollars, for example, this is cents.
        sig { returns(Integer) }
        attr_accessor :settled_amount

        # The summarized state of this card payment.
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

      # A constant representing the object's type. For this resource it will always be
      #   `card_payment`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardPayment::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CardPayment::Type::TaggedSymbol) }

        CARD_PAYMENT = T.let(:card_payment, Increase::Models::CardPayment::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CardPayment::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
