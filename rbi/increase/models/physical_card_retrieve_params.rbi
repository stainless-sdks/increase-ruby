# typed: strong

module Increase
  module Models
    class PhysicalCardRetrieveParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::PhysicalCardRetrieveParams, Increase::Internal::AnyHash) }

      sig { params(request_options: Increase::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(request_options: {}); end

      sig { override.returns({request_options: Increase::RequestOptions}) }
      def to_hash; end
    end
  end
end
