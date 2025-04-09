# typed: strong

module Increase
  module Models
    class AccountNumberUpdateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/update_an_account_number_parameters/properties/inbound_ach
      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundACH)) }
      attr_reader :inbound_ach

      sig do
        params(
          inbound_ach: T.any(Increase::Models::AccountNumberUpdateParams::InboundACH, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :inbound_ach

      # #/components/schemas/update_an_account_number_parameters/properties/inbound_checks
      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundChecks)) }
      attr_reader :inbound_checks

      sig do
        params(
          inbound_checks: T.any(Increase::Models::AccountNumberUpdateParams::InboundChecks, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :inbound_checks

      # #/components/schemas/update_an_account_number_parameters/properties/name
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # #/components/schemas/update_an_account_number_parameters/properties/status
      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Increase::Models::AccountNumberUpdateParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          inbound_ach: T.any(Increase::Models::AccountNumberUpdateParams::InboundACH, Increase::Internal::AnyHash),
          inbound_checks: T.any(Increase::Models::AccountNumberUpdateParams::InboundChecks, Increase::Internal::AnyHash),
          name: String,
          status: Increase::Models::AccountNumberUpdateParams::Status::OrSymbol,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(inbound_ach: nil, inbound_checks: nil, name: nil, status: nil, request_options: {}); end

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
      def to_hash; end

      class InboundACH < Increase::Internal::Type::BaseModel
        # #/components/schemas/update_an_account_number_parameters/properties/inbound_ach/properties/debit_status
        sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol)) }
        attr_reader :debit_status

        sig { params(debit_status: Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol).void }
        attr_writer :debit_status

        # #/components/schemas/update_an_account_number_parameters/properties/inbound_ach
        sig do
          params(debit_status: Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(debit_status: nil); end

        sig do
          override
            .returns({debit_status: Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::OrSymbol})
        end
        def to_hash; end

        # #/components/schemas/update_an_account_number_parameters/properties/inbound_ach/properties/debit_status
        module DebitStatus
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::TaggedSymbol) }

          # ACH Debits are allowed.
          ALLOWED =
            T.let(:allowed, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::TaggedSymbol)

          # ACH Debits are blocked.
          BLOCKED =
            T.let(:blocked, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class InboundChecks < Increase::Internal::Type::BaseModel
        # #/components/schemas/update_an_account_number_parameters/properties/inbound_checks/properties/status
        sig { returns(Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::OrSymbol) }
        attr_accessor :status

        # #/components/schemas/update_an_account_number_parameters/properties/inbound_checks
        sig do
          params(status: Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(status:); end

        sig { override.returns({status: Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::OrSymbol}) }
        def to_hash; end

        # #/components/schemas/update_an_account_number_parameters/properties/inbound_checks/properties/status
        module Status
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::TaggedSymbol) }

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED =
            T.let(:allowed, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::TaggedSymbol)

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY =
            T.let(
              :check_transfers_only,
              Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::TaggedSymbol
            )

          sig do
            override
              .returns(T::Array[Increase::Models::AccountNumberUpdateParams::InboundChecks::Status::TaggedSymbol])
          end
          def self.values; end
        end
      end

      # #/components/schemas/update_an_account_number_parameters/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumberUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol) }

        # The account number is active.
        ACTIVE = T.let(:active, Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol)

        # The account number is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol)

        # The account number is permanently disabled.
        CANCELED = T.let(:canceled, Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::AccountNumberUpdateParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
