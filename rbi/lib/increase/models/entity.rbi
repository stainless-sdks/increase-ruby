# typed: strong

module Increase
  module Models
    class Entity < Increase::Internal::Type::BaseModel
      # #/components/schemas/entity/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/entity/properties/corporation
      sig { returns(T.nilable(Increase::Models::Entity::Corporation)) }
      attr_reader :corporation

      sig do
        params(corporation: T.nilable(T.any(Increase::Models::Entity::Corporation, Increase::Internal::AnyHash)))
          .void
      end
      attr_writer :corporation

      # #/components/schemas/entity/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/entity/properties/description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # #/components/schemas/entity/properties/details_confirmed_at
      sig { returns(T.nilable(Time)) }
      attr_accessor :details_confirmed_at

      # #/components/schemas/entity/properties/government_authority
      sig { returns(T.nilable(Increase::Models::Entity::GovernmentAuthority)) }
      attr_reader :government_authority

      sig do
        params(
          government_authority: T.nilable(T.any(Increase::Models::Entity::GovernmentAuthority, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :government_authority

      # #/components/schemas/entity/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/entity/properties/joint
      sig { returns(T.nilable(Increase::Models::Entity::Joint)) }
      attr_reader :joint

      sig { params(joint: T.nilable(T.any(Increase::Models::Entity::Joint, Increase::Internal::AnyHash))).void }
      attr_writer :joint

      # #/components/schemas/entity/properties/natural_person
      sig { returns(T.nilable(Increase::Models::Entity::NaturalPerson)) }
      attr_reader :natural_person

      sig do
        params(
          natural_person: T.nilable(T.any(Increase::Models::Entity::NaturalPerson, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :natural_person

      # #/components/schemas/entity/properties/status
      sig { returns(Increase::Models::Entity::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/entity/properties/structure
      sig { returns(Increase::Models::Entity::Structure::TaggedSymbol) }
      attr_accessor :structure

      # #/components/schemas/entity/properties/supplemental_documents
      sig { returns(T::Array[Increase::Models::EntitySupplementalDocument]) }
      attr_accessor :supplemental_documents

      # #/components/schemas/entity/properties/third_party_verification
      sig { returns(T.nilable(Increase::Models::Entity::ThirdPartyVerification)) }
      attr_reader :third_party_verification

      sig do
        params(
          third_party_verification: T.nilable(T.any(Increase::Models::Entity::ThirdPartyVerification, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :third_party_verification

      # #/components/schemas/entity/properties/trust
      sig { returns(T.nilable(Increase::Models::Entity::Trust)) }
      attr_reader :trust

      sig { params(trust: T.nilable(T.any(Increase::Models::Entity::Trust, Increase::Internal::AnyHash))).void }
      attr_writer :trust

      # #/components/schemas/entity/properties/type
      sig { returns(Increase::Models::Entity::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/entity
      sig do
        params(
          id: String,
          corporation: T.nilable(T.any(Increase::Models::Entity::Corporation, Increase::Internal::AnyHash)),
          created_at: Time,
          description: T.nilable(String),
          details_confirmed_at: T.nilable(Time),
          government_authority: T.nilable(T.any(Increase::Models::Entity::GovernmentAuthority, Increase::Internal::AnyHash)),
          idempotency_key: T.nilable(String),
          joint: T.nilable(T.any(Increase::Models::Entity::Joint, Increase::Internal::AnyHash)),
          natural_person: T.nilable(T.any(Increase::Models::Entity::NaturalPerson, Increase::Internal::AnyHash)),
          status: Increase::Models::Entity::Status::OrSymbol,
          structure: Increase::Models::Entity::Structure::OrSymbol,
          supplemental_documents: T::Array[T.any(Increase::Models::EntitySupplementalDocument, Increase::Internal::AnyHash)],
          third_party_verification: T.nilable(T.any(Increase::Models::Entity::ThirdPartyVerification, Increase::Internal::AnyHash)),
          trust: T.nilable(T.any(Increase::Models::Entity::Trust, Increase::Internal::AnyHash)),
          type: Increase::Models::Entity::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        corporation:,
        created_at:,
        description:,
        details_confirmed_at:,
        government_authority:,
        idempotency_key:,
        joint:,
        natural_person:,
        status:,
        structure:,
        supplemental_documents:,
        third_party_verification:,
        trust:,
        type:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              corporation: T.nilable(Increase::Models::Entity::Corporation),
              created_at: Time,
              description: T.nilable(String),
              details_confirmed_at: T.nilable(Time),
              government_authority: T.nilable(Increase::Models::Entity::GovernmentAuthority),
              idempotency_key: T.nilable(String),
              joint: T.nilable(Increase::Models::Entity::Joint),
              natural_person: T.nilable(Increase::Models::Entity::NaturalPerson),
              status: Increase::Models::Entity::Status::TaggedSymbol,
              structure: Increase::Models::Entity::Structure::TaggedSymbol,
              supplemental_documents: T::Array[Increase::Models::EntitySupplementalDocument],
              third_party_verification: T.nilable(Increase::Models::Entity::ThirdPartyVerification),
              trust: T.nilable(Increase::Models::Entity::Trust),
              type: Increase::Models::Entity::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Corporation < Increase::Internal::Type::BaseModel
        # #/components/schemas/entity/properties/corporation/anyOf/0/properties/address
        sig { returns(Increase::Models::Entity::Corporation::Address) }
        attr_reader :address

        sig { params(address: T.any(Increase::Models::Entity::Corporation::Address, Increase::Internal::AnyHash)).void }
        attr_writer :address

        # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners
        sig { returns(T::Array[Increase::Models::Entity::Corporation::BeneficialOwner]) }
        attr_accessor :beneficial_owners

        # #/components/schemas/entity/properties/corporation/anyOf/0/properties/incorporation_state
        sig { returns(T.nilable(String)) }
        attr_accessor :incorporation_state

        # #/components/schemas/entity/properties/corporation/anyOf/0/properties/industry_code
        sig { returns(T.nilable(String)) }
        attr_accessor :industry_code

        # #/components/schemas/entity/properties/corporation/anyOf/0/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/entity/properties/corporation/anyOf/0/properties/tax_identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_identifier

        # #/components/schemas/entity/properties/corporation/anyOf/0/properties/website
        sig { returns(T.nilable(String)) }
        attr_accessor :website

        # #/components/schemas/entity/properties/corporation
        sig do
          params(
            address: T.any(Increase::Models::Entity::Corporation::Address, Increase::Internal::AnyHash),
            beneficial_owners: T::Array[T.any(Increase::Models::Entity::Corporation::BeneficialOwner, Increase::Internal::AnyHash)],
            incorporation_state: T.nilable(String),
            industry_code: T.nilable(String),
            name: String,
            tax_identifier: T.nilable(String),
            website: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          address:,
          beneficial_owners:,
          incorporation_state:,
          industry_code:,
          name:,
          tax_identifier:,
          website:
        )
        end

        sig do
          override
            .returns(
              {
                address: Increase::Models::Entity::Corporation::Address,
                beneficial_owners: T::Array[Increase::Models::Entity::Corporation::BeneficialOwner],
                incorporation_state: T.nilable(String),
                industry_code: T.nilable(String),
                name: String,
                tax_identifier: T.nilable(String),
                website: T.nilable(String)
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/zip
          sig { returns(String) }
          attr_accessor :zip

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/address
          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, state:, zip:); end

          sig do
            override.returns(
              {
                city: String,
                line1: String,
                line2: T.nilable(String),
                state: String,
                zip: String
              }
            )
          end
          def to_hash; end
        end

        class BeneficialOwner < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/beneficial_owner_id
          sig { returns(String) }
          attr_accessor :beneficial_owner_id

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/company_title
          sig { returns(T.nilable(String)) }
          attr_accessor :company_title

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual
          sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual) }
          attr_reader :individual

          sig do
            params(
              individual: T.any(Increase::Models::Entity::Corporation::BeneficialOwner::Individual, Increase::Internal::AnyHash)
            )
              .void
          end
          attr_writer :individual

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/prong
          sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Prong::TaggedSymbol) }
          attr_accessor :prong

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items
          sig do
            params(
              beneficial_owner_id: String,
              company_title: T.nilable(String),
              individual: T.any(Increase::Models::Entity::Corporation::BeneficialOwner::Individual, Increase::Internal::AnyHash),
              prong: Increase::Models::Entity::Corporation::BeneficialOwner::Prong::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(beneficial_owner_id:, company_title:, individual:, prong:); end

          sig do
            override
              .returns(
                {
                  beneficial_owner_id: String,
                  company_title: T.nilable(String),
                  individual: Increase::Models::Entity::Corporation::BeneficialOwner::Individual,
                  prong: Increase::Models::Entity::Corporation::BeneficialOwner::Prong::TaggedSymbol
                }
              )
          end
          def to_hash; end

          class Individual < Increase::Internal::Type::BaseModel
            # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address
            sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address) }
            attr_reader :address

            sig do
              params(
                address: T.any(
                  Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :address

            # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/date_of_birth
            sig { returns(Date) }
            attr_accessor :date_of_birth

            # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification
            sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification) }
            attr_reader :identification

            sig do
              params(
                identification: T.any(
                  Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :identification

            # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/name
            sig { returns(String) }
            attr_accessor :name

            # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual
            sig do
              params(
                address: T.any(
                  Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address,
                  Increase::Internal::AnyHash
                ),
                date_of_birth: Date,
                identification: T.any(
                  Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification,
                  Increase::Internal::AnyHash
                ),
                name: String
              )
                .returns(T.attached_class)
            end
            def self.new(address:, date_of_birth:, identification:, name:); end

            sig do
              override
                .returns(
                  {
                    address: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address,
                    date_of_birth: Date,
                    identification: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification,
                    name: String
                  }
                )
            end
            def to_hash; end

            class Address < Increase::Internal::Type::BaseModel
              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/city
              sig { returns(T.nilable(String)) }
              attr_accessor :city

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/country
              sig { returns(String) }
              attr_accessor :country

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/line1
              sig { returns(String) }
              attr_accessor :line1

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/line2
              sig { returns(T.nilable(String)) }
              attr_accessor :line2

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/state
              sig { returns(T.nilable(String)) }
              attr_accessor :state

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/zip
              sig { returns(T.nilable(String)) }
              attr_accessor :zip

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address
              sig do
                params(
                  city: T.nilable(String),
                  country: String,
                  line1: String,
                  line2: T.nilable(String),
                  state: T.nilable(String),
                  zip: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(city:, country:, line1:, line2:, state:, zip:); end

              sig do
                override
                  .returns(
                    {
                      city: T.nilable(String),
                      country: String,
                      line1: String,
                      line2: T.nilable(String),
                      state: T.nilable(String),
                      zip: T.nilable(String)
                    }
                  )
              end
              def to_hash; end
            end

            class Identification < Increase::Internal::Type::BaseModel
              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification/properties/method
              sig do
                returns(
                  Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                )
              end
              attr_accessor :method_

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification/properties/number_last4
              sig { returns(String) }
              attr_accessor :number_last4

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification
              sig do
                params(
                  method_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol,
                  number_last4: String
                )
                  .returns(T.attached_class)
              end
              def self.new(method_:, number_last4:); end

              sig do
                override
                  .returns(
                    {
                      method_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol,
                      number_last4: String
                    }
                  )
              end
              def to_hash; end

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification/properties/method
              module Method
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                    )
                  end

                # A social security number.
                SOCIAL_SECURITY_NUMBER =
                  T.let(
                    :social_security_number,
                    Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                # An individual taxpayer identification number (ITIN).
                INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                  T.let(
                    :individual_taxpayer_identification_number,
                    Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                # A passport number.
                PASSPORT =
                  T.let(
                    :passport,
                    Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                # A driver's license number.
                DRIVERS_LICENSE =
                  T.let(
                    :drivers_license,
                    Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                # Another identifying document.
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol]
                    )
                end
                def self.values; end
              end
            end
          end

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/prong
          module Prong
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Prong) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::Entity::Corporation::BeneficialOwner::Prong::TaggedSymbol) }

            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP =
              T.let(:ownership, Increase::Models::Entity::Corporation::BeneficialOwner::Prong::TaggedSymbol)

            # A person who manages, directs, or has significant control of the entity.
            CONTROL = T.let(:control, Increase::Models::Entity::Corporation::BeneficialOwner::Prong::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::Entity::Corporation::BeneficialOwner::Prong::TaggedSymbol]) }
            def self.values; end
          end
        end
      end

      class GovernmentAuthority < Increase::Internal::Type::BaseModel
        # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address
        sig { returns(Increase::Models::Entity::GovernmentAuthority::Address) }
        attr_reader :address

        sig do
          params(
            address: T.any(Increase::Models::Entity::GovernmentAuthority::Address, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :address

        # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/authorized_persons
        sig { returns(T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson]) }
        attr_accessor :authorized_persons

        # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/category
        sig { returns(Increase::Models::Entity::GovernmentAuthority::Category::TaggedSymbol) }
        attr_accessor :category

        # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/tax_identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_identifier

        # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/website
        sig { returns(T.nilable(String)) }
        attr_accessor :website

        # #/components/schemas/entity/properties/government_authority
        sig do
          params(
            address: T.any(Increase::Models::Entity::GovernmentAuthority::Address, Increase::Internal::AnyHash),
            authorized_persons: T::Array[T.any(Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson, Increase::Internal::AnyHash)],
            category: Increase::Models::Entity::GovernmentAuthority::Category::OrSymbol,
            name: String,
            tax_identifier: T.nilable(String),
            website: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(address:, authorized_persons:, category:, name:, tax_identifier:, website:); end

        sig do
          override
            .returns(
              {
                address: Increase::Models::Entity::GovernmentAuthority::Address,
                authorized_persons: T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson],
                category: Increase::Models::Entity::GovernmentAuthority::Category::TaggedSymbol,
                name: String,
                tax_identifier: T.nilable(String),
                website: T.nilable(String)
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/zip
          sig { returns(String) }
          attr_accessor :zip

          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address
          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, state:, zip:); end

          sig do
            override.returns(
              {
                city: String,
                line1: String,
                line2: T.nilable(String),
                state: String,
                zip: String
              }
            )
          end
          def to_hash; end
        end

        class AuthorizedPerson < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/authorized_persons/items/properties/authorized_person_id
          sig { returns(String) }
          attr_accessor :authorized_person_id

          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/authorized_persons/items/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/authorized_persons/items
          sig { params(authorized_person_id: String, name: String).returns(T.attached_class) }
          def self.new(authorized_person_id:, name:); end

          sig { override.returns({authorized_person_id: String, name: String}) }
          def to_hash; end
        end

        # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Entity::GovernmentAuthority::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::Entity::GovernmentAuthority::Category::TaggedSymbol) }

          # The Public Entity is a Municipality.
          MUNICIPALITY =
            T.let(:municipality, Increase::Models::Entity::GovernmentAuthority::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::Entity::GovernmentAuthority::Category::TaggedSymbol]) }
          def self.values; end
        end
      end

      class Joint < Increase::Internal::Type::BaseModel
        # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals
        sig { returns(T::Array[Increase::Models::Entity::Joint::Individual]) }
        attr_accessor :individuals

        # #/components/schemas/entity/properties/joint/anyOf/0/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/entity/properties/joint
        sig do
          params(
            individuals: T::Array[T.any(Increase::Models::Entity::Joint::Individual, Increase::Internal::AnyHash)],
            name: String
          )
            .returns(T.attached_class)
        end
        def self.new(individuals:, name:); end

        sig { override.returns({individuals: T::Array[Increase::Models::Entity::Joint::Individual], name: String}) }
        def to_hash; end

        class Individual < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address
          sig { returns(Increase::Models::Entity::Joint::Individual::Address) }
          attr_reader :address

          sig do
            params(address: T.any(Increase::Models::Entity::Joint::Individual::Address, Increase::Internal::AnyHash))
              .void
          end
          attr_writer :address

          # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/date_of_birth
          sig { returns(Date) }
          attr_accessor :date_of_birth

          # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification
          sig { returns(Increase::Models::Entity::Joint::Individual::Identification) }
          attr_reader :identification

          sig do
            params(
              identification: T.any(Increase::Models::Entity::Joint::Individual::Identification, Increase::Internal::AnyHash)
            )
              .void
          end
          attr_writer :identification

          # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items
          sig do
            params(
              address: T.any(Increase::Models::Entity::Joint::Individual::Address, Increase::Internal::AnyHash),
              date_of_birth: Date,
              identification: T.any(Increase::Models::Entity::Joint::Individual::Identification, Increase::Internal::AnyHash),
              name: String
            )
              .returns(T.attached_class)
          end
          def self.new(address:, date_of_birth:, identification:, name:); end

          sig do
            override
              .returns(
                {
                  address: Increase::Models::Entity::Joint::Individual::Address,
                  date_of_birth: Date,
                  identification: Increase::Models::Entity::Joint::Individual::Identification,
                  name: String
                }
              )
          end
          def to_hash; end

          class Address < Increase::Internal::Type::BaseModel
            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/city
            sig { returns(String) }
            attr_accessor :city

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/line1
            sig { returns(String) }
            attr_accessor :line1

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/line2
            sig { returns(T.nilable(String)) }
            attr_accessor :line2

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/state
            sig { returns(String) }
            attr_accessor :state

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/zip
            sig { returns(String) }
            attr_accessor :zip

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address
            sig do
              params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
                .returns(T.attached_class)
            end
            def self.new(city:, line1:, line2:, state:, zip:); end

            sig do
              override.returns(
                {
                  city: String,
                  line1: String,
                  line2: T.nilable(String),
                  state: String,
                  zip: String
                }
              )
            end
            def to_hash; end
          end

          class Identification < Increase::Internal::Type::BaseModel
            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification/properties/method
            sig { returns(Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol) }
            attr_accessor :method_

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification/properties/number_last4
            sig { returns(String) }
            attr_accessor :number_last4

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification
            sig do
              params(
                method_: Increase::Models::Entity::Joint::Individual::Identification::Method::OrSymbol,
                number_last4: String
              )
                .returns(T.attached_class)
            end
            def self.new(method_:, number_last4:); end

            sig do
              override
                .returns(
                  {
                    method_: Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol,
                    number_last4: String
                  }
                )
            end
            def to_hash; end

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification/properties/method
            module Method
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::Entity::Joint::Individual::Identification::Method) }
              OrSymbol =
                T.type_alias { T.any(Symbol, String, Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol) }

              # A social security number.
              SOCIAL_SECURITY_NUMBER =
                T.let(
                  :social_security_number,
                  Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol
                )

              # An individual taxpayer identification number (ITIN).
              INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                T.let(
                  :individual_taxpayer_identification_number,
                  Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol
                )

              # A passport number.
              PASSPORT =
                T.let(:passport, Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol)

              # A driver's license number.
              DRIVERS_LICENSE =
                T.let(:drivers_license, Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol)

              # Another identifying document.
              OTHER = T.let(:other, Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Increase::Models::Entity::Joint::Individual::Identification::Method::TaggedSymbol])
              end
              def self.values; end
            end
          end
        end
      end

      class NaturalPerson < Increase::Internal::Type::BaseModel
        # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address
        sig { returns(Increase::Models::Entity::NaturalPerson::Address) }
        attr_reader :address

        sig { params(address: T.any(Increase::Models::Entity::NaturalPerson::Address, Increase::Internal::AnyHash)).void }
        attr_writer :address

        # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/date_of_birth
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification
        sig { returns(Increase::Models::Entity::NaturalPerson::Identification) }
        attr_reader :identification

        sig do
          params(
            identification: T.any(Increase::Models::Entity::NaturalPerson::Identification, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :identification

        # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/entity/properties/natural_person
        sig do
          params(
            address: T.any(Increase::Models::Entity::NaturalPerson::Address, Increase::Internal::AnyHash),
            date_of_birth: Date,
            identification: T.any(Increase::Models::Entity::NaturalPerson::Identification, Increase::Internal::AnyHash),
            name: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, date_of_birth:, identification:, name:); end

        sig do
          override
            .returns(
              {
                address: Increase::Models::Entity::NaturalPerson::Address,
                date_of_birth: Date,
                identification: Increase::Models::Entity::NaturalPerson::Identification,
                name: String
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/zip
          sig { returns(String) }
          attr_accessor :zip

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address
          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, state:, zip:); end

          sig do
            override.returns(
              {
                city: String,
                line1: String,
                line2: T.nilable(String),
                state: String,
                zip: String
              }
            )
          end
          def to_hash; end
        end

        class Identification < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification/properties/method
          sig { returns(Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol) }
          attr_accessor :method_

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification/properties/number_last4
          sig { returns(String) }
          attr_accessor :number_last4

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification
          sig do
            params(
              method_: Increase::Models::Entity::NaturalPerson::Identification::Method::OrSymbol,
              number_last4: String
            )
              .returns(T.attached_class)
          end
          def self.new(method_:, number_last4:); end

          sig do
            override
              .returns(
                {method_: Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol, number_last4: String}
              )
          end
          def to_hash; end

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification/properties/method
          module Method
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Entity::NaturalPerson::Identification::Method) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol) }

            # A social security number.
            SOCIAL_SECURITY_NUMBER =
              T.let(
                :social_security_number,
                Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol
              )

            # An individual taxpayer identification number (ITIN).
            INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
              T.let(
                :individual_taxpayer_identification_number,
                Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol
              )

            # A passport number.
            PASSPORT =
              T.let(:passport, Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol)

            # A driver's license number.
            DRIVERS_LICENSE =
              T.let(:drivers_license, Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol)

            # Another identifying document.
            OTHER = T.let(:other, Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::Entity::NaturalPerson::Identification::Method::TaggedSymbol]) }
            def self.values; end
          end
        end
      end

      # #/components/schemas/entity/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Entity::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Entity::Status::TaggedSymbol) }

        # The entity is active.
        ACTIVE = T.let(:active, Increase::Models::Entity::Status::TaggedSymbol)

        # The entity is archived, and can no longer be used to create accounts.
        ARCHIVED = T.let(:archived, Increase::Models::Entity::Status::TaggedSymbol)

        # The entity is temporarily disabled and cannot be used for financial activity.
        DISABLED = T.let(:disabled, Increase::Models::Entity::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Entity::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/entity/properties/structure
      module Structure
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Entity::Structure) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Entity::Structure::TaggedSymbol) }

        # A corporation.
        CORPORATION = T.let(:corporation, Increase::Models::Entity::Structure::TaggedSymbol)

        # An individual person.
        NATURAL_PERSON = T.let(:natural_person, Increase::Models::Entity::Structure::TaggedSymbol)

        # Multiple individual people.
        JOINT = T.let(:joint, Increase::Models::Entity::Structure::TaggedSymbol)

        # A trust.
        TRUST = T.let(:trust, Increase::Models::Entity::Structure::TaggedSymbol)

        # A government authority.
        GOVERNMENT_AUTHORITY = T.let(:government_authority, Increase::Models::Entity::Structure::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Entity::Structure::TaggedSymbol]) }
        def self.values; end
      end

      class ThirdPartyVerification < Increase::Internal::Type::BaseModel
        # #/components/schemas/entity/properties/third_party_verification/anyOf/0/properties/reference
        sig { returns(String) }
        attr_accessor :reference

        # #/components/schemas/entity/properties/third_party_verification/anyOf/0/properties/vendor
        sig { returns(Increase::Models::Entity::ThirdPartyVerification::Vendor::TaggedSymbol) }
        attr_accessor :vendor

        # #/components/schemas/entity/properties/third_party_verification
        sig do
          params(reference: String, vendor: Increase::Models::Entity::ThirdPartyVerification::Vendor::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(reference:, vendor:); end

        sig do
          override
            .returns(
              {reference: String, vendor: Increase::Models::Entity::ThirdPartyVerification::Vendor::TaggedSymbol}
            )
        end
        def to_hash; end

        # #/components/schemas/entity/properties/third_party_verification/anyOf/0/properties/vendor
        module Vendor
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Entity::ThirdPartyVerification::Vendor) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::Entity::ThirdPartyVerification::Vendor::TaggedSymbol) }

          # Alloy. See https://alloy.com for more information.
          ALLOY = T.let(:alloy, Increase::Models::Entity::ThirdPartyVerification::Vendor::TaggedSymbol)

          # Middesk. See https://middesk.com for more information.
          MIDDESK = T.let(:middesk, Increase::Models::Entity::ThirdPartyVerification::Vendor::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::Entity::ThirdPartyVerification::Vendor::TaggedSymbol]) }
          def self.values; end
        end
      end

      class Trust < Increase::Internal::Type::BaseModel
        # #/components/schemas/entity/properties/trust/anyOf/0/properties/address
        sig { returns(Increase::Models::Entity::Trust::Address) }
        attr_reader :address

        sig { params(address: T.any(Increase::Models::Entity::Trust::Address, Increase::Internal::AnyHash)).void }
        attr_writer :address

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/category
        sig { returns(Increase::Models::Entity::Trust::Category::TaggedSymbol) }
        attr_accessor :category

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/formation_document_file_id
        sig { returns(T.nilable(String)) }
        attr_accessor :formation_document_file_id

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/formation_state
        sig { returns(T.nilable(String)) }
        attr_accessor :formation_state

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor
        sig { returns(T.nilable(Increase::Models::Entity::Trust::Grantor)) }
        attr_reader :grantor

        sig do
          params(grantor: T.nilable(T.any(Increase::Models::Entity::Trust::Grantor, Increase::Internal::AnyHash)))
            .void
        end
        attr_writer :grantor

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/tax_identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_identifier

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees
        sig { returns(T::Array[Increase::Models::Entity::Trust::Trustee]) }
        attr_accessor :trustees

        # #/components/schemas/entity/properties/trust
        sig do
          params(
            address: T.any(Increase::Models::Entity::Trust::Address, Increase::Internal::AnyHash),
            category: Increase::Models::Entity::Trust::Category::OrSymbol,
            formation_document_file_id: T.nilable(String),
            formation_state: T.nilable(String),
            grantor: T.nilable(T.any(Increase::Models::Entity::Trust::Grantor, Increase::Internal::AnyHash)),
            name: String,
            tax_identifier: T.nilable(String),
            trustees: T::Array[T.any(Increase::Models::Entity::Trust::Trustee, Increase::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(
          address:,
          category:,
          formation_document_file_id:,
          formation_state:,
          grantor:,
          name:,
          tax_identifier:,
          trustees:
        ); end
        sig do
          override
            .returns(
              {
                address: Increase::Models::Entity::Trust::Address,
                category: Increase::Models::Entity::Trust::Category::TaggedSymbol,
                formation_document_file_id: T.nilable(String),
                formation_state: T.nilable(String),
                grantor: T.nilable(Increase::Models::Entity::Trust::Grantor),
                name: String,
                tax_identifier: T.nilable(String),
                trustees: T::Array[Increase::Models::Entity::Trust::Trustee]
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/zip
          sig { returns(String) }
          attr_accessor :zip

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/address
          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, state:, zip:); end

          sig do
            override.returns(
              {
                city: String,
                line1: String,
                line2: T.nilable(String),
                state: String,
                zip: String
              }
            )
          end
          def to_hash; end
        end

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Entity::Trust::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::Entity::Trust::Category::TaggedSymbol) }

          # The trust is revocable by the grantor.
          REVOCABLE = T.let(:revocable, Increase::Models::Entity::Trust::Category::TaggedSymbol)

          # The trust cannot be revoked.
          IRREVOCABLE = T.let(:irrevocable, Increase::Models::Entity::Trust::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::Entity::Trust::Category::TaggedSymbol]) }
          def self.values; end
        end

        class Grantor < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address
          sig { returns(Increase::Models::Entity::Trust::Grantor::Address) }
          attr_reader :address

          sig do
            params(address: T.any(Increase::Models::Entity::Trust::Grantor::Address, Increase::Internal::AnyHash)).void
          end
          attr_writer :address

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/date_of_birth
          sig { returns(Date) }
          attr_accessor :date_of_birth

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification
          sig { returns(Increase::Models::Entity::Trust::Grantor::Identification) }
          attr_reader :identification

          sig do
            params(
              identification: T.any(Increase::Models::Entity::Trust::Grantor::Identification, Increase::Internal::AnyHash)
            )
              .void
          end
          attr_writer :identification

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor
          sig do
            params(
              address: T.any(Increase::Models::Entity::Trust::Grantor::Address, Increase::Internal::AnyHash),
              date_of_birth: Date,
              identification: T.any(Increase::Models::Entity::Trust::Grantor::Identification, Increase::Internal::AnyHash),
              name: String
            )
              .returns(T.attached_class)
          end
          def self.new(address:, date_of_birth:, identification:, name:); end

          sig do
            override
              .returns(
                {
                  address: Increase::Models::Entity::Trust::Grantor::Address,
                  date_of_birth: Date,
                  identification: Increase::Models::Entity::Trust::Grantor::Identification,
                  name: String
                }
              )
          end
          def to_hash; end

          class Address < Increase::Internal::Type::BaseModel
            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/city
            sig { returns(String) }
            attr_accessor :city

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/line1
            sig { returns(String) }
            attr_accessor :line1

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/line2
            sig { returns(T.nilable(String)) }
            attr_accessor :line2

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/state
            sig { returns(String) }
            attr_accessor :state

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/zip
            sig { returns(String) }
            attr_accessor :zip

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address
            sig do
              params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
                .returns(T.attached_class)
            end
            def self.new(city:, line1:, line2:, state:, zip:); end

            sig do
              override.returns(
                {
                  city: String,
                  line1: String,
                  line2: T.nilable(String),
                  state: String,
                  zip: String
                }
              )
            end
            def to_hash; end
          end

          class Identification < Increase::Internal::Type::BaseModel
            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification/properties/method
            sig { returns(Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol) }
            attr_accessor :method_

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification/properties/number_last4
            sig { returns(String) }
            attr_accessor :number_last4

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification
            sig do
              params(
                method_: Increase::Models::Entity::Trust::Grantor::Identification::Method::OrSymbol,
                number_last4: String
              )
                .returns(T.attached_class)
            end
            def self.new(method_:, number_last4:); end

            sig do
              override
                .returns(
                  {
                    method_: Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol,
                    number_last4: String
                  }
                )
            end
            def to_hash; end

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification/properties/method
            module Method
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::Entity::Trust::Grantor::Identification::Method) }
              OrSymbol =
                T.type_alias { T.any(Symbol, String, Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol) }

              # A social security number.
              SOCIAL_SECURITY_NUMBER =
                T.let(
                  :social_security_number,
                  Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol
                )

              # An individual taxpayer identification number (ITIN).
              INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                T.let(
                  :individual_taxpayer_identification_number,
                  Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol
                )

              # A passport number.
              PASSPORT =
                T.let(:passport, Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol)

              # A driver's license number.
              DRIVERS_LICENSE =
                T.let(:drivers_license, Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol)

              # Another identifying document.
              OTHER = T.let(:other, Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol)

              sig { override.returns(T::Array[Increase::Models::Entity::Trust::Grantor::Identification::Method::TaggedSymbol]) }
              def self.values; end
            end
          end
        end

        class Trustee < Increase::Internal::Type::BaseModel
          # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual
          sig { returns(T.nilable(Increase::Models::Entity::Trust::Trustee::Individual)) }
          attr_reader :individual

          sig do
            params(
              individual: T.nilable(T.any(Increase::Models::Entity::Trust::Trustee::Individual, Increase::Internal::AnyHash))
            )
              .void
          end
          attr_writer :individual

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/structure
          sig { returns(Increase::Models::Entity::Trust::Trustee::Structure::TaggedSymbol) }
          attr_accessor :structure

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items
          sig do
            params(
              individual: T.nilable(T.any(Increase::Models::Entity::Trust::Trustee::Individual, Increase::Internal::AnyHash)),
              structure: Increase::Models::Entity::Trust::Trustee::Structure::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(individual:, structure:); end

          sig do
            override
              .returns(
                {
                  individual: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual),
                  structure: Increase::Models::Entity::Trust::Trustee::Structure::TaggedSymbol
                }
              )
          end
          def to_hash; end

          class Individual < Increase::Internal::Type::BaseModel
            # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address
            sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Address) }
            attr_reader :address

            sig do
              params(
                address: T.any(Increase::Models::Entity::Trust::Trustee::Individual::Address, Increase::Internal::AnyHash)
              )
                .void
            end
            attr_writer :address

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/date_of_birth
            sig { returns(Date) }
            attr_accessor :date_of_birth

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification
            sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Identification) }
            attr_reader :identification

            sig do
              params(
                identification: T.any(Increase::Models::Entity::Trust::Trustee::Individual::Identification, Increase::Internal::AnyHash)
              )
                .void
            end
            attr_writer :identification

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/name
            sig { returns(String) }
            attr_accessor :name

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual
            sig do
              params(
                address: T.any(Increase::Models::Entity::Trust::Trustee::Individual::Address, Increase::Internal::AnyHash),
                date_of_birth: Date,
                identification: T.any(Increase::Models::Entity::Trust::Trustee::Individual::Identification, Increase::Internal::AnyHash),
                name: String
              )
                .returns(T.attached_class)
            end
            def self.new(address:, date_of_birth:, identification:, name:); end

            sig do
              override
                .returns(
                  {
                    address: Increase::Models::Entity::Trust::Trustee::Individual::Address,
                    date_of_birth: Date,
                    identification: Increase::Models::Entity::Trust::Trustee::Individual::Identification,
                    name: String
                  }
                )
            end
            def to_hash; end

            class Address < Increase::Internal::Type::BaseModel
              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/city
              sig { returns(String) }
              attr_accessor :city

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/line1
              sig { returns(String) }
              attr_accessor :line1

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/line2
              sig { returns(T.nilable(String)) }
              attr_accessor :line2

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/state
              sig { returns(String) }
              attr_accessor :state

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/zip
              sig { returns(String) }
              attr_accessor :zip

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address
              sig do
                params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
                  .returns(T.attached_class)
              end
              def self.new(city:, line1:, line2:, state:, zip:); end

              sig do
                override.returns(
                  {
                    city: String,
                    line1: String,
                    line2: T.nilable(String),
                    state: String,
                    zip: String
                  }
                )
              end
              def to_hash; end
            end

            class Identification < Increase::Internal::Type::BaseModel
              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification/properties/method
              sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol) }
              attr_accessor :method_

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification/properties/number_last4
              sig { returns(String) }
              attr_accessor :number_last4

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification
              sig do
                params(
                  method_: Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::OrSymbol,
                  number_last4: String
                )
                  .returns(T.attached_class)
              end
              def self.new(method_:, number_last4:); end

              sig do
                override
                  .returns(
                    {
                      method_: Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol,
                      number_last4: String
                    }
                  )
              end
              def to_hash; end

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification/properties/method
              module Method
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                    )
                  end

                # A social security number.
                SOCIAL_SECURITY_NUMBER =
                  T.let(
                    :social_security_number,
                    Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                # An individual taxpayer identification number (ITIN).
                INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                  T.let(
                    :individual_taxpayer_identification_number,
                    Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                # A passport number.
                PASSPORT =
                  T.let(
                    :passport,
                    Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                # A driver's license number.
                DRIVERS_LICENSE =
                  T.let(
                    :drivers_license,
                    Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                # Another identifying document.
                OTHER =
                  T.let(:other, Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol)

                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method::TaggedSymbol]
                    )
                end
                def self.values; end
              end
            end
          end

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/structure
          module Structure
            extend Increase::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Entity::Trust::Trustee::Structure) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::Entity::Trust::Trustee::Structure::TaggedSymbol) }

            # The trustee is an individual.
            INDIVIDUAL = T.let(:individual, Increase::Models::Entity::Trust::Trustee::Structure::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::Entity::Trust::Trustee::Structure::TaggedSymbol]) }
            def self.values; end
          end
        end
      end

      # #/components/schemas/entity/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Entity::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Entity::Type::TaggedSymbol) }

        ENTITY = T.let(:entity, Increase::Models::Entity::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Entity::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
