# typed: strong

module Increase
  module Models
    class AccountTransferApproveParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Increase::Internal::AnyHash) }

      sig do
        params(
          request_options:
            T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        ).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Increase::RequestOptions }) }
      def to_hash
      end
    end
  end
end
