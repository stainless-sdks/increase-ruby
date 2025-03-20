# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollmentListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Filter IntraFi Account Enrollments to the one belonging to an account.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

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

      sig { returns(T.nilable(Increase::Models::IntrafiAccountEnrollmentListParams::Status)) }
      def status
      end

      sig do
        params(_: T.any(Increase::Models::IntrafiAccountEnrollmentListParams::Status, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::IntrafiAccountEnrollmentListParams::Status, Increase::Util::AnyHash))
      end
      def status=(_)
      end

      sig do
        params(
          account_id: String,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::IntrafiAccountEnrollmentListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(account_id: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              status: Increase::Models::IntrafiAccountEnrollmentListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Status < Increase::BaseModel
        # Filter IntraFi Account Enrollments for those with the specified status or
        #   statuses. For GET requests, this should be encoded as a comma-delimited string,
        #   such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig do
          override
            .returns({in_: T::Array[Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::OrSymbol]})
        end
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::TaggedSymbol) }

          # The account is being added to the IntraFi network.
          PENDING_ENROLLING =
            T.let(:pending_enrolling, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::TaggedSymbol)

          # The account has been enrolled with IntraFi.
          ENROLLED =
            T.let(:enrolled, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::TaggedSymbol)

          # The account is being unenrolled from IntraFi's deposit sweep.
          PENDING_UNENROLLING =
            T.let(
              :pending_unenrolling,
              Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::TaggedSymbol
            )

          # The account was once enrolled, but is no longer enrolled at IntraFi.
          UNENROLLED =
            T.let(:unenrolled, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::TaggedSymbol)

          # Something unexpected happened with this account. Contact Increase support.
          REQUIRES_ATTENTION =
            T.let(:requires_attention, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::IntrafiAccountEnrollmentListParams::Status::In::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
