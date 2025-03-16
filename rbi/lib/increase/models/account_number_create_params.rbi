# typed: strong

module Increase
  module Models
    class AccountNumberCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The Account the Account Number should belong to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The name you choose for the Account Number.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # Options related to how this Account Number should handle inbound ACH transfers.
      sig { returns(T.nilable(Increase::Models::AccountNumberCreateParams::InboundACH)) }
      def inbound_ach
      end

      sig do
        params(_: Increase::Models::AccountNumberCreateParams::InboundACH)
          .returns(Increase::Models::AccountNumberCreateParams::InboundACH)
      end
      def inbound_ach=(_)
      end

      # Options related to how this Account Number should handle inbound check
      #   withdrawals.
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
          .returns(T.attached_class)
      end
      def self.new(account_id:, name:, inbound_ach: nil, inbound_checks: nil, request_options: {})
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
        # Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   will be declined if this is `allowed` but the Account Number is not active. If
        #   you do not specify this field, the default is `allowed`.
        sig { returns(Symbol) }
        def debit_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def debit_status=(_)
        end

        # Options related to how this Account Number should handle inbound ACH transfers.
        sig { params(debit_status: Symbol).returns(T.attached_class) }
        def self.new(debit_status:)
        end

        sig { override.returns({debit_status: Symbol}) }
        def to_hash
        end

        # Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   will be declined if this is `allowed` but the Account Number is not active. If
        #   you do not specify this field, the default is `allowed`.
        class DebitStatus < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked
        end
      end

      class InboundChecks < Increase::BaseModel
        # How Increase should process checks with this account number printed on them. If
        #   you do not specify this field, the default is `check_transfers_only`.
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

        # How Increase should process checks with this account number printed on them. If
        #   you do not specify this field, the default is `check_transfers_only`.
        class Status < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = :allowed

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY = :check_transfers_only
        end
      end
    end
  end
end
