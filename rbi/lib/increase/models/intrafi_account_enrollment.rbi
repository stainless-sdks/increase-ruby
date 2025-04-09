# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollment < Increase::Internal::Type::BaseModel
      # #/components/schemas/intrafi_account_enrollment/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/intrafi_account_enrollment/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/intrafi_account_enrollment/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/intrafi_account_enrollment/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/intrafi_account_enrollment/properties/intrafi_id
      sig { returns(String) }
      attr_accessor :intrafi_id

      # #/components/schemas/intrafi_account_enrollment/properties/status
      sig { returns(Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/intrafi_account_enrollment/properties/type
      sig { returns(Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/intrafi_account_enrollment
      sig do
        params(
          id: String,
          account_id: String,
          created_at: Time,
          idempotency_key: T.nilable(String),
          intrafi_id: String,
          status: Increase::Models::IntrafiAccountEnrollment::Status::OrSymbol,
          type: Increase::Models::IntrafiAccountEnrollment::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, created_at:, idempotency_key:, intrafi_id:, status:, type:); end

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
      def to_hash; end

      # #/components/schemas/intrafi_account_enrollment/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiAccountEnrollment::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol) }

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

        sig { override.returns(T::Array[Increase::Models::IntrafiAccountEnrollment::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/intrafi_account_enrollment/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiAccountEnrollment::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol) }

        INTRAFI_ACCOUNT_ENROLLMENT =
          T.let(:intrafi_account_enrollment, Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::IntrafiAccountEnrollment::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
