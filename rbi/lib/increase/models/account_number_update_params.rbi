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
        params(_: Increase::Models::AccountNumberUpdateParams::InboundACH)
          .returns(Increase::Models::AccountNumberUpdateParams::InboundACH)
      end
      def inbound_ach=(_)
      end

      # Options related to how this Account Number should handle inbound check
      #   withdrawals.
      sig { returns(T.nilable(Increase::Models::AccountNumberUpdateParams::InboundChecks)) }
      def inbound_checks
      end

      sig do
        params(_: Increase::Models::AccountNumberUpdateParams::InboundChecks)
          .returns(Increase::Models::AccountNumberUpdateParams::InboundChecks)
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
              status: Symbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class InboundACH < Increase::BaseModel
        # Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   will be declined if this is `allowed` but the Account Number is not active.
        sig { returns(T.nilable(Symbol)) }
        def debit_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def debit_status=(_)
        end

        # Options related to how this Account Number handles inbound ACH transfers.
        sig { params(debit_status: Symbol).returns(T.attached_class) }
        def self.new(debit_status: nil)
        end

        sig { override.returns({debit_status: Symbol}) }
        def to_hash
        end

        # Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   will be declined if this is `allowed` but the Account Number is not active.
        class DebitStatus < Increase::Enum
          abstract!

          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class InboundChecks < Increase::BaseModel
        # How Increase should process checks with this account number printed on them.
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        # Options related to how this Account Number should handle inbound check
        #   withdrawals.
        sig { params(status: Symbol).returns(T.attached_class) }
        def self.new(status:)
        end

        sig { override.returns({status: Symbol}) }
        def to_hash
        end

        # How Increase should process checks with this account number printed on them.
        class Status < Increase::Enum
          abstract!

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = :allowed

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY = :check_transfers_only

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      # This indicates if transfers can be made to the Account Number.
      class Status < Increase::Enum
        abstract!

        # The account number is active.
        ACTIVE = :active

        # The account number is temporarily disabled.
        DISABLED = :disabled

        # The account number is permanently disabled.
        CANCELED = :canceled

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
