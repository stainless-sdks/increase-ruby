# typed: strong

module Increase
  module Models
    class IntrafiExclusion < Increase::Internal::Type::BaseModel
      # #/components/schemas/intrafi_exclusion/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/intrafi_exclusion/properties/bank_name
      sig { returns(String) }
      attr_accessor :bank_name

      # #/components/schemas/intrafi_exclusion/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/intrafi_exclusion/properties/entity_id
      sig { returns(String) }
      attr_accessor :entity_id

      # #/components/schemas/intrafi_exclusion/properties/excluded_at
      sig { returns(T.nilable(Time)) }
      attr_accessor :excluded_at

      # #/components/schemas/intrafi_exclusion/properties/fdic_certificate_number
      sig { returns(T.nilable(String)) }
      attr_accessor :fdic_certificate_number

      # #/components/schemas/intrafi_exclusion/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/intrafi_exclusion/properties/status
      sig { returns(Increase::Models::IntrafiExclusion::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/intrafi_exclusion/properties/submitted_at
      sig { returns(T.nilable(Time)) }
      attr_accessor :submitted_at

      # #/components/schemas/intrafi_exclusion/properties/type
      sig { returns(Increase::Models::IntrafiExclusion::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/intrafi_exclusion
      sig do
        params(
          id: String,
          bank_name: String,
          created_at: Time,
          entity_id: String,
          excluded_at: T.nilable(Time),
          fdic_certificate_number: T.nilable(String),
          idempotency_key: T.nilable(String),
          status: Increase::Models::IntrafiExclusion::Status::OrSymbol,
          submitted_at: T.nilable(Time),
          type: Increase::Models::IntrafiExclusion::Type::OrSymbol
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
      ); end
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
      def to_hash; end

      # #/components/schemas/intrafi_exclusion/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiExclusion::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::IntrafiExclusion::Status::TaggedSymbol) }

        # The exclusion is being added to the IntraFi network.
        PENDING = T.let(:pending, Increase::Models::IntrafiExclusion::Status::TaggedSymbol)

        # The exclusion has been added to the IntraFi network.
        COMPLETED = T.let(:completed, Increase::Models::IntrafiExclusion::Status::TaggedSymbol)

        # The exclusion has been removed from the IntraFi network.
        ARCHIVED = T.let(:archived, Increase::Models::IntrafiExclusion::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::IntrafiExclusion::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/intrafi_exclusion/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiExclusion::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::IntrafiExclusion::Type::TaggedSymbol) }

        INTRAFI_EXCLUSION = T.let(:intrafi_exclusion, Increase::Models::IntrafiExclusion::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::IntrafiExclusion::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
