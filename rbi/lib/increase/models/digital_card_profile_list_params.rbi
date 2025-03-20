# typed: strong

module Increase
  module Models
    class DigitalCardProfileListParams < Increase::BaseModel
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

      sig { returns(T.nilable(Increase::Models::DigitalCardProfileListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::DigitalCardProfileListParams::Status)
          .returns(Increase::Models::DigitalCardProfileListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::DigitalCardProfileListParams::Status,
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
              status: Increase::Models::DigitalCardProfileListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Status < Increase::BaseModel
        # Filter Digital Card Profiles for those with the specified digital wallet status
        #   or statuses. For GET requests, this should be encoded as a comma-delimited
        #   string, such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalCardProfileListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol) }

          # The Card Profile is awaiting review from Increase and/or processing by card networks.
          PENDING = T.let(:pending, Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol)

          # There is an issue with the Card Profile preventing it from use.
          REJECTED = T.let(:rejected, Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol)

          # The Card Profile can be assigned to Cards.
          ACTIVE = T.let(:active, Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol)

          # The Card Profile is no longer in use.
          ARCHIVED = T.let(:archived, Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol)
        end
      end
    end
  end
end
