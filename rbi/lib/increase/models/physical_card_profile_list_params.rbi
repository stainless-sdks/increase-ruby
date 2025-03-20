# typed: strong

module Increase
  module Models
    class PhysicalCardProfileListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      # Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(Increase::Models::PhysicalCardProfileListParams::Status)) }
      def status
      end

      sig do
        params(_: T.any(Increase::Models::PhysicalCardProfileListParams::Status, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::PhysicalCardProfileListParams::Status, Increase::Util::AnyHash))
      end
      def status=(_)
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::PhysicalCardProfileListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              status: Increase::Models::PhysicalCardProfileListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Status < Increase::BaseModel
        # Filter Physical Card Profiles for those with the specified statuses. For GET
        #   requests, this should be encoded as a comma-delimited string, such as
        #   `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::PhysicalCardProfileListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::PhysicalCardProfileListParams::Status::In::TaggedSymbol) }

          # The Card Profile has not yet been processed by Increase.
          PENDING_CREATING =
            T.let(:pending_creating, Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol)

          # The card profile is awaiting review by Increase.
          PENDING_REVIEWING =
            T.let(:pending_reviewing, Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol)

          # There is an issue with the Physical Card Profile preventing it from use.
          REJECTED = T.let(:rejected, Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol)

          # The card profile is awaiting submission to the fulfillment provider.
          PENDING_SUBMITTING =
            T.let(:pending_submitting, Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol)

          # The Physical Card Profile has been submitted to the fulfillment provider and is ready to use.
          ACTIVE = T.let(:active, Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol)

          # The Physical Card Profile has been archived.
          ARCHIVED = T.let(:archived, Increase::Models::PhysicalCardProfileListParams::Status::In::OrSymbol)
        end
      end
    end
  end
end
