# typed: strong

module Increase
  module Models
    class BookkeepingAccountUpdateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::BookkeepingAccountUpdateParams, Increase::Internal::AnyHash) }

      # The name you choose for the account.
      sig { returns(String) }
      attr_accessor :name

      sig { params(name: String, request_options: Increase::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(
        # The name you choose for the account.
      name:,
        request_options: {}
      ); end

      sig { override.returns({name: String, request_options: Increase::RequestOptions}) }
      def to_hash; end
    end
  end
end
