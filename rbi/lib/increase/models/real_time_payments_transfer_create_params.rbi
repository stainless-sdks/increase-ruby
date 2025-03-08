# typed: strong

module Increase
  module Models
    class RealTimePaymentsTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(String) }
      def creditor_name
      end

      sig { params(_: String).returns(String) }
      def creditor_name=(_)
      end

      sig { returns(String) }
      def remittance_information
      end

      sig { params(_: String).returns(String) }
      def remittance_information=(_)
      end

      sig { returns(String) }
      def source_account_number_id
      end

      sig { params(_: String).returns(String) }
      def source_account_number_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def debtor_name
      end

      sig { params(_: String).returns(String) }
      def debtor_name=(_)
      end

      sig { returns(T.nilable(String)) }
      def destination_account_number
      end

      sig { params(_: String).returns(String) }
      def destination_account_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def destination_routing_number
      end

      sig { params(_: String).returns(String) }
      def destination_routing_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: String).returns(String) }
      def external_account_id=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def require_approval
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def require_approval=(_)
      end

      sig { returns(T.nilable(String)) }
      def ultimate_creditor_name
      end

      sig { params(_: String).returns(String) }
      def ultimate_creditor_name=(_)
      end

      sig { returns(T.nilable(String)) }
      def ultimate_debtor_name
      end

      sig { params(_: String).returns(String) }
      def ultimate_debtor_name=(_)
      end

      sig do
        params(
            amount: Integer,
            creditor_name: String,
            remittance_information: String,
            source_account_number_id: String,
            debtor_name: String,
            destination_account_number: String,
            destination_routing_number: String,
            external_account_id: String,
            require_approval: T::Boolean,
            ultimate_creditor_name: String,
            ultimate_debtor_name: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        creditor_name:,
        remittance_information:,
        source_account_number_id:,
        debtor_name: nil,
        destination_account_number: nil,
        destination_routing_number: nil,
        external_account_id: nil,
        require_approval: nil,
        ultimate_creditor_name: nil,
        ultimate_debtor_name: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              creditor_name: String,
              remittance_information: String,
              source_account_number_id: String,
              debtor_name: String,
              destination_account_number: String,
              destination_routing_number: String,
              external_account_id: String,
              require_approval: T::Boolean,
              ultimate_creditor_name: String,
              ultimate_debtor_name: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
