# typed: strong

module Increase
  module Models
    class EntityConfirmParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Time)) }
      attr_reader :confirmed_at

      sig { params(confirmed_at: Time).void }
      attr_writer :confirmed_at

      sig do
        params(
          confirmed_at: Time,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(confirmed_at: nil, request_options: {})
      end

      sig { override.returns({confirmed_at: Time, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
