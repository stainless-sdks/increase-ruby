# typed: strong

module Increase
  module Models
    class AccountBalanceParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The moment to query the balance at. If not set, returns the current balances.
      sig { returns(T.nilable(Time)) }
      def at_time
      end

      sig { params(_: Time).returns(Time) }
      def at_time=(_)
      end

      sig do
        params(at_time: Time, request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(at_time: nil, request_options: {})
      end

      sig { override.returns({at_time: Time, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
