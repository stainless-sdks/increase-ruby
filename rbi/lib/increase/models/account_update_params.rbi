# typed: strong

module Increase
  module Models
    class AccountUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The new name of the Account.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(name: String, request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(name: nil, request_options: {})
      end

      sig { override.returns({name: String, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
