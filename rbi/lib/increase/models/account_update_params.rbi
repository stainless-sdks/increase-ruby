# typed: strong

module Increase
  module Models
    class AccountUpdateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/update_an_account_parameters/properties/name
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(name: String, request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(name: nil, request_options: {}); end

      sig { override.returns({name: String, request_options: Increase::RequestOptions}) }
      def to_hash; end
    end
  end
end
