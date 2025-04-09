# typed: strong

module Increase
  module Models
    class InboundWireDrawdownRequestListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//inbound_wire_drawdown_requests/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//inbound_wire_drawdown_requests/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(cursor: nil, limit: nil, request_options: {}); end

      sig { override.returns({cursor: String, limit: Integer, request_options: Increase::RequestOptions}) }
      def to_hash; end
    end
  end
end
