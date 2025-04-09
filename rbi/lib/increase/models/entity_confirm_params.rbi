# typed: strong

module Increase
  module Models
    class EntityConfirmParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/confirm_an_entitys_details_are_correct_parameters/properties/confirmed_at
      sig { returns(T.nilable(Time)) }
      attr_reader :confirmed_at

      sig { params(confirmed_at: Time).void }
      attr_writer :confirmed_at

      sig do
        params(
          confirmed_at: Time,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(confirmed_at: nil, request_options: {}); end

      sig { override.returns({confirmed_at: Time, request_options: Increase::RequestOptions}) }
      def to_hash; end
    end
  end
end
