# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollment < Increase::BaseModel
      # The identifier of this enrollment at IntraFi.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier of the Increase Account being swept into the network.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the enrollment was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # The identifier of the account in IntraFi's system. This identifier will be
      #   printed on any IntraFi statements or documents.
      sig { returns(String) }
      def intrafi_id
      end

      sig { params(_: String).returns(String) }
      def intrafi_id=(_)
      end

      # The status of the account in the network. An account takes about one business
      #   day to go from `pending_enrolling` to `enrolled`.
      sig { returns(Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol)
          .returns(Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `intrafi_account_enrollment`.
      sig { returns(Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol)
          .returns(Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # IntraFi is a
      #   [network of financial institutions](https://www.intrafi.com/network-banks) that
      #   allows Increase users to sweep funds to multiple banks, in addition to
      #   Increase's main bank partners. This enables accounts to become eligible for
      #   additional Federal Deposit Insurance Corporation (FDIC) insurance. An IntraFi
      #   Account Enrollment object represents the status of an account in the network.
      #   Sweeping an account to IntraFi doesn't affect funds availability.
      sig do
        params(
          id: String,
          account_id: String,
          created_at: Time,
          idempotency_key: T.nilable(String),
          intrafi_id: String,
          status: Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol,
          type: Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, created_at:, idempotency_key:, intrafi_id:, status:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              created_at: Time,
              idempotency_key: T.nilable(String),
              intrafi_id: String,
              status: Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol,
              type: Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The status of the account in the network. An account takes about one business
      #   day to go from `pending_enrolling` to `enrolled`.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiAccountEnrollment::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol) }

        # The account is being added to the IntraFi network.
        PENDING_ENROLLING =
          T.let(:pending_enrolling, Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol)

        # The account has been enrolled with IntraFi.
        ENROLLED = T.let(:enrolled, Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol)

        # The account is being unenrolled from IntraFi's deposit sweep.
        PENDING_UNENROLLING =
          T.let(:pending_unenrolling, Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol)

        # The account was once enrolled, but is no longer enrolled at IntraFi.
        UNENROLLED = T.let(:unenrolled, Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol)

        # Something unexpected happened with this account. Contact Increase support.
        REQUIRES_ATTENTION =
          T.let(:requires_attention, Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `intrafi_account_enrollment`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiAccountEnrollment::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol) }

        INTRAFI_ACCOUNT_ENROLLMENT =
          T.let(:intrafi_account_enrollment, Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
