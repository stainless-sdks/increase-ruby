# typed: strong

module Increase
  module Models
    module Simulations
      class InboundFundsHoldReleaseResponse < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_funds_hold/properties/id
        sig { returns(String) }
        attr_accessor :id

        # #/components/schemas/inbound_funds_hold/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/inbound_funds_hold/properties/automatically_releases_at
        sig { returns(Time) }
        attr_accessor :automatically_releases_at

        # #/components/schemas/inbound_funds_hold/properties/created_at
        sig { returns(Time) }
        attr_accessor :created_at

        # #/components/schemas/inbound_funds_hold/properties/currency
        sig { returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol) }
        attr_accessor :currency

        # #/components/schemas/inbound_funds_hold/properties/held_transaction_id
        sig { returns(T.nilable(String)) }
        attr_accessor :held_transaction_id

        # #/components/schemas/inbound_funds_hold/properties/pending_transaction_id
        sig { returns(T.nilable(String)) }
        attr_accessor :pending_transaction_id

        # #/components/schemas/inbound_funds_hold/properties/released_at
        sig { returns(T.nilable(Time)) }
        attr_accessor :released_at

        # #/components/schemas/inbound_funds_hold/properties/status
        sig { returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol) }
        attr_accessor :status

        # #/components/schemas/inbound_funds_hold/properties/type
        sig { returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol) }
        attr_accessor :type

        # #/paths//simulations/inbound_funds_holds/{inbound_funds_hold_id}/release/post/responses/200/content/application/json/schema
        sig do
          params(
            id: String,
            amount: Integer,
            automatically_releases_at: Time,
            created_at: Time,
            currency: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::OrSymbol,
            held_transaction_id: T.nilable(String),
            pending_transaction_id: T.nilable(String),
            released_at: T.nilable(Time),
            status: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::OrSymbol,
            type: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          amount:,
          automatically_releases_at:,
          created_at:,
          currency:,
          held_transaction_id:,
          pending_transaction_id:,
          released_at:,
          status:,
          type:
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                amount: Integer,
                automatically_releases_at: Time,
                created_at: Time,
                currency: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol,
                held_transaction_id: T.nilable(String),
                pending_transaction_id: T.nilable(String),
                released_at: T.nilable(Time),
                status: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol,
                type: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # #/components/schemas/inbound_funds_hold/properties/currency
        module Currency
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol
              )
            end

          # Canadian Dollar (CAD)
          CAD = T.let(:CAD, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # Swiss Franc (CHF)
          CHF = T.let(:CHF, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # Euro (EUR)
          EUR = T.let(:EUR, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # British Pound (GBP)
          GBP = T.let(:GBP, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # Japanese Yen (JPY)
          JPY = T.let(:JPY, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # US Dollar (USD)
          USD = T.let(:USD, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol])
          end
          def self.values; end
        end

        # #/components/schemas/inbound_funds_hold/properties/status
        module Status
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol
              )
            end

          # Funds are still being held.
          HELD = T.let(:held, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol)

          # Funds have been released.
          COMPLETE =
            T.let(:complete, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol])
          end
          def self.values; end
        end

        # #/components/schemas/inbound_funds_hold/properties/type
        module Type
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol) }

          INBOUND_FUNDS_HOLD =
            T.let(
              :inbound_funds_hold,
              Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol
            )

          sig do
            override
              .returns(T::Array[Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol])
          end
          def self.values; end
        end
      end
    end
  end
end
