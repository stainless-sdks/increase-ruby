# typed: strong

module Increase
  module Models
    class AccountNumberUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Options related to how this Account Number handles inbound ACH transfers.
      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundACH)) }
      def inbound_ach
      end

      sig do
        params(_: T.any(Increase::Models::AccountNumberUpdateParams::InboundACH, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountNumberUpdateParams::InboundACH, Increase::Util::AnyHash))
      end
      def inbound_ach=(_)
      end

      # Options related to how this Account Number should handle inbound check
      #   withdrawals.
      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundChecks)) }
      def inbound_checks
      end

      sig do
        params(_: T.any(Increase::Models::AccountNumberUpdateParams::InboundChecks, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountNumberUpdateParams::InboundChecks, Increase::Util::AnyHash))
      end
      def inbound_checks=(_)
      end

      # The name you choose for the Account Number.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # This indicates if transfers can be made to the Account Number.
      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Increase::Models::AccountNumberUpdateParams::Status::OrSymbol)
          .returns(Increase::Models::AccountNumberUpdateParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          inbound_ach: Increase::Models::AccountNumberUpdateParams::InboundACH,
          inbound_checks: Increase::Models::AccountNumberUpdateParams::InboundChecks,
          name: String,
          status: Increase::Models::AccountNumberUpdateParams::Status::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(inbound_ach: nil, inbound_checks: nil, name: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              inbound_ach: Increase::Models::AccountNumberUpdateParams::InboundACH,
              inbound_checks: Increase::Models::AccountNumberUpdateParams::InboundChecks,
              name: String,
              status: Increase::Models::AccountNumberUpdateParams::Status::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class InboundACH < Increase::BaseModel
        # Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   will be declined if this is `allowed` but the Account Number is not active.
        sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol)) }
        def debit_status
        end

        sig do
          params(_: Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol)
            .returns(Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol)
        end
        def debit_status=(_)
        end

        # Options related to how this Account Number handles inbound ACH transfers.
        sig do
          params(debit_status: Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(debit_status: nil)
        end

        sig do
          override
            .returns({debit_status: Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol})
        end
        def to_hash
        end

        # Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   will be declined if this is `allowed` but the Account Number is not active.
        module DebitStatus
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::TaggedSymbol) }

          # ACH Debits are allowed.
          ALLOWED =
            T.let(:allowed, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::TaggedSymbol)

          # ACH Debits are blocked.
          BLOCKED =
            T.let(:blocked, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::TaggedSymbol])
            end
            def values
            end
          end
        end
      end

      class InboundChecks < Increase::BaseModel
        # How Increase should process checks with this account number printed on them.
        sig { returns(Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::OrSymbol) }
        def status
        end

        sig do
          params(_: Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::OrSymbol)
            .returns(Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::OrSymbol)
        end
        def status=(_)
        end

        # Options related to how this Account Number should handle inbound check
        #   withdrawals.
        sig do
          params(status: Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(status:)
        end

        sig { override.returns({status: Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::OrSymbol}) }
        def to_hash
        end

        # How Increase should process checks with this account number printed on them.
        module Status
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::TaggedSymbol) }

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED =
            T.let(:allowed, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::TaggedSymbol)

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY =
            T.let(
              :check_transfers_only,
              Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(T::Array[Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::TaggedSymbol])
            end
            def values
            end
          end
        end
      end

      # This indicates if transfers can be made to the Account Number.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumberUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol) }

        # The account number is active.
        ACTIVE = T.let(:active, Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol)

        # The account number is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol)

        # The account number is permanently disabled.
        CANCELED = T.let(:canceled, Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
