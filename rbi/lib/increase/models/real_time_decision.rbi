# typed: strong

module Increase
  module Models
    class RealTimeDecision < Increase::Internal::Type::BaseModel
      # #/components/schemas/real_time_decision/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/real_time_decision/properties/card_authentication
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication)) }
      attr_reader :card_authentication

      sig do
        params(
          card_authentication: T.nilable(T.any(Increase::Models::RealTimeDecision::CardAuthentication, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :card_authentication

      # #/components/schemas/real_time_decision/properties/card_authentication_challenge
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge)) }
      attr_reader :card_authentication_challenge

      sig do
        params(
          card_authentication_challenge: T.nilable(
            T.any(Increase::Models::RealTimeDecision::CardAuthenticationChallenge, Increase::Internal::AnyHash)
          )
        )
          .void
      end
      attr_writer :card_authentication_challenge

      # #/components/schemas/real_time_decision/properties/card_authorization
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization)) }
      attr_reader :card_authorization

      sig do
        params(
          card_authorization: T.nilable(T.any(Increase::Models::RealTimeDecision::CardAuthorization, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :card_authorization

      # #/components/schemas/real_time_decision/properties/category
      sig { returns(Increase::Models::RealTimeDecision::Category::TaggedSymbol) }
      attr_accessor :category

      # #/components/schemas/real_time_decision/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/real_time_decision/properties/digital_wallet_authentication
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication)) }
      attr_reader :digital_wallet_authentication

      sig do
        params(
          digital_wallet_authentication: T.nilable(
            T.any(Increase::Models::RealTimeDecision::DigitalWalletAuthentication, Increase::Internal::AnyHash)
          )
        )
          .void
      end
      attr_writer :digital_wallet_authentication

      # #/components/schemas/real_time_decision/properties/digital_wallet_token
      sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken)) }
      attr_reader :digital_wallet_token

      sig do
        params(
          digital_wallet_token: T.nilable(T.any(Increase::Models::RealTimeDecision::DigitalWalletToken, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :digital_wallet_token

      # #/components/schemas/real_time_decision/properties/status
      sig { returns(Increase::Models::RealTimeDecision::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/real_time_decision/properties/timeout_at
      sig { returns(Time) }
      attr_accessor :timeout_at

      # #/components/schemas/real_time_decision/properties/type
      sig { returns(Increase::Models::RealTimeDecision::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/real_time_decision
      sig do
        params(
          id: String,
          card_authentication: T.nilable(T.any(Increase::Models::RealTimeDecision::CardAuthentication, Increase::Internal::AnyHash)),
          card_authentication_challenge: T.nilable(
            T.any(Increase::Models::RealTimeDecision::CardAuthenticationChallenge, Increase::Internal::AnyHash)
          ),
          card_authorization: T.nilable(T.any(Increase::Models::RealTimeDecision::CardAuthorization, Increase::Internal::AnyHash)),
          category: Increase::Models::RealTimeDecision::Category::OrSymbol,
          created_at: Time,
          digital_wallet_authentication: T.nilable(
            T.any(Increase::Models::RealTimeDecision::DigitalWalletAuthentication, Increase::Internal::AnyHash)
          ),
          digital_wallet_token: T.nilable(T.any(Increase::Models::RealTimeDecision::DigitalWalletToken, Increase::Internal::AnyHash)),
          status: Increase::Models::RealTimeDecision::Status::OrSymbol,
          timeout_at: Time,
          type: Increase::Models::RealTimeDecision::Type::OrSymbol
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
      ); end
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
      def to_hash; end

      class CardAuthentication < Increase::Internal::Type::BaseModel
        # #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/account_id
        sig { returns(String) }
        attr_accessor :account_id

        # #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/card_id
        sig { returns(String) }
        attr_accessor :card_id

        # #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/decision
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol)) }
        attr_accessor :decision

        # #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/upcoming_card_payment_id
        sig { returns(String) }
        attr_accessor :upcoming_card_payment_id

        # #/components/schemas/real_time_decision/properties/card_authentication
        sig do
          params(
            account_id: String,
            card_id: String,
            decision: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication::Decision::OrSymbol),
            upcoming_card_payment_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(account_id:, card_id:, decision:, upcoming_card_payment_id:); end

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
        def to_hash; end

        # #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/decision
        module Decision
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthentication::Decision) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol) }

          # Approve the authentication attempt without triggering a challenge.
          APPROVE = T.let(:approve, Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol)

          # Request further validation before approving the authentication attempt.
          CHALLENGE =
            T.let(:challenge, Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol)

          # Deny the authentication attempt.
          DENY = T.let(:deny, Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::RealTimeDecision::CardAuthentication::Decision::TaggedSymbol]) }
          def self.values; end
        end
      end

      class CardAuthenticationChallenge < Increase::Internal::Type::BaseModel
        # #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/account_id
        sig { returns(String) }
        attr_accessor :account_id

        # #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/card_id
        sig { returns(String) }
        attr_accessor :card_id

        # #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/card_payment_id
        sig { returns(String) }
        attr_accessor :card_payment_id

        # #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/one_time_code
        sig { returns(String) }
        attr_accessor :one_time_code

        # #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/result
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)) }
        attr_accessor :result

        # #/components/schemas/real_time_decision/properties/card_authentication_challenge
        sig do
          params(
            account_id: String,
            card_id: String,
            card_payment_id: String,
            one_time_code: String,
            result: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::OrSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(account_id:, card_id:, card_payment_id:, one_time_code:, result:); end

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
        def to_hash; end

        # #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/result
        module Result
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol
              )
            end

          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS =
            T.let(:success, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE =
            T.let(:failure, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class CardAuthorization < Increase::Internal::Type::BaseModel
        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/account_id
        sig { returns(String) }
        attr_accessor :account_id

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/card_id
        sig { returns(String) }
        attr_accessor :card_id

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/decision
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol)) }
        attr_accessor :decision

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/digital_wallet_token_id
        sig { returns(T.nilable(String)) }
        attr_accessor :digital_wallet_token_id

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/direction
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol) }
        attr_accessor :direction

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_acceptor_id
        sig { returns(String) }
        attr_accessor :merchant_acceptor_id

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_category_code
        sig { returns(String) }
        attr_accessor :merchant_category_code

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_city
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_city

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_country
        sig { returns(String) }
        attr_accessor :merchant_country

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_descriptor
        sig { returns(String) }
        attr_accessor :merchant_descriptor

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_postal_code
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_postal_code

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_state
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_state

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails) }
        attr_reader :network_details

        sig do
          params(
            network_details: T.any(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :network_details

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers) }
        attr_reader :network_identifiers

        sig do
          params(
            network_identifiers: T.any(
              Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers,
              Increase::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :network_identifiers

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_risk_score
        sig { returns(T.nilable(Integer)) }
        attr_accessor :network_risk_score

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/physical_card_id
        sig { returns(T.nilable(String)) }
        attr_accessor :physical_card_id

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/presentment_amount
        sig { returns(Integer) }
        attr_accessor :presentment_amount

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/presentment_currency
        sig { returns(String) }
        attr_accessor :presentment_currency

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/processing_category
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol) }
        attr_accessor :processing_category

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails) }
        attr_reader :request_details

        sig do
          params(
            request_details: T.any(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :request_details

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/settlement_amount
        sig { returns(Integer) }
        attr_accessor :settlement_amount

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/settlement_currency
        sig { returns(String) }
        attr_accessor :settlement_currency

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/terminal_id
        sig { returns(T.nilable(String)) }
        attr_accessor :terminal_id

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/upcoming_card_payment_id
        sig { returns(String) }
        attr_accessor :upcoming_card_payment_id

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification
        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification) }
        attr_reader :verification

        sig do
          params(
            verification: T.any(Increase::Models::RealTimeDecision::CardAuthorization::Verification, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :verification

        # #/components/schemas/real_time_decision/properties/card_authorization
        sig do
          params(
            account_id: String,
            card_id: String,
            decision: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::Decision::OrSymbol),
            digital_wallet_token_id: T.nilable(String),
            direction: Increase::Models::RealTimeDecision::CardAuthorization::Direction::OrSymbol,
            merchant_acceptor_id: String,
            merchant_category_code: String,
            merchant_city: T.nilable(String),
            merchant_country: String,
            merchant_descriptor: String,
            merchant_postal_code: T.nilable(String),
            merchant_state: T.nilable(String),
            network_details: T.any(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails, Increase::Internal::AnyHash),
            network_identifiers: T.any(
              Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers,
              Increase::Internal::AnyHash
            ),
            network_risk_score: T.nilable(Integer),
            physical_card_id: T.nilable(String),
            presentment_amount: Integer,
            presentment_currency: String,
            processing_category: Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::OrSymbol,
            request_details: T.any(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails, Increase::Internal::AnyHash),
            settlement_amount: Integer,
            settlement_currency: String,
            terminal_id: T.nilable(String),
            upcoming_card_payment_id: String,
            verification: T.any(Increase::Models::RealTimeDecision::CardAuthorization::Verification, Increase::Internal::AnyHash)
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
        ); end
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
        def to_hash; end

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/decision
        module Decision
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Decision) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol) }

          # Approve the authorization.
          APPROVE = T.let(:approve, Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol)

          # Decline the authorization.
          DECLINE = T.let(:decline, Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::RealTimeDecision::CardAuthorization::Decision::TaggedSymbol]) }
          def self.values; end
        end

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/direction
        module Direction
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Direction) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol) }

          # A regular card authorization where funds are debited from the cardholder.
          SETTLEMENT =
            T.let(:settlement, Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol)

          # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
          REFUND = T.let(:refund, Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::RealTimeDecision::CardAuthorization::Direction::TaggedSymbol]) }
          def self.values; end
        end

        class NetworkDetails < Increase::Internal::Type::BaseModel
          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/category
          sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol) }
          attr_accessor :category

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa
          sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa)) }
          attr_reader :visa

          sig do
            params(
              visa: T.nilable(
                T.any(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa,
                  Increase::Internal::AnyHash
                )
              )
            )
              .void
          end
          attr_writer :visa

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details
          sig do
            params(
              category: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::OrSymbol,
              visa: T.nilable(
                T.any(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa,
                  Increase::Internal::AnyHash
                )
              )
            )
              .returns(T.attached_class)
          end
          def self.new(category:, visa:); end

          sig do
            override
              .returns(
                {
                  category: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol,
                  visa: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa)
                }
              )
          end
          def to_hash; end

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/category
          module Category
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                )
              end

            # Visa
            VISA =
              T.let(
                :visa,
                Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category::TaggedSymbol]
                )
            end
            def self.values; end
          end

          class Visa < Increase::Internal::Type::BaseModel
            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
            sig do
              returns(
                T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                )
              )
            end
            attr_accessor :electronic_commerce_indicator

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
            sig do
              returns(
                T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                )
              )
            end
            attr_accessor :point_of_service_entry_mode

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
            sig do
              returns(
                T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                )
              )
            end
            attr_accessor :stand_in_processing_reason

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa
            sig do
              params(
                electronic_commerce_indicator: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::OrSymbol
                ),
                point_of_service_entry_mode: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::OrSymbol
                ),
                stand_in_processing_reason: T.nilable(
                  Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::OrSymbol
                )
              )
                .returns(T.attached_class)
            end
            def self.new(
              electronic_commerce_indicator:,
              point_of_service_entry_mode:,
              stand_in_processing_reason:
            )
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
            def to_hash; end

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
            module ElectronicCommerceIndicator
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
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

              sig do
                override
                  .returns(
                    T::Array[
                      Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
            module PointOfServiceEntryMode
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
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

              sig do
                override
                  .returns(
                    T::Array[
                      Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
            module StandInProcessingReason
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
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

              sig do
                override
                  .returns(
                    T::Array[
                      Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end
        end

        class NetworkIdentifiers < Increase::Internal::Type::BaseModel
          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers/properties/retrieval_reference_number
          sig { returns(T.nilable(String)) }
          attr_accessor :retrieval_reference_number

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers/properties/trace_number
          sig { returns(T.nilable(String)) }
          attr_accessor :trace_number

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers/properties/transaction_id
          sig { returns(T.nilable(String)) }
          attr_accessor :transaction_id

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers
          sig do
            params(
              retrieval_reference_number: T.nilable(String),
              trace_number: T.nilable(String),
              transaction_id: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(retrieval_reference_number:, trace_number:, transaction_id:); end

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
          def to_hash; end
        end

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/processing_category
        module ProcessingCategory
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol
              )
            end

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

          sig do
            override
              .returns(T::Array[Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory::TaggedSymbol])
          end
          def self.values; end
        end

        class RequestDetails < Increase::Internal::Type::BaseModel
          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/category
          sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol) }
          attr_accessor :category

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/incremental_authorization
          sig do
            returns(
              T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization)
            )
          end
          attr_reader :incremental_authorization

          sig do
            params(
              incremental_authorization: T.nilable(
                T.any(
                  Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization,
                  Increase::Internal::AnyHash
                )
              )
            )
              .void
          end
          attr_writer :incremental_authorization

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/initial_authorization
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :initial_authorization

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details
          sig do
            params(
              category: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::OrSymbol,
              incremental_authorization: T.nilable(
                T.any(
                  Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization,
                  Increase::Internal::AnyHash
                )
              ),
              initial_authorization: T.nilable(T.anything)
            )
              .returns(T.attached_class)
          end
          def self.new(category:, incremental_authorization:, initial_authorization:); end

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
          def to_hash; end

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/category
          module Category
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category::TaggedSymbol]
                )
            end
            def self.values; end
          end

          class IncrementalAuthorization < Increase::Internal::Type::BaseModel
            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/incremental_authorization/anyOf/0/properties/card_payment_id
            sig { returns(String) }
            attr_accessor :card_payment_id

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/incremental_authorization/anyOf/0/properties/original_card_authorization_id
            sig { returns(String) }
            attr_accessor :original_card_authorization_id

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/incremental_authorization
            sig do
              params(
                card_payment_id: String,
                original_card_authorization_id: String
              ).returns(T.attached_class)
            end
            def self.new(card_payment_id:, original_card_authorization_id:); end

            sig { override.returns({card_payment_id: String, original_card_authorization_id: String}) }
            def to_hash; end
          end
        end

        class Verification < Increase::Internal::Type::BaseModel
          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/card_verification_code
          sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode) }
          attr_reader :card_verification_code

          sig do
            params(
              card_verification_code: T.any(
                Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :card_verification_code

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address
          sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress) }
          attr_reader :cardholder_address

          sig do
            params(
              cardholder_address: T.any(
                Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :cardholder_address

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification
          sig do
            params(
              card_verification_code: T.any(
                Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode,
                Increase::Internal::AnyHash
              ),
              cardholder_address: T.any(
                Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress,
                Increase::Internal::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(card_verification_code:, cardholder_address:); end

          sig do
            override
              .returns(
                {
                  card_verification_code: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode,
                  cardholder_address: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress
                }
              )
          end
          def to_hash; end

          class CardVerificationCode < Increase::Internal::Type::BaseModel
            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/card_verification_code/properties/result
            sig do
              returns(
                Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
              )
            end
            attr_accessor :result

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/card_verification_code
            sig do
              params(
                result: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(result:); end

            sig do
              override
                .returns(
                  {
                    result: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  }
                )
            end
            def to_hash; end

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/card_verification_code/properties/result
            module Result
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
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

              sig do
                override
                  .returns(
                    T::Array[
                      Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          class CardholderAddress < Increase::Internal::Type::BaseModel
            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_line1
            sig { returns(T.nilable(String)) }
            attr_accessor :actual_line1

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_postal_code
            sig { returns(T.nilable(String)) }
            attr_accessor :actual_postal_code

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_line1
            sig { returns(T.nilable(String)) }
            attr_accessor :provided_line1

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_postal_code
            sig { returns(T.nilable(String)) }
            attr_accessor :provided_postal_code

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/result
            sig do
              returns(
                Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
              )
            end
            attr_accessor :result

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address
            sig do
              params(
                actual_line1: T.nilable(String),
                actual_postal_code: T.nilable(String),
                provided_line1: T.nilable(String),
                provided_postal_code: T.nilable(String),
                result: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::OrSymbol
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
            def to_hash; end

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/result
            module Result
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )
                end

              # No address was provided in the authorization request.
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

              sig do
                override
                  .returns(
                    T::Array[
                      Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end
        end
      end

      # #/components/schemas/real_time_decision/properties/category
      module Category
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::RealTimeDecision::Category::TaggedSymbol) }

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

        sig { override.returns(T::Array[Increase::Models::RealTimeDecision::Category::TaggedSymbol]) }
        def self.values; end
      end

      class DigitalWalletAuthentication < Increase::Internal::Type::BaseModel
        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/card_id
        sig { returns(String) }
        attr_accessor :card_id

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/channel
        sig { returns(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol) }
        attr_accessor :channel

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/digital_wallet
        sig { returns(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol) }
        attr_accessor :digital_wallet

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/email
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/one_time_passcode
        sig { returns(String) }
        attr_accessor :one_time_passcode

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/phone
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/result
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)) }
        attr_accessor :result

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication
        sig do
          params(
            card_id: String,
            channel: Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::OrSymbol,
            digital_wallet: Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::OrSymbol,
            email: T.nilable(String),
            one_time_passcode: String,
            phone: T.nilable(String),
            result: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::OrSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(card_id:, channel:, digital_wallet:, email:, one_time_passcode:, phone:, result:); end

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
        def to_hash; end

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/channel
        module Channel
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol
              )
            end

          # Send one-time passcodes over SMS.
          SMS = T.let(:sms, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol)

          # Send one-time passcodes over email.
          EMAIL =
            T.let(:email, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel::TaggedSymbol])
          end
          def self.values; end
        end

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/digital_wallet
        module DigitalWallet
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
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

          sig do
            override
              .returns(
                T::Array[Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/result
        module Result
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol
              )
            end

          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS =
            T.let(:success, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE =
            T.let(:failure, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class DigitalWalletToken < Increase::Internal::Type::BaseModel
        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/card_id
        sig { returns(String) }
        attr_accessor :card_id

        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/card_profile_id
        sig { returns(T.nilable(String)) }
        attr_accessor :card_profile_id

        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/decision
        sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol)) }
        attr_accessor :decision

        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/device
        sig { returns(Increase::Models::RealTimeDecision::DigitalWalletToken::Device) }
        attr_reader :device

        sig do
          params(
            device: T.any(Increase::Models::RealTimeDecision::DigitalWalletToken::Device, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :device

        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/digital_wallet
        sig { returns(Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol) }
        attr_accessor :digital_wallet

        # #/components/schemas/real_time_decision/properties/digital_wallet_token
        sig do
          params(
            card_id: String,
            card_profile_id: T.nilable(String),
            decision: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::OrSymbol),
            device: T.any(Increase::Models::RealTimeDecision::DigitalWalletToken::Device, Increase::Internal::AnyHash),
            digital_wallet: Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(card_id:, card_profile_id:, decision:, device:, digital_wallet:); end

        sig do
          override
            .returns(
              {
                card_id: String,
                card_profile_id: T.nilable(String),
                decision: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol),
                device: Increase::Models::RealTimeDecision::DigitalWalletToken::Device,
                digital_wallet: Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/decision
        module Decision
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol) }

          # Approve the provisioning request.
          APPROVE = T.let(:approve, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol)

          # Decline the provisioning request.
          DECLINE = T.let(:decline, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::RealTimeDecision::DigitalWalletToken::Decision::TaggedSymbol]) }
          def self.values; end
        end

        class Device < Increase::Internal::Type::BaseModel
          # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/device/properties/identifier
          sig { returns(T.nilable(String)) }
          attr_accessor :identifier

          # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/device
          sig { params(identifier: T.nilable(String)).returns(T.attached_class) }
          def self.new(identifier:); end

          sig { override.returns({identifier: T.nilable(String)}) }
          def to_hash; end
        end

        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/digital_wallet
        module DigitalWallet
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol) }

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

          sig do
            override
              .returns(T::Array[Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet::TaggedSymbol])
          end
          def self.values; end
        end
      end

      # #/components/schemas/real_time_decision/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::RealTimeDecision::Status::TaggedSymbol) }

        # The decision is pending action via real-time webhook.
        PENDING = T.let(:pending, Increase::Models::RealTimeDecision::Status::TaggedSymbol)

        # Your webhook actioned the real-time decision.
        RESPONDED = T.let(:responded, Increase::Models::RealTimeDecision::Status::TaggedSymbol)

        # Your webhook failed to respond to the authorization in time.
        TIMED_OUT = T.let(:timed_out, Increase::Models::RealTimeDecision::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::RealTimeDecision::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/real_time_decision/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecision::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::RealTimeDecision::Type::TaggedSymbol) }

        REAL_TIME_DECISION = T.let(:real_time_decision, Increase::Models::RealTimeDecision::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::RealTimeDecision::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
