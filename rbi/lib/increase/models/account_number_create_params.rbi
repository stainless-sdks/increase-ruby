# typed: strong

module Increase
  module Models
    class AccountNumberCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountNumberCreateParams::InboundACH)) }
      def inbound_ach
      end

      sig do
        params(_: Increase::Models::AccountNumberCreateParams::InboundACH)
          .returns(Increase::Models::AccountNumberCreateParams::InboundACH)
      end
      def inbound_ach=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountNumberCreateParams::InboundChecks)) }
      def inbound_checks
      end

      sig do
        params(_: Increase::Models::AccountNumberCreateParams::InboundChecks)
          .returns(Increase::Models::AccountNumberCreateParams::InboundChecks)
      end
      def inbound_checks=(_)
      end

      sig do
        params(
            account_id: String,
            name: String,
            inbound_ach: Increase::Models::AccountNumberCreateParams::InboundACH,
            inbound_checks: Increase::Models::AccountNumberCreateParams::InboundChecks,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
      end
      def initialize(account_id:, name:, inbound_ach: nil, inbound_checks: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              name: String,
              inbound_ach: Increase::Models::AccountNumberCreateParams::InboundACH,
              inbound_checks: Increase::Models::AccountNumberCreateParams::InboundChecks,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class InboundACH < Increase::BaseModel
        sig { returns(Symbol) }
        def debit_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def debit_status=(_)
        end

        sig { params(debit_status: Symbol).void }
        def initialize(debit_status:)
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
    end
  end
end
