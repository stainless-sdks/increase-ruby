# typed: strong

module Increase
  module Models
    class RealTimeDecision < Increase::BaseModel
      # The Real-Time Decision identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Fields related to a 3DS authentication attempt.
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication)) }
      def card_authentication
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication))
          .returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication))
      end
      def card_authentication=(_)
      end

      # Fields related to a 3DS authentication attempt.
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge)) }
      def card_authentication_challenge
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge))
          .returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge))
      end
      def card_authentication_challenge=(_)
      end

      # Fields related to a card authorization.
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization)) }
      def card_authorization
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization))
          .returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization))
      end
      def card_authorization=(_)
      end

      # The category of the Real-Time Decision.
      sig { returns(Increase::Models::RealTimeDecision::Category::TaggedSymbol) }
      def category
      end

      sig do
        params(_: Increase::Models::RealTimeDecision::Category::TaggedSymbol)
          .returns(Increase::Models::RealTimeDecision::Category::TaggedSymbol)
      end
      def category=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Real-Time Decision was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Fields related to a digital wallet authentication attempt.
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication)) }
      def digital_wallet_authentication
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication))
          .returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication))
      end
      def digital_wallet_authentication=(_)
      end

      # Fields related to a digital wallet token provisioning attempt.
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken)) }
      def digital_wallet_token
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken))
          .returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken))
      end
      def digital_wallet_token=(_)
      end

      # The status of the Real-Time Decision.
      sig { returns(Increase::Models::RealTimeDecision::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::RealTimeDecision::Status::TaggedSymbol)
          .returns(Increase::Models::RealTimeDecision::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   your application can no longer respond to the Real-Time Decision.
      sig { returns(Time) }
      def timeout_at
      end

      sig { params(_: Time).returns(Time) }
      def timeout_at=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `real_time_decision`.
      sig { returns(Increase::Models::RealTimeDecision::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::RealTimeDecision::Type::TaggedSymbol)
          .returns(Increase::Models::RealTimeDecision::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Real Time Decisions are created when your application needs to take action in
      #   real-time to some event such as a card authorization. For more information, see
      #   our
      #   [Real-Time Decisions guide](https://increase.com/documentation/real-time-decisions).
      sig do
        params(
          id: String,
          card_authentication: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication),
          card_authentication_challenge: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge),
          card_authorization: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization),
          category: Increase::Models::RealTimeDecision::Category::TaggedSymbol,
          created_at: Time,
          digital_wallet_authentication: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication),
          digital_wallet_token: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken),
          status: Increase::Models::RealTimeDecision::Status::TaggedSymbol,
          timeout_at: Time,
          type: Increase::Models::RealTimeDecision::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        card_authentication:,
        card_authentication_challenge:,
        card_authorization:,
        category:,
        created_at:,
        digital_wallet_authentication:,
        digital_wallet_token:,
        status:,
        timeout_at:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              card_authentication: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication),
              card_authentication_challenge: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge),
              card_authorization: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization),
              category: Increase::Models::RealTimeDecision::Category::TaggedSymbol,
              created_at: Time,
              digital_wallet_authentication: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication),
              digital_wallet_token: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken),
              status: Increase::Models::RealTimeDecision::Status::TaggedSymbol,
              timeout_at: Time,
              type: Increase::Models::RealTimeDecision::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class CardAuthentication < Increase::BaseModel
        # The identifier of the Account the card belongs to.
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # The identifier of the Card that is being tokenized.
        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        # Whether or not the authentication attempt was approved.
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol)) }
        def decision
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol))
            .returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol))
        end
        def decision=(_)
        end

        # The identifier of the Card Payment this authentication attempt will belong to.
        #   Available in the API once the card authentication has completed.
        sig { returns(String) }
        def upcoming_card_payment_id
        end

        sig { params(_: String).returns(String) }
        def upcoming_card_payment_id=(_)
        end

        # Fields related to a 3DS authentication attempt.
        sig do
          params(
            account_id: String,
            card_id: String,
            decision: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol),
            upcoming_card_payment_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(account_id:, card_id:, decision:, upcoming_card_payment_id:)
        end

        sig do
          override
            .returns(
              {
                account_id: String,
                card_id: String,
                decision: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol),
                upcoming_card_payment_id: String
              }
            )
        end
        def to_hash
        end

        # Whether or not the authentication attempt was approved.
        module Decision
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthentication::Decision) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol) }

          # Approve the authentication attempt without triggering a challenge.
          APPROVE = T.let(:approve, Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol)

          # Request further validation before approving the authentication attempt.
          CHALLENGE =
            T.let(:challenge, Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol)

          # Deny the authentication attempt.
          DENY = T.let(:deny, Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol)
        end
      end

      class CardAuthenticationChallenge < Increase::BaseModel
        # The identifier of the Account the card belongs to.
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # The identifier of the Card that is being tokenized.
        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        # The identifier of the Card Payment this authentication challenge attempt belongs
        #   to.
        sig { returns(String) }
        def card_payment_id
        end

        sig { params(_: String).returns(String) }
        def card_payment_id=(_)
        end

        # The one-time code delivered to the cardholder.
        sig { returns(String) }
        def one_time_code
        end

        sig { params(_: String).returns(String) }
        def one_time_code=(_)
        end

        # Whether or not the challenge was delivered to the cardholder.
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)) }
        def result
        end

        sig do
          params(
            _: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)
          )
            .returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol))
        end
        def result=(_)
        end

        # Fields related to a 3DS authentication attempt.
        sig do
          params(
            account_id: String,
            card_id: String,
            card_payment_id: String,
            one_time_code: String,
            result: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(account_id:, card_id:, card_payment_id:, one_time_code:, result:)
        end

        sig do
          override
            .returns(
              {
                account_id: String,
                card_id: String,
                card_payment_id: String,
                one_time_code: String,
                result: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)
              }
            )
        end
        def to_hash
        end

        # Whether or not the challenge was delivered to the cardholder.
        module Result
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol) }

          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS =
            T.let(:success, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE =
            T.let(:failure, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)
        end
      end

      class CardAuthorization < Increase::BaseModel
        # The identifier of the Account the authorization will debit.
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # The identifier of the Card that is being authorized.
        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        # Whether or not the authorization was approved.
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol)) }
        def decision
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol))
            .returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol))
        end
        def decision=(_)
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
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol) }
        def direction
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol)
            .returns(Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol)
        end
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
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails) }
        def network_details
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails)
            .returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails)
        end
        def network_details=(_)
        end

        # Network-specific identifiers for a specific request or transaction.
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers) }
        def network_identifiers
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers)
            .returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers)
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

        # The amount of the attempted authorization in the currency the card user sees at
        #   the time of purchase, in the minor unit of that currency. For dollars, for
        #   example, this is cents.
        sig { returns(Integer) }
        def presentment_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def presentment_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the currency the
        #   user sees at the time of purchase.
        sig { returns(String) }
        def presentment_currency
        end

        sig { params(_: String).returns(String) }
        def presentment_currency=(_)
        end

        # The processing category describes the intent behind the authorization, such as
        #   whether it was used for bill payments or an automatic fuel dispenser.
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol) }
        def processing_category
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol)
            .returns(Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol)
        end
        def processing_category=(_)
        end

        # Fields specific to the type of request, such as an incremental authorization.
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails) }
        def request_details
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails)
            .returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails)
        end
        def request_details=(_)
        end

        # The amount of the attempted authorization in the currency it will be settled in.
        #   This currency is the same as that of the Account the card belongs to.
        sig { returns(Integer) }
        def settlement_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def settlement_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the currency the
        #   transaction will be settled in.
        sig { returns(String) }
        def settlement_currency
        end

        sig { params(_: String).returns(String) }
        def settlement_currency=(_)
        end

        # The terminal identifier (commonly abbreviated as TID) of the terminal the card
        #   is transacting with.
        sig { returns(T.nilable(String)) }
        def terminal_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def terminal_id=(_)
        end

        # The identifier of the Card Payment this authorization will belong to. Available
        #   in the API once the card authorization has completed.
        sig { returns(String) }
        def upcoming_card_payment_id
        end

        sig { params(_: String).returns(String) }
        def upcoming_card_payment_id=(_)
        end

        # Fields related to verification of cardholder-provided values.
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification) }
        def verification
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::Verification)
            .returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification)
        end
        def verification=(_)
        end

        # Fields related to a card authorization.
        sig do
          params(
            account_id: String,
            card_id: String,
            decision: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol),
            digital_wallet_token_id: T.nilable(String),
            direction: Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol,
            merchant_acceptor_id: String,
            merchant_category_code: String,
            merchant_city: T.nilable(String),
            merchant_country: String,
            merchant_descriptor: String,
            merchant_postal_code: T.nilable(String),
            merchant_state: T.nilable(String),
            network_details: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails,
            network_identifiers: Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers,
            network_risk_score: T.nilable(Integer),
            physical_card_id: T.nilable(String),
            presentment_amount: Integer,
            presentment_currency: String,
            processing_category: Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol,
            request_details: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails,
            settlement_amount: Integer,
            settlement_currency: String,
            terminal_id: T.nilable(String),
            upcoming_card_payment_id: String,
            verification: Increase::Models::RealTimeDecision::CardAuthorization::Verification
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_id:,
          card_id:,
          decision:,
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
          request_details:,
          settlement_amount:,
          settlement_currency:,
          terminal_id:,
          upcoming_card_payment_id:,
          verification:
        )
        end

        sig do
          override
            .returns(
              {
                account_id: String,
                card_id: String,
                decision: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol),
                digital_wallet_token_id: T.nilable(String),
                direction: Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol,
                merchant_acceptor_id: String,
                merchant_category_code: String,
                merchant_city: T.nilable(String),
                merchant_country: String,
                merchant_descriptor: String,
                merchant_postal_code: T.nilable(String),
                merchant_state: T.nilable(String),
                network_details: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails,
                network_identifiers: Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers,
                network_risk_score: T.nilable(Integer),
                physical_card_id: T.nilable(String),
                presentment_amount: Integer,
                presentment_currency: String,
                processing_category: Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol,
                request_details: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails,
                settlement_amount: Integer,
                settlement_currency: String,
                terminal_id: T.nilable(String),
                upcoming_card_payment_id: String,
                verification: Increase::Models::RealTimeDecision::CardAuthorization::Verification
              }
            )
        end
        def to_hash
        end

        # Whether or not the authorization was approved.
        module Decision
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Decision) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol) }

          # Approve the authorization.
          APPROVE = T.let(:approve, Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol)

          # Decline the authorization.
          DECLINE = T.let(:decline, Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol)
        end

        # The direction describes the direction the funds will move, either from the
        #   cardholder to the merchant or from the merchant to the cardholder.
        module Direction
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Direction) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol) }

          # A regular card authorization where funds are debited from the cardholder.
          SETTLEMENT =
            T.let(:settlement, Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol)

          # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
          REFUND = T.let(:refund, Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol)
        end

        class NetworkDetails < Increase::BaseModel
          # The payment network used to process this card authorization.
          sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol) }
          def category
          end

          sig do
            params(_: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol)
              .returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol)
          end
          def category=(_)
          end

          # Fields specific to the `visa` network.
          sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa)) }
          def visa
          end

          sig do
            params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa))
              .returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa))
          end
          def visa=(_)
          end

          # Fields specific to the `network`.
          sig do
            params(
              category: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol,
              visa: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa)
            )
              .returns(T.attached_class)
          end
          def self.new(category:, visa:)
          end

          sig do
            override
              .returns(
                {
                  category: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol,
                  visa: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa)
                }
              )
          end
          def to_hash
          end

          # The payment network used to process this card authorization.
          module Category
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                )
              end

            # Visa
            VISA =
              T.let(
                :visa,
                Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol
              )
          end

          class Visa < Increase::BaseModel
            # For electronic commerce transactions, this identifies the level of security used
            #   in obtaining the customer's payment credential. For mail or telephone order
            #   transactions, identifies the type of mail or telephone order.
            sig do
              returns(
                T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )
              )
            end
            def electronic_commerce_indicator
            end

            sig do
              params(
                _: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                )
            end
            def electronic_commerce_indicator=(_)
            end

            # The method used to enter the cardholder's primary account number and card
            #   expiration date.
            sig do
              returns(
                T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )
              )
            end
            def point_of_service_entry_mode
            end

            sig do
              params(
                _: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                )
            end
            def point_of_service_entry_mode=(_)
            end

            # Only present when `actioner: network`. Describes why a card authorization was
            #   approved or declined by Visa through stand-in processing.
            sig do
              returns(
                T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )
              )
            end
            def stand_in_processing_reason
            end

            sig do
              params(
                _: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                )
            end
            def stand_in_processing_reason=(_)
            end

            # Fields specific to the `visa` network.
            sig do
              params(
                electronic_commerce_indicator: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                ),
                point_of_service_entry_mode: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                ),
                stand_in_processing_reason: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
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
                      Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                    ),
                    point_of_service_entry_mode: T.nilable(
                      Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                    ),
                    stand_in_processing_reason: T.nilable(
                      Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
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
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                end

              # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
              MAIL_PHONE_ORDER =
                T.let(
                  :mail_phone_order,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )

              # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
              RECURRING =
                T.let(
                  :recurring,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )

              # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
              INSTALLMENT =
                T.let(
                  :installment,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )

              # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
              UNKNOWN_MAIL_PHONE_ORDER =
                T.let(
                  :unknown_mail_phone_order,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )

              # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
              SECURE_ELECTRONIC_COMMERCE =
                T.let(
                  :secure_electronic_commerce,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )

              # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
              NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                T.let(
                  :non_authenticated_security_transaction_at_3ds_capable_merchant,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )

              # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
              NON_AUTHENTICATED_SECURITY_TRANSACTION =
                T.let(
                  :non_authenticated_security_transaction,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )

              # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
              NON_SECURE_TRANSACTION =
                T.let(
                  :non_secure_transaction,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )
            end

            # The method used to enter the cardholder's primary account number and card
            #   expiration date.
            module PointOfServiceEntryMode
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                end

              # Unknown
              UNKNOWN =
                T.let(
                  :unknown,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Manual key entry
              MANUAL =
                T.let(
                  :manual,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Magnetic stripe read, without card verification value
              MAGNETIC_STRIPE_NO_CVV =
                T.let(
                  :magnetic_stripe_no_cvv,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Optical code
              OPTICAL_CODE =
                T.let(
                  :optical_code,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Contact chip card
              INTEGRATED_CIRCUIT_CARD =
                T.let(
                  :integrated_circuit_card,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Contactless read of chip card
              CONTACTLESS =
                T.let(
                  :contactless,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Transaction initiated using a credential that has previously been stored on file
              CREDENTIAL_ON_FILE =
                T.let(
                  :credential_on_file,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Magnetic stripe read
              MAGNETIC_STRIPE =
                T.let(
                  :magnetic_stripe,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Contactless read of magnetic stripe data
              CONTACTLESS_MAGNETIC_STRIPE =
                T.let(
                  :contactless_magnetic_stripe,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )

              # Contact chip card, without card verification value
              INTEGRATED_CIRCUIT_CARD_NO_CVV =
                T.let(
                  :integrated_circuit_card_no_cvv,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )
            end

            # Only present when `actioner: network`. Describes why a card authorization was
            #   approved or declined by Visa through stand-in processing.
            module StandInProcessingReason
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                end

              # Increase failed to process the authorization in a timely manner.
              ISSUER_ERROR =
                T.let(
                  :issuer_error,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )

              # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
              INVALID_PHYSICAL_CARD =
                T.let(
                  :invalid_physical_card,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )

              # The 3DS cardholder authentication verification value was invalid.
              INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                T.let(
                  :invalid_cardholder_authentication_verification_value,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )

              # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
              INTERNAL_VISA_ERROR =
                T.let(
                  :internal_visa_error,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )

              # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
              MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                T.let(
                  :merchant_transaction_advisory_service_authentication_required,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )

              # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
              PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK =
                T.let(
                  :payment_fraud_disruption_acquirer_block,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )

              # An unspecific reason for stand-in processing.
              OTHER =
                T.let(
                  :other,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )
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
        module ProcessingCategory
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol) }

          # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
          ACCOUNT_FUNDING =
            T.let(
              :account_funding,
              Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol
            )

          # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
          AUTOMATIC_FUEL_DISPENSER =
            T.let(
              :automatic_fuel_dispenser,
              Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol
            )

          # A transaction used to pay a bill.
          BILL_PAYMENT =
            T.let(
              :bill_payment,
              Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol
            )

          # A regular purchase.
          PURCHASE =
            T.let(:purchase, Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol)

          # Quasi-cash transactions represent purchases of items which may be convertible to cash.
          QUASI_CASH =
            T.let(
              :quasi_cash,
              Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol
            )

          # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
          REFUND =
            T.let(:refund, Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol)
        end

        class RequestDetails < Increase::BaseModel
          # The type of this request (e.g., an initial authorization or an incremental
          #   authorization).
          sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol) }
          def category
          end

          sig do
            params(_: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol)
              .returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol)
          end
          def category=(_)
          end

          # Fields specific to the category `incremental_authorization`.
          sig do
            returns(
              T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization)
            )
          end
          def incremental_authorization
          end

          sig do
            params(
              _: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization)
            )
              .returns(
                T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization)
              )
          end
          def incremental_authorization=(_)
          end

          # Fields specific to the category `initial_authorization`.
          sig { returns(T.nilable(T.anything)) }
          def initial_authorization
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def initial_authorization=(_)
          end

          # Fields specific to the type of request, such as an incremental authorization.
          sig do
            params(
              category: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol,
              incremental_authorization: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization),
              initial_authorization: T.nilable(T.anything)
            )
              .returns(T.attached_class)
          end
          def self.new(category:, incremental_authorization:, initial_authorization:)
          end

          sig do
            override
              .returns(
                {
                  category: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol,
                  incremental_authorization: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization),
                  initial_authorization: T.nilable(T.anything)
                }
              )
          end
          def to_hash
          end

          # The type of this request (e.g., an initial authorization or an incremental
          #   authorization).
          module Category
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol
                )
              end

            # A regular, standalone authorization.
            INITIAL_AUTHORIZATION =
              T.let(
                :initial_authorization,
                Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol
              )

            # An incremental request to increase the amount of an existing authorization.
            INCREMENTAL_AUTHORIZATION =
              T.let(
                :incremental_authorization,
                Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol
              )
          end

          class IncrementalAuthorization < Increase::BaseModel
            # The card payment for this authorization and increment.
            sig { returns(String) }
            def card_payment_id
            end

            sig { params(_: String).returns(String) }
            def card_payment_id=(_)
            end

            # The identifier of the card authorization this request is attempting to
            #   increment.
            sig { returns(String) }
            def original_card_authorization_id
            end

            sig { params(_: String).returns(String) }
            def original_card_authorization_id=(_)
            end

            # Fields specific to the category `incremental_authorization`.
            sig do
              params(
                card_payment_id: String,
                original_card_authorization_id: String
              ).returns(T.attached_class)
            end
            def self.new(card_payment_id:, original_card_authorization_id:)
            end

            sig { override.returns({card_payment_id: String, original_card_authorization_id: String}) }
            def to_hash
            end
          end
        end

        class Verification < Increase::BaseModel
          # Fields related to verification of the Card Verification Code, a 3-digit code on
          #   the back of the card.
          sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode) }
          def card_verification_code
          end

          sig do
            params(_: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode)
              .returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode)
          end
          def card_verification_code=(_)
          end

          # Cardholder address provided in the authorization request and the address on file
          #   we verified it against.
          sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress) }
          def cardholder_address
          end

          sig do
            params(_: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress)
              .returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress)
          end
          def cardholder_address=(_)
          end

          # Fields related to verification of cardholder-provided values.
          sig do
            params(
              card_verification_code: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode,
              cardholder_address: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress
            )
              .returns(T.attached_class)
          end
          def self.new(card_verification_code:, cardholder_address:)
          end

          sig do
            override
              .returns(
                {
                  card_verification_code: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode,
                  cardholder_address: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress
                }
              )
          end
          def to_hash
          end

          class CardVerificationCode < Increase::BaseModel
            # The result of verifying the Card Verification Code.
            sig do
              returns(
                Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
              )
            end
            def result
            end

            sig do
              params(
                _: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
              )
                .returns(
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                )
            end
            def result=(_)
            end

            # Fields related to verification of the Card Verification Code, a 3-digit code on
            #   the back of the card.
            sig do
              params(
                result: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(result:)
            end

            sig do
              override
                .returns(
                  {
                    result: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
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
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  )
                end

              # No card verification code was provided in the authorization request.
              NOT_CHECKED =
                T.let(
                  :not_checked,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                )

              # The card verification code matched the one on file.
              MATCH =
                T.let(
                  :match,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                )

              # The card verification code did not match the one on file.
              NO_MATCH =
                T.let(
                  :no_match,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                )
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
            sig do
              returns(
                Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
              )
            end
            def result
            end

            sig do
              params(
                _: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
              )
                .returns(
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )
            end
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
                result: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
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
                    result: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
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
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )
                end

              # No adress was provided in the authorization request.
              NOT_CHECKED =
                T.let(
                  :not_checked,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )

              # Postal code matches, but the street address was not verified.
              POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED =
                T.let(
                  :postal_code_match_address_not_checked,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )

              # Postal code matches, but the street address does not match.
              POSTAL_CODE_MATCH_ADDRESS_NO_MATCH =
                T.let(
                  :postal_code_match_address_no_match,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )

              # Postal code does not match, but the street address matches.
              POSTAL_CODE_NO_MATCH_ADDRESS_MATCH =
                T.let(
                  :postal_code_no_match_address_match,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )

              # Postal code and street address match.
              MATCH =
                T.let(
                  :match,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )

              # Postal code and street address do not match.
              NO_MATCH =
                T.let(
                  :no_match,
                  Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )
            end
          end
        end
      end

      # The category of the Real-Time Decision.
      module Category
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::Category::TaggedSymbol) }

        # A card is being authorized.
        CARD_AUTHORIZATION_REQUESTED =
          T.let(:card_authorization_requested, Increase::Models::RealTimeDecision::Category::TaggedSymbol)

        # 3DS authentication is requested.
        CARD_AUTHENTICATION_REQUESTED =
          T.let(:card_authentication_requested, Increase::Models::RealTimeDecision::Category::TaggedSymbol)

        # 3DS authentication challenge requires cardholder involvement.
        CARD_AUTHENTICATION_CHALLENGE_REQUESTED =
          T.let(
            :card_authentication_challenge_requested,
            Increase::Models::RealTimeDecision::Category::TaggedSymbol
          )

        # A card is being loaded into a digital wallet.
        DIGITAL_WALLET_TOKEN_REQUESTED =
          T.let(:digital_wallet_token_requested, Increase::Models::RealTimeDecision::Category::TaggedSymbol)

        # A card is being loaded into a digital wallet and requires cardholder authentication.
        DIGITAL_WALLET_AUTHENTICATION_REQUESTED =
          T.let(
            :digital_wallet_authentication_requested,
            Increase::Models::RealTimeDecision::Category::TaggedSymbol
          )
      end

      class DigitalWalletAuthentication < Increase::BaseModel
        # The identifier of the Card that is being tokenized.
        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        # The channel to send the card user their one-time passcode.
        sig { returns(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol) }
        def channel
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol)
            .returns(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol)
        end
        def channel=(_)
        end

        # The digital wallet app being used.
        sig { returns(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol) }
        def digital_wallet
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol)
            .returns(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol)
        end
        def digital_wallet=(_)
        end

        # The email to send the one-time passcode to if `channel` is equal to `email`.
        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_)
        end

        # The one-time passcode to send the card user.
        sig { returns(String) }
        def one_time_passcode
        end

        sig { params(_: String).returns(String) }
        def one_time_passcode=(_)
        end

        # The phone number to send the one-time passcode to if `channel` is equal to
        #   `sms`.
        sig { returns(T.nilable(String)) }
        def phone
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_)
        end

        # Whether your application successfully delivered the one-time passcode.
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)) }
        def result
        end

        sig do
          params(
            _: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)
          )
            .returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol))
        end
        def result=(_)
        end

        # Fields related to a digital wallet authentication attempt.
        sig do
          params(
            card_id: String,
            channel: Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol,
            digital_wallet: Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol,
            email: T.nilable(String),
            one_time_passcode: String,
            phone: T.nilable(String),
            result: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(card_id:, channel:, digital_wallet:, email:, one_time_passcode:, phone:, result:)
        end

        sig do
          override
            .returns(
              {
                card_id: String,
                channel: Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol,
                digital_wallet: Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol,
                email: T.nilable(String),
                one_time_passcode: String,
                phone: T.nilable(String),
                result: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)
              }
            )
        end
        def to_hash
        end

        # The channel to send the card user their one-time passcode.
        module Channel
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol) }

          # Send one-time passcodes over SMS.
          SMS = T.let(:sms, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol)

          # Send one-time passcodes over email.
          EMAIL =
            T.let(:email, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol)
        end

        # The digital wallet app being used.
        module DigitalWallet
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol
              )
            end

          # Apple Pay
          APPLE_PAY =
            T.let(
              :apple_pay,
              Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol
            )

          # Google Pay
          GOOGLE_PAY =
            T.let(
              :google_pay,
              Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol
            )

          # Samsung Pay
          SAMSUNG_PAY =
            T.let(
              :samsung_pay,
              Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol
            )

          # Unknown
          UNKNOWN =
            T.let(
              :unknown,
              Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol
            )
        end

        # Whether your application successfully delivered the one-time passcode.
        module Result
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol) }

          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS =
            T.let(:success, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE =
            T.let(:failure, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)
        end
      end

      class DigitalWalletToken < Increase::BaseModel
        # The identifier of the Card that is being tokenized.
        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        # The identifier of the Card Profile that was set via the real time decision. This
        #   will be null until the real time decision is responded to or if the real time
        #   decision did not set a card profile.
        sig { returns(T.nilable(String)) }
        def card_profile_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def card_profile_id=(_)
        end

        # Whether or not the provisioning request was approved. This will be null until
        #   the real time decision is responded to.
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol)) }
        def decision
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol))
            .returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol))
        end
        def decision=(_)
        end

        # The digital wallet app being used.
        sig { returns(Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol) }
        def digital_wallet
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol)
            .returns(Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol)
        end
        def digital_wallet=(_)
        end

        # Fields related to a digital wallet token provisioning attempt.
        sig do
          params(
            card_id: String,
            card_profile_id: T.nilable(String),
            decision: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol),
            digital_wallet: Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(card_id:, card_profile_id:, decision:, digital_wallet:)
        end

        sig do
          override
            .returns(
              {
                card_id: String,
                card_profile_id: T.nilable(String),
                decision: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol),
                digital_wallet: Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        # Whether or not the provisioning request was approved. This will be null until
        #   the real time decision is responded to.
        module Decision
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol) }

          # Approve the provisioning request.
          APPROVE = T.let(:approve, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol)

          # Decline the provisioning request.
          DECLINE = T.let(:decline, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol)
        end

        # The digital wallet app being used.
        module DigitalWallet
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol) }

          # Apple Pay
          APPLE_PAY =
            T.let(:apple_pay, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol)

          # Google Pay
          GOOGLE_PAY =
            T.let(:google_pay, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol)

          # Samsung Pay
          SAMSUNG_PAY =
            T.let(:samsung_pay, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol)

          # Unknown
          UNKNOWN =
            T.let(:unknown, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol)
        end
      end

      # The status of the Real-Time Decision.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::Status::TaggedSymbol) }

        # The decision is pending action via real-time webhook.
        PENDING = T.let(:pending, Increase::Models::RealTimeDecision::Status::TaggedSymbol)

        # Your webhook actioned the real-time decision.
        RESPONDED = T.let(:responded, Increase::Models::RealTimeDecision::Status::TaggedSymbol)

        # Your webhook failed to respond to the authorization in time.
        TIMED_OUT = T.let(:timed_out, Increase::Models::RealTimeDecision::Status::TaggedSymbol)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `real_time_decision`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecision::Type::TaggedSymbol) }

        REAL_TIME_DECISION = T.let(:real_time_decision, Increase::Models::RealTimeDecision::Type::TaggedSymbol)
      end
    end
  end
end
