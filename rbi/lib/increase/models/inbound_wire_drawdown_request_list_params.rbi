# typed: strong

module Increase
  module Models
    class InboundWireDrawdownRequestListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(cursor: nil, limit: nil, request_options: {})
      end

      sig { override.returns({cursor: String, limit: Integer, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
