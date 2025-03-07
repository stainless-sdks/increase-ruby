# typed: strong

module Increase
  module Models
    class ProgramListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(cursor: nil, limit: nil, request_options: {})
      end

      sig { override.returns({cursor: String, limit: Integer, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
