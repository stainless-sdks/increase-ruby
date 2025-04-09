# typed: strong

module Increase
  module Models
    class RealTimePaymentsTransferCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/creditor_name
      sig { returns(String) }
      attr_accessor :creditor_name

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/remittance_information
      sig { returns(String) }
      attr_accessor :remittance_information

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/source_account_number_id
      sig { returns(String) }
      attr_accessor :source_account_number_id

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/debtor_name
      sig { returns(T.nilable(String)) }
      attr_reader :debtor_name

      sig { params(debtor_name: String).void }
      attr_writer :debtor_name

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/destination_account_number
      sig { returns(T.nilable(String)) }
      attr_reader :destination_account_number

      sig { params(destination_account_number: String).void }
      attr_writer :destination_account_number

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/destination_routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :destination_routing_number

      sig { params(destination_routing_number: String).void }
      attr_writer :destination_routing_number

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/external_account_id
      sig { returns(T.nilable(String)) }
      attr_reader :external_account_id

      sig { params(external_account_id: String).void }
      attr_writer :external_account_id

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/require_approval
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/ultimate_creditor_name
      sig { returns(T.nilable(String)) }
      attr_reader :ultimate_creditor_name

      sig { params(ultimate_creditor_name: String).void }
      attr_writer :ultimate_creditor_name

      # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/ultimate_debtor_name
      sig { returns(T.nilable(String)) }
      attr_reader :ultimate_debtor_name

      sig { params(ultimate_debtor_name: String).void }
      attr_writer :ultimate_debtor_name

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
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
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
      ); end
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
      def to_hash; end
    end
  end
end
