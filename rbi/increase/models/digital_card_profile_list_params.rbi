# typed: strong

module Increase
  module Models
    class DigitalCardProfileListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Filter records to the one with the specified `idempotency_key` you chose for
      # that object. This value is unique across Increase and is used to ensure that a
      # request is only processed once. Learn more about
      # [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        returns(
          T.nilable(Increase::Models::DigitalCardProfileListParams::Status)
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            T.any(
              Increase::Models::DigitalCardProfileListParams::Status,
              Increase::Internal::AnyHash
            )
        ).void
      end
      attr_writer :status

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status:
            T.any(
              Increase::Models::DigitalCardProfileListParams::Status,
              Increase::Internal::AnyHash
            ),
          request_options:
            T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Return the page of entries after this one.
        cursor: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
        # that object. This value is unique across Increase and is used to ensure that a
        # request is only processed once. Learn more about
        # [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        # objects.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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

      class Status < Increase::Internal::Type::BaseModel
        # Filter Digital Card Profiles for those with the specified digital wallet status
        # or statuses. For GET requests, this should be encoded as a comma-delimited
        # string, such as `?in=one,two,three`.
        sig do
          returns(
            T.nilable(
              T::Array[
                Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol
              ]
            )
          )
        end
        attr_reader :in_

        sig do
          params(
            in_:
              T::Array[
                Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol
              ]
          ).void
        end
        attr_writer :in_

        sig do
          params(
            in_:
              T::Array[
                Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter Digital Card Profiles for those with the specified digital wallet status
          # or statuses. For GET requests, this should be encoded as a comma-delimited
          # string, such as `?in=one,two,three`.
          in_: nil
        )
        end

        sig do
          override.returns(
            {
              in_:
                T::Array[
                  Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol
                ]
            }
          )
        end
        def to_hash
        end

        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Increase::Models::DigitalCardProfileListParams::Status::In
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # The Card Profile is awaiting review from Increase and/or processing by card networks.
          PENDING =
            T.let(
              :pending,
              Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol
            )

          # There is an issue with the Card Profile preventing it from use.
          REJECTED =
            T.let(
              :rejected,
              Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol
            )

          # The Card Profile can be assigned to Cards.
          ACTIVE =
            T.let(
              :active,
              Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol
            )

          # The Card Profile is no longer in use.
          ARCHIVED =
            T.let(
              :archived,
              Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
