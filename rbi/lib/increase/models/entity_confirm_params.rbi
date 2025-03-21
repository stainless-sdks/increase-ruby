# typed: strong

module Increase
  module Models
    class EntityConfirmParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # When your user confirmed the Entity's details. If not provided, the current time
      #   will be used.
      sig { returns(T.nilable(Time)) }
      def confirmed_at
      end

      sig { params(_: Time).returns(Time) }
      def confirmed_at=(_)
      end

      sig do
        params(confirmed_at: Time, request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(confirmed_at: nil, request_options: {})
      end

      sig { override.returns({confirmed_at: Time, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
