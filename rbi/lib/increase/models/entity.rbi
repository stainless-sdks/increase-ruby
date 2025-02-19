# typed: strong

module Increase
  module Models
    class Entity < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Increase::Models::Entity::Corporation)) }
      def corporation
      end

      sig do
        params(_: T.nilable(Increase::Models::Entity::Corporation))
          .returns(T.nilable(Increase::Models::Entity::Corporation))
      end
      def corporation=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Time)) }
      def details_confirmed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def details_confirmed_at=(_)
      end

      sig { returns(T.nilable(Increase::Models::Entity::GovernmentAuthority)) }
      def government_authority
      end

      sig do
        params(_: T.nilable(Increase::Models::Entity::GovernmentAuthority))
          .returns(T.nilable(Increase::Models::Entity::GovernmentAuthority))
      end
      def government_authority=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Increase::Models::Entity::Joint)) }
      def joint
      end

      sig { params(_: T.nilable(Increase::Models::Entity::Joint)).returns(T.nilable(Increase::Models::Entity::Joint)) }
      def joint=(_)
      end

      sig { returns(T.nilable(Increase::Models::Entity::NaturalPerson)) }
      def natural_person
      end

      sig do
        params(_: T.nilable(Increase::Models::Entity::NaturalPerson))
          .returns(T.nilable(Increase::Models::Entity::NaturalPerson))
      end
      def natural_person=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def structure
      end

      sig { params(_: Symbol).returns(Symbol) }
      def structure=(_)
      end

      sig { returns(T::Array[Increase::Models::EntitySupplementalDocument]) }
      def supplemental_documents
      end

      sig do
        params(_: T::Array[Increase::Models::EntitySupplementalDocument])
          .returns(T::Array[Increase::Models::EntitySupplementalDocument])
      end
      def supplemental_documents=(_)
      end

      sig { returns(T.nilable(Increase::Models::Entity::ThirdPartyVerification)) }
      def third_party_verification
      end

      sig do
        params(_: T.nilable(Increase::Models::Entity::ThirdPartyVerification))
          .returns(T.nilable(Increase::Models::Entity::ThirdPartyVerification))
      end
      def third_party_verification=(_)
      end

      sig { returns(T.nilable(Increase::Models::Entity::Trust)) }
      def trust
      end

      sig { params(_: T.nilable(Increase::Models::Entity::Trust)).returns(T.nilable(Increase::Models::Entity::Trust)) }
      def trust=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
            id: String,
            corporation: T.nilable(Increase::Models::Entity::Corporation),
            created_at: Time,
            description: T.nilable(String),
            details_confirmed_at: T.nilable(Time),
            government_authority: T.nilable(Increase::Models::Entity::GovernmentAuthority),
            idempotency_key: T.nilable(String),
            joint: T.nilable(Increase::Models::Entity::Joint),
            natural_person: T.nilable(Increase::Models::Entity::NaturalPerson),
            status: Symbol,
            structure: Symbol,
            supplemental_documents: T::Array[Increase::Models::EntitySupplementalDocument],
            third_party_verification: T.nilable(Increase::Models::Entity::ThirdPartyVerification),
            trust: T.nilable(Increase::Models::Entity::Trust),
            type: Symbol
          )
          .void
      end
      def initialize(
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
      )
      end

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
              status: Symbol,
              structure: Symbol,
              supplemental_documents: T::Array[Increase::Models::EntitySupplementalDocument],
              third_party_verification: T.nilable(Increase::Models::Entity::ThirdPartyVerification),
              trust: T.nilable(Increase::Models::Entity::Trust),
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Corporation < Increase::BaseModel
        sig { returns(Increase::Models::Entity::Corporation::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::Entity::Corporation::Address)
            .returns(Increase::Models::Entity::Corporation::Address)
        end
        def address=(_)
        end

        sig { returns(T::Array[Increase::Models::Entity::Corporation::BeneficialOwner]) }
        def beneficial_owners
        end

        sig do
          params(_: T::Array[Increase::Models::Entity::Corporation::BeneficialOwner])
            .returns(T::Array[Increase::Models::Entity::Corporation::BeneficialOwner])
        end
        def beneficial_owners=(_)
        end

        sig { returns(T.nilable(String)) }
        def incorporation_state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def incorporation_state=(_)
        end

        sig { returns(T.nilable(String)) }
        def industry_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def industry_code=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(String)) }
        def tax_identifier
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tax_identifier=(_)
        end

        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def website=(_)
        end

        sig do
          params(
              address: Increase::Models::Entity::Corporation::Address,
              beneficial_owners: T::Array[Increase::Models::Entity::Corporation::BeneficialOwner],
              incorporation_state: T.nilable(String),
              industry_code: T.nilable(String),
              name: String,
              tax_identifier: T.nilable(String),
              website: T.nilable(String)
            )
            .void
        end
        def initialize(address:, beneficial_owners:, incorporation_state:, industry_code:, name:, tax_identifier:, website:)
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
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          sig { returns(String) }
          def zip
          end

          sig { params(_: String).returns(String) }
          def zip=(_)
          end

          sig { params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void }
          def initialize(city:, line1:, line2:, state:, zip:)
          end

          sig { override.returns({city: String, line1: String, line2: T.nilable(String), state: String, zip: String}) }
          def to_hash
          end
        end

        class BeneficialOwner < Increase::BaseModel
          sig { returns(String) }
          def beneficial_owner_id
          end

          sig { params(_: String).returns(String) }
          def beneficial_owner_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def company_title
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def company_title=(_)
          end

          sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual) }
          def individual
          end

          sig do
            params(_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual)
              .returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual)
          end
          def individual=(_)
          end

          sig { returns(Symbol) }
          def prong
          end

          sig { params(_: Symbol).returns(Symbol) }
          def prong=(_)
          end

          sig do
            params(
                beneficial_owner_id: String,
                company_title: T.nilable(String),
                individual: Increase::Models::Entity::Corporation::BeneficialOwner::Individual,
                prong: Symbol
              )
              .void
          end
          def initialize(beneficial_owner_id:, company_title:, individual:, prong:)
          end

          sig do
            override
              .returns(
                {
                  beneficial_owner_id: String,
                  company_title: T.nilable(String),
                  individual: Increase::Models::Entity::Corporation::BeneficialOwner::Individual,
                  prong: Symbol
                }
              )
          end
          def to_hash
          end

          class Individual < Increase::BaseModel
            sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address) }
            def address
            end

            sig do
              params(_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address)
                .returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address)
            end
            def address=(_)
            end

            sig { returns(Date) }
            def date_of_birth
            end

            sig { params(_: Date).returns(Date) }
            def date_of_birth=(_)
            end

            sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification) }
            def identification
            end

            sig do
              params(_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification)
                .returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification)
            end
            def identification=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              params(
                  address: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address,
                  date_of_birth: Date,
                  identification: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification,
                  name: String
                )
                .void
            end
            def initialize(address:, date_of_birth:, identification:, name:)
            end

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
            def to_hash
            end

            class Address < Increase::BaseModel
              sig { returns(String) }
              def city
              end

              sig { params(_: String).returns(String) }
              def city=(_)
              end

              sig { returns(String) }
              def line1
              end

              sig { params(_: String).returns(String) }
              def line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def line2
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_)
              end

              sig { returns(String) }
              def state
              end

              sig { params(_: String).returns(String) }
              def state=(_)
              end

              sig { returns(String) }
              def zip
              end

              sig { params(_: String).returns(String) }
              def zip=(_)
              end

              sig { params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void }
              def initialize(city:, line1:, line2:, state:, zip:)
              end

              sig { override.returns({city: String, line1: String, line2: T.nilable(String), state: String, zip: String}) }
              def to_hash
              end
            end

            class Identification < Increase::BaseModel
              sig { returns(Symbol) }
              def method_
              end

              sig { params(_: Symbol).returns(Symbol) }
              def method_=(_)
              end

              sig { returns(String) }
              def number_last4
              end

              sig { params(_: String).returns(String) }
              def number_last4=(_)
              end

              sig { params(method_: Symbol, number_last4: String).void }
              def initialize(method_:, number_last4:)
              end

              sig { override.returns({method_: Symbol, number_last4: String}) }
              def to_hash
              end

              class Method < Increase::Enum
                abstract!

                # A social security number.
                SOCIAL_SECURITY_NUMBER = :social_security_number

                # An individual taxpayer identification number (ITIN).
                INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER = :individual_taxpayer_identification_number

                # A passport number.
                PASSPORT = :passport

                # A driver's license number.
                DRIVERS_LICENSE = :drivers_license

                # Another identifying document.
                OTHER = :other

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class Prong < Increase::Enum
            abstract!

            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP = :ownership

            # A person who manages, directs, or has significant control of the entity.
            CONTROL = :control

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class GovernmentAuthority < Increase::BaseModel
        sig { returns(Increase::Models::Entity::GovernmentAuthority::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::Entity::GovernmentAuthority::Address)
            .returns(Increase::Models::Entity::GovernmentAuthority::Address)
        end
        def address=(_)
        end

        sig { returns(T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson]) }
        def authorized_persons
        end

        sig do
          params(_: T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson])
            .returns(T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson])
        end
        def authorized_persons=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(String)) }
        def tax_identifier
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tax_identifier=(_)
        end

        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def website=(_)
        end

        sig do
          params(
              address: Increase::Models::Entity::GovernmentAuthority::Address,
              authorized_persons: T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson],
              category: Symbol,
              name: String,
              tax_identifier: T.nilable(String),
              website: T.nilable(String)
            )
            .void
        end
        def initialize(address:, authorized_persons:, category:, name:, tax_identifier:, website:)
        end

        sig do
          override
            .returns(
              {
                address: Increase::Models::Entity::GovernmentAuthority::Address,
                authorized_persons: T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson],
                category: Symbol,
                name: String,
                tax_identifier: T.nilable(String),
                website: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          sig { returns(String) }
          def zip
          end

          sig { params(_: String).returns(String) }
          def zip=(_)
          end

          sig { params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void }
          def initialize(city:, line1:, line2:, state:, zip:)
          end

          sig { override.returns({city: String, line1: String, line2: T.nilable(String), state: String, zip: String}) }
          def to_hash
          end
        end

        class AuthorizedPerson < Increase::BaseModel
          sig { returns(String) }
          def authorized_person_id
          end

          sig { params(_: String).returns(String) }
          def authorized_person_id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(authorized_person_id: String, name: String).void }
          def initialize(authorized_person_id:, name:)
          end

          sig { override.returns({authorized_person_id: String, name: String}) }
          def to_hash
          end
        end

        class Category < Increase::Enum
          abstract!

          # The Public Entity is a Municipality.
          MUNICIPALITY = :municipality

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Joint < Increase::BaseModel
        sig { returns(T::Array[Increase::Models::Entity::Joint::Individual]) }
        def individuals
        end

        sig do
          params(_: T::Array[Increase::Models::Entity::Joint::Individual])
            .returns(T::Array[Increase::Models::Entity::Joint::Individual])
        end
        def individuals=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { params(individuals: T::Array[Increase::Models::Entity::Joint::Individual], name: String).void }
        def initialize(individuals:, name:)
        end

        sig { override.returns({individuals: T::Array[Increase::Models::Entity::Joint::Individual], name: String}) }
        def to_hash
        end

        class Individual < Increase::BaseModel
          sig { returns(Increase::Models::Entity::Joint::Individual::Address) }
          def address
          end

          sig do
            params(_: Increase::Models::Entity::Joint::Individual::Address)
              .returns(Increase::Models::Entity::Joint::Individual::Address)
          end
          def address=(_)
          end

          sig { returns(Date) }
          def date_of_birth
          end

          sig { params(_: Date).returns(Date) }
          def date_of_birth=(_)
          end

          sig { returns(Increase::Models::Entity::Joint::Individual::Identification) }
          def identification
          end

          sig do
            params(_: Increase::Models::Entity::Joint::Individual::Identification)
              .returns(Increase::Models::Entity::Joint::Individual::Identification)
          end
          def identification=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig do
            params(
                address: Increase::Models::Entity::Joint::Individual::Address,
                date_of_birth: Date,
                identification: Increase::Models::Entity::Joint::Individual::Identification,
                name: String
              )
              .void
          end
          def initialize(address:, date_of_birth:, identification:, name:)
          end

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
          def to_hash
          end

          class Address < Increase::BaseModel
            sig { returns(String) }
            def city
            end

            sig { params(_: String).returns(String) }
            def city=(_)
            end

            sig { returns(String) }
            def line1
            end

            sig { params(_: String).returns(String) }
            def line1=(_)
            end

            sig { returns(T.nilable(String)) }
            def line2
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_)
            end

            sig { returns(String) }
            def state
            end

            sig { params(_: String).returns(String) }
            def state=(_)
            end

            sig { returns(String) }
            def zip
            end

            sig { params(_: String).returns(String) }
            def zip=(_)
            end

            sig { params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void }
            def initialize(city:, line1:, line2:, state:, zip:)
            end

            sig { override.returns({city: String, line1: String, line2: T.nilable(String), state: String, zip: String}) }
            def to_hash
            end
          end

          class Identification < Increase::BaseModel
            sig { returns(Symbol) }
            def method_
            end

            sig { params(_: Symbol).returns(Symbol) }
            def method_=(_)
            end

            sig { returns(String) }
            def number_last4
            end

            sig { params(_: String).returns(String) }
            def number_last4=(_)
            end

            sig { params(method_: Symbol, number_last4: String).void }
            def initialize(method_:, number_last4:)
            end

            sig { override.returns({method_: Symbol, number_last4: String}) }
            def to_hash
            end

            class Method < Increase::Enum
              abstract!

              # A social security number.
              SOCIAL_SECURITY_NUMBER = :social_security_number

              # An individual taxpayer identification number (ITIN).
              INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER = :individual_taxpayer_identification_number

              # A passport number.
              PASSPORT = :passport

              # A driver's license number.
              DRIVERS_LICENSE = :drivers_license

              # Another identifying document.
              OTHER = :other

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end
      end

      class NaturalPerson < Increase::BaseModel
        sig { returns(Increase::Models::Entity::NaturalPerson::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::Entity::NaturalPerson::Address)
            .returns(Increase::Models::Entity::NaturalPerson::Address)
        end
        def address=(_)
        end

        sig { returns(Date) }
        def date_of_birth
        end

        sig { params(_: Date).returns(Date) }
        def date_of_birth=(_)
        end

        sig { returns(Increase::Models::Entity::NaturalPerson::Identification) }
        def identification
        end

        sig do
          params(_: Increase::Models::Entity::NaturalPerson::Identification)
            .returns(Increase::Models::Entity::NaturalPerson::Identification)
        end
        def identification=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig do
          params(
              address: Increase::Models::Entity::NaturalPerson::Address,
              date_of_birth: Date,
              identification: Increase::Models::Entity::NaturalPerson::Identification,
              name: String
            )
            .void
        end
        def initialize(address:, date_of_birth:, identification:, name:)
        end

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
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          sig { returns(String) }
          def zip
          end

          sig { params(_: String).returns(String) }
          def zip=(_)
          end

          sig { params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void }
          def initialize(city:, line1:, line2:, state:, zip:)
          end

          sig { override.returns({city: String, line1: String, line2: T.nilable(String), state: String, zip: String}) }
          def to_hash
          end
        end

        class Identification < Increase::BaseModel
          sig { returns(Symbol) }
          def method_
          end

          sig { params(_: Symbol).returns(Symbol) }
          def method_=(_)
          end

          sig { returns(String) }
          def number_last4
          end

          sig { params(_: String).returns(String) }
          def number_last4=(_)
          end

          sig { params(method_: Symbol, number_last4: String).void }
          def initialize(method_:, number_last4:)
          end

          sig { override.returns({method_: Symbol, number_last4: String}) }
          def to_hash
          end

          class Method < Increase::Enum
            abstract!

            # A social security number.
            SOCIAL_SECURITY_NUMBER = :social_security_number

            # An individual taxpayer identification number (ITIN).
            INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER = :individual_taxpayer_identification_number

            # A passport number.
            PASSPORT = :passport

            # A driver's license number.
            DRIVERS_LICENSE = :drivers_license

            # Another identifying document.
            OTHER = :other

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The entity is active.
        ACTIVE = :active

        # The entity is archived, and can no longer be used to create accounts.
        ARCHIVED = :archived

        # The entity is temporarily disabled and cannot be used for financial activity.
        DISABLED = :disabled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Structure < Increase::Enum
        abstract!

        # A corporation.
        CORPORATION = :corporation

        # An individual person.
        NATURAL_PERSON = :natural_person

        # Multiple individual people.
        JOINT = :joint

        # A trust.
        TRUST = :trust

        # A government authority.
        GOVERNMENT_AUTHORITY = :government_authority

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ThirdPartyVerification < Increase::BaseModel
        sig { returns(String) }
        def reference
        end

        sig { params(_: String).returns(String) }
        def reference=(_)
        end

        sig { returns(Symbol) }
        def vendor
        end

        sig { params(_: Symbol).returns(Symbol) }
        def vendor=(_)
        end

        sig { params(reference: String, vendor: Symbol).void }
        def initialize(reference:, vendor:)
        end

        sig { override.returns({reference: String, vendor: Symbol}) }
        def to_hash
        end

        class Vendor < Increase::Enum
          abstract!

          # Alloy. See https://alloy.com for more information.
          ALLOY = :alloy

          # Middesk. See https://middesk.com for more information.
          MIDDESK = :middesk

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Trust < Increase::BaseModel
        sig { returns(Increase::Models::Entity::Trust::Address) }
        def address
        end

        sig { params(_: Increase::Models::Entity::Trust::Address).returns(Increase::Models::Entity::Trust::Address) }
        def address=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(String)) }
        def formation_document_file_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def formation_document_file_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def formation_state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def formation_state=(_)
        end

        sig { returns(T.nilable(Increase::Models::Entity::Trust::Grantor)) }
        def grantor
        end

        sig do
          params(_: T.nilable(Increase::Models::Entity::Trust::Grantor))
            .returns(T.nilable(Increase::Models::Entity::Trust::Grantor))
        end
        def grantor=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(String)) }
        def tax_identifier
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tax_identifier=(_)
        end

        sig { returns(T::Array[Increase::Models::Entity::Trust::Trustee]) }
        def trustees
        end

        sig do
          params(_: T::Array[Increase::Models::Entity::Trust::Trustee])
            .returns(T::Array[Increase::Models::Entity::Trust::Trustee])
        end
        def trustees=(_)
        end

        sig do
          params(
              address: Increase::Models::Entity::Trust::Address,
              category: Symbol,
              formation_document_file_id: T.nilable(String),
              formation_state: T.nilable(String),
              grantor: T.nilable(Increase::Models::Entity::Trust::Grantor),
              name: String,
              tax_identifier: T.nilable(String),
              trustees: T::Array[Increase::Models::Entity::Trust::Trustee]
            )
            .void
        end
        def initialize(
          address:,
          category:,
          formation_document_file_id:,
          formation_state:,
          grantor:,
          name:,
          tax_identifier:,
          trustees:
        )
        end

        sig do
          override
            .returns(
              {
                address: Increase::Models::Entity::Trust::Address,
                category: Symbol,
                formation_document_file_id: T.nilable(String),
                formation_state: T.nilable(String),
                grantor: T.nilable(Increase::Models::Entity::Trust::Grantor),
                name: String,
                tax_identifier: T.nilable(String),
                trustees: T::Array[Increase::Models::Entity::Trust::Trustee]
              }
            )
        end
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          sig { returns(String) }
          def zip
          end

          sig { params(_: String).returns(String) }
          def zip=(_)
          end

          sig { params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void }
          def initialize(city:, line1:, line2:, state:, zip:)
          end

          sig { override.returns({city: String, line1: String, line2: T.nilable(String), state: String, zip: String}) }
          def to_hash
          end
        end

        class Category < Increase::Enum
          abstract!

          # The trust is revocable by the grantor.
          REVOCABLE = :revocable

          # The trust cannot be revoked.
          IRREVOCABLE = :irrevocable

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Grantor < Increase::BaseModel
          sig { returns(Increase::Models::Entity::Trust::Grantor::Address) }
          def address
          end

          sig do
            params(_: Increase::Models::Entity::Trust::Grantor::Address)
              .returns(Increase::Models::Entity::Trust::Grantor::Address)
          end
          def address=(_)
          end

          sig { returns(Date) }
          def date_of_birth
          end

          sig { params(_: Date).returns(Date) }
          def date_of_birth=(_)
          end

          sig { returns(Increase::Models::Entity::Trust::Grantor::Identification) }
          def identification
          end

          sig do
            params(_: Increase::Models::Entity::Trust::Grantor::Identification)
              .returns(Increase::Models::Entity::Trust::Grantor::Identification)
          end
          def identification=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig do
            params(
                address: Increase::Models::Entity::Trust::Grantor::Address,
                date_of_birth: Date,
                identification: Increase::Models::Entity::Trust::Grantor::Identification,
                name: String
              )
              .void
          end
          def initialize(address:, date_of_birth:, identification:, name:)
          end

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
          def to_hash
          end

          class Address < Increase::BaseModel
            sig { returns(String) }
            def city
            end

            sig { params(_: String).returns(String) }
            def city=(_)
            end

            sig { returns(String) }
            def line1
            end

            sig { params(_: String).returns(String) }
            def line1=(_)
            end

            sig { returns(T.nilable(String)) }
            def line2
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_)
            end

            sig { returns(String) }
            def state
            end

            sig { params(_: String).returns(String) }
            def state=(_)
            end

            sig { returns(String) }
            def zip
            end

            sig { params(_: String).returns(String) }
            def zip=(_)
            end

            sig { params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void }
            def initialize(city:, line1:, line2:, state:, zip:)
            end

            sig { override.returns({city: String, line1: String, line2: T.nilable(String), state: String, zip: String}) }
            def to_hash
            end
          end

          class Identification < Increase::BaseModel
            sig { returns(Symbol) }
            def method_
            end

            sig { params(_: Symbol).returns(Symbol) }
            def method_=(_)
            end

            sig { returns(String) }
            def number_last4
            end

            sig { params(_: String).returns(String) }
            def number_last4=(_)
            end

            sig { params(method_: Symbol, number_last4: String).void }
            def initialize(method_:, number_last4:)
            end

            sig { override.returns({method_: Symbol, number_last4: String}) }
            def to_hash
            end

            class Method < Increase::Enum
              abstract!

              # A social security number.
              SOCIAL_SECURITY_NUMBER = :social_security_number

              # An individual taxpayer identification number (ITIN).
              INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER = :individual_taxpayer_identification_number

              # A passport number.
              PASSPORT = :passport

              # A driver's license number.
              DRIVERS_LICENSE = :drivers_license

              # Another identifying document.
              OTHER = :other

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end

        class Trustee < Increase::BaseModel
          sig { returns(T.nilable(Increase::Models::Entity::Trust::Trustee::Individual)) }
          def individual
          end

          sig do
            params(_: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual))
              .returns(T.nilable(Increase::Models::Entity::Trust::Trustee::Individual))
          end
          def individual=(_)
          end

          sig { returns(Symbol) }
          def structure
          end

          sig { params(_: Symbol).returns(Symbol) }
          def structure=(_)
          end

          sig do
            params(individual: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual), structure: Symbol).void
          end
          def initialize(individual:, structure:)
          end

          sig do
            override
              .returns({individual: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual), structure: Symbol})
          end
          def to_hash
          end

          class Individual < Increase::BaseModel
            sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Address) }
            def address
            end

            sig do
              params(_: Increase::Models::Entity::Trust::Trustee::Individual::Address)
                .returns(Increase::Models::Entity::Trust::Trustee::Individual::Address)
            end
            def address=(_)
            end

            sig { returns(Date) }
            def date_of_birth
            end

            sig { params(_: Date).returns(Date) }
            def date_of_birth=(_)
            end

            sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Identification) }
            def identification
            end

            sig do
              params(_: Increase::Models::Entity::Trust::Trustee::Individual::Identification)
                .returns(Increase::Models::Entity::Trust::Trustee::Individual::Identification)
            end
            def identification=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              params(
                  address: Increase::Models::Entity::Trust::Trustee::Individual::Address,
                  date_of_birth: Date,
                  identification: Increase::Models::Entity::Trust::Trustee::Individual::Identification,
                  name: String
                )
                .void
            end
            def initialize(address:, date_of_birth:, identification:, name:)
            end

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
            def to_hash
            end

            class Address < Increase::BaseModel
              sig { returns(String) }
              def city
              end

              sig { params(_: String).returns(String) }
              def city=(_)
              end

              sig { returns(String) }
              def line1
              end

              sig { params(_: String).returns(String) }
              def line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def line2
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_)
              end

              sig { returns(String) }
              def state
              end

              sig { params(_: String).returns(String) }
              def state=(_)
              end

              sig { returns(String) }
              def zip
              end

              sig { params(_: String).returns(String) }
              def zip=(_)
              end

              sig { params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void }
              def initialize(city:, line1:, line2:, state:, zip:)
              end

              sig { override.returns({city: String, line1: String, line2: T.nilable(String), state: String, zip: String}) }
              def to_hash
              end
            end

            class Identification < Increase::BaseModel
              sig { returns(Symbol) }
              def method_
              end

              sig { params(_: Symbol).returns(Symbol) }
              def method_=(_)
              end

              sig { returns(String) }
              def number_last4
              end

              sig { params(_: String).returns(String) }
              def number_last4=(_)
              end

              sig { params(method_: Symbol, number_last4: String).void }
              def initialize(method_:, number_last4:)
              end

              sig { override.returns({method_: Symbol, number_last4: String}) }
              def to_hash
              end

              class Method < Increase::Enum
                abstract!

                # A social security number.
                SOCIAL_SECURITY_NUMBER = :social_security_number

                # An individual taxpayer identification number (ITIN).
                INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER = :individual_taxpayer_identification_number

                # A passport number.
                PASSPORT = :passport

                # A driver's license number.
                DRIVERS_LICENSE = :drivers_license

                # Another identifying document.
                OTHER = :other

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class Structure < Increase::Enum
            abstract!

            # The trustee is an individual.
            INDIVIDUAL = :individual

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        ENTITY = :entity

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
