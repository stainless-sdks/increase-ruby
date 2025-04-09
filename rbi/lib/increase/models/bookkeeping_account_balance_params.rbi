# typed: strong

module Increase
  module Models
    class BookkeepingAccountBalanceParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//bookkeeping_accounts/{bookkeeping_account_id}/balance/get/parameters/1/schema
      sig { returns(T.nilable(Time)) }
      attr_reader :at_time

      sig { params(at_time: Time).void }
      attr_writer :at_time

      sig do
        params(at_time: Time, request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(at_time: nil, request_options: {}); end

      sig { override.returns({at_time: Time, request_options: Increase::RequestOptions}) }
      def to_hash; end
    end
  end
end
