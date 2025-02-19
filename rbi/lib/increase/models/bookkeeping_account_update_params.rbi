# typed: strong

module Increase
  module Models
    class BookkeepingAccountUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { params(name: String, request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(name:, request_options: {})
      end

      sig { override.returns({name: String, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
