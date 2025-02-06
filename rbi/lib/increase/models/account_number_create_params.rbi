# typed: strong

module Increase
  module Models
    class AccountNumberCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(Increase::Models::AccountNumberCreateParams::InboundACH)) }
      attr_reader :inbound_ach

      sig { params(inbound_ach: Increase::Models::AccountNumberCreateParams::InboundACH).void }
      attr_writer :inbound_ach

      sig { returns(T.nilable(Increase::Models::AccountNumberCreateParams::InboundChecks)) }
      attr_reader :inbound_checks

      sig { params(inbound_checks: Increase::Models::AccountNumberCreateParams::InboundChecks).void }
      attr_writer :inbound_checks

      sig do
        params(
          account_id: String,
          name: String,
          inbound_ach: Increase::Models::AccountNumberCreateParams::InboundACH,
          inbound_checks: Increase::Models::AccountNumberCreateParams::InboundChecks,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(account_id:, name:, inbound_ach: nil, inbound_checks: nil, request_options: {})
      end

      sig do
        override.returns(
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
        attr_accessor :debit_status

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
        attr_accessor :status

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
