# typed: strong

module Increase
  module Models
    class InboundACHTransferCreateNotificationOfChangeParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The updated account number to send in the notification of change.
      sig { returns(T.nilable(String)) }
      def updated_account_number
      end

      sig { params(_: String).returns(String) }
      def updated_account_number=(_)
      end

      # The updated routing number to send in the notification of change.
      sig { returns(T.nilable(String)) }
      def updated_routing_number
      end

      sig { params(_: String).returns(String) }
      def updated_routing_number=(_)
      end

      sig do
        params(
          updated_account_number: String,
          updated_routing_number: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(updated_account_number: nil, updated_routing_number: nil, request_options: {})
      end

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
      def to_hash
      end
    end
  end
end
