# typed: strong

module Increase
  module Models
    class AccountBalanceParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Time)) }
      attr_reader :at_time

      sig { params(at_time: Time).void }
      attr_writer :at_time

      sig do
        params(
          at_time: Time,
          request_options: T.any(
            Increase::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(at_time: nil, request_options: {})
      end

      sig { override.returns({at_time: Time, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
