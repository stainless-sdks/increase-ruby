# typed: strong

module Increase
  module Models
    class AccountNumberUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundACH)) }
      def inbound_ach
      end

      sig do
        params(_: Increase::Models::AccountNumberUpdateParams::InboundACH).returns(Increase::Models::AccountNumberUpdateParams::InboundACH)
      end
      def inbound_ach=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundChecks)) }
      def inbound_checks
      end

      sig do
        params(_: Increase::Models::AccountNumberUpdateParams::InboundChecks).returns(Increase::Models::AccountNumberUpdateParams::InboundChecks)
      end
      def inbound_checks=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          inbound_ach: Increase::Models::AccountNumberUpdateParams::InboundACH,
          inbound_checks: Increase::Models::AccountNumberUpdateParams::InboundChecks,
          name: String,
          status: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(inbound_ach: nil, inbound_checks: nil, name: nil, status: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            inbound_ach: Increase::Models::AccountNumberUpdateParams::InboundACH,
            inbound_checks: Increase::Models::AccountNumberUpdateParams::InboundChecks,
            name: String,
            status: Symbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class InboundACH < Increase::BaseModel
        sig { returns(T.nilable(Symbol)) }
        def debit_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def debit_status=(_)
        end

        sig { params(debit_status: Symbol).void }
        def initialize(debit_status: nil)
        end

        sig { override.returns({debit_status: Symbol}) }
        def to_hash
        end

        class DebitStatus < Increase::Enum
          abstract!

          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class InboundChecks < Increase::BaseModel
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { params(status: Symbol).void }
        def initialize(status:)
        end

        sig { override.returns({status: Symbol}) }
        def to_hash
        end

        class Status < Increase::Enum
          abstract!

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = :allowed

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY = :check_transfers_only

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The account number is active.
        ACTIVE = :active

        # The account number is temporarily disabled.
        DISABLED = :disabled

        # The account number is permanently disabled.
        CANCELED = :canceled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
