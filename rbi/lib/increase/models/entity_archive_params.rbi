# typed: strong

module Increase
  module Models
    class EntityArchiveParams < Increase::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      sig do
        params(request_options: T.any(Increase::RequestOptions, Increase::Internal::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
