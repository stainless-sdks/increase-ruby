# typed: strong

module Increase
  module Models
    class SupplementalDocumentListParams < Increase::BaseModel
      extend Increase::Type::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier of the Entity to list supplemental documents for.
      sig { returns(String) }
      attr_accessor :entity_id

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          entity_id: String,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(entity_id:, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              entity_id: String,
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
