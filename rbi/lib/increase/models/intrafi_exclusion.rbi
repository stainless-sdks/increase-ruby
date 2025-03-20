# typed: strong

module Increase
  module Models
    class IntrafiExclusion < Increase::BaseModel
      # The identifier of this exclusion request.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The name of the excluded institution.
      sig { returns(String) }
      def bank_name
      end

      sig { params(_: String).returns(String) }
      def bank_name=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the exclusion was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The entity for which this institution is excluded.
      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      # When this was exclusion was confirmed by IntraFi.
      sig { returns(T.nilable(Time)) }
      def excluded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def excluded_at=(_)
      end

      # The Federal Deposit Insurance Corporation's certificate number for the
      #   institution.
      sig { returns(T.nilable(String)) }
      def fdic_certificate_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fdic_certificate_number=(_)
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

      # The status of the exclusion request.
      sig { returns(Increase::Models::IntrafiExclusion::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::IntrafiExclusion::Status::TaggedSymbol)
          .returns(Increase::Models::IntrafiExclusion::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # When this was exclusion was submitted to IntraFi by Increase.
      sig { returns(T.nilable(Time)) }
      def submitted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def submitted_at=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `intrafi_exclusion`.
      sig { returns(Increase::Models::IntrafiExclusion::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::IntrafiExclusion::Type::TaggedSymbol)
          .returns(Increase::Models::IntrafiExclusion::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Certain institutions may be excluded per Entity when sweeping funds into the
      #   IntraFi network. This is useful when an Entity already has deposits at a
      #   particular bank, and does not want to sweep additional funds to it. It may take
      #   5 business days for an exclusion to be processed.
      sig do
        params(
          id: String,
          bank_name: String,
          created_at: Time,
          entity_id: String,
          excluded_at: T.nilable(Time),
          fdic_certificate_number: T.nilable(String),
          idempotency_key: T.nilable(String),
          status: Increase::Models::IntrafiExclusion::Status::TaggedSymbol,
          submitted_at: T.nilable(Time),
          type: Increase::Models::IntrafiExclusion::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        bank_name:,
        created_at:,
        entity_id:,
        excluded_at:,
        fdic_certificate_number:,
        idempotency_key:,
        status:,
        submitted_at:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              bank_name: String,
              created_at: Time,
              entity_id: String,
              excluded_at: T.nilable(Time),
              fdic_certificate_number: T.nilable(String),
              idempotency_key: T.nilable(String),
              status: Increase::Models::IntrafiExclusion::Status::TaggedSymbol,
              submitted_at: T.nilable(Time),
              type: Increase::Models::IntrafiExclusion::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The status of the exclusion request.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiExclusion::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::IntrafiExclusion::Status::TaggedSymbol) }

        # The exclusion is being added to the IntraFi network.
        PENDING = T.let(:pending, Increase::Models::IntrafiExclusion::Status::TaggedSymbol)

        # The exclusion has been added to the IntraFi network.
        COMPLETED = T.let(:completed, Increase::Models::IntrafiExclusion::Status::TaggedSymbol)

        # The exclusion has been removed from the IntraFi network.
        ARCHIVED = T.let(:archived, Increase::Models::IntrafiExclusion::Status::TaggedSymbol)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `intrafi_exclusion`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiExclusion::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::IntrafiExclusion::Type::TaggedSymbol) }

        INTRAFI_EXCLUSION = T.let(:intrafi_exclusion, Increase::Models::IntrafiExclusion::Type::TaggedSymbol)
      end
    end
  end
end
