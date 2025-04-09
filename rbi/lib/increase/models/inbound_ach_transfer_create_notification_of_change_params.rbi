# typed: strong

module Increase
  module Models
    class InboundACHTransferCreateNotificationOfChangeParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_notification_of_change_for_an_inbound_ach_transfer_parameters/properties/updated_account_number
      sig { returns(T.nilable(String)) }
      attr_reader :updated_account_number

      sig { params(updated_account_number: String).void }
      attr_writer :updated_account_number

      # #/components/schemas/create_a_notification_of_change_for_an_inbound_ach_transfer_parameters/properties/updated_routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :updated_routing_number

      sig { params(updated_routing_number: String).void }
      attr_writer :updated_routing_number

      sig do
        params(
          updated_account_number: String,
          updated_routing_number: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(updated_account_number: nil, updated_routing_number: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              updated_account_number: String,
              updated_routing_number: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
