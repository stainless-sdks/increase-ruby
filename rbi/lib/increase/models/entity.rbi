# typed: strong

module Increase
  module Models
    class Entity < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Increase::Models::Entity::Corporation)) }
      attr_accessor :corporation

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :details_confirmed_at

      sig { returns(T.nilable(Increase::Models::Entity::GovernmentAuthority)) }
      attr_accessor :government_authority

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(Increase::Models::Entity::Joint)) }
      attr_accessor :joint

      sig { returns(T.nilable(Increase::Models::Entity::NaturalPerson)) }
      attr_accessor :natural_person

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :structure

      sig { returns(T::Array[Increase::Models::EntitySupplementalDocument]) }
      attr_accessor :supplemental_documents

      sig { returns(T.nilable(Increase::Models::Entity::ThirdPartyVerification)) }
      attr_accessor :third_party_verification

      sig { returns(T.nilable(Increase::Models::Entity::Trust)) }
      attr_accessor :trust

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
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
        override.returns(
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
        attr_accessor :address

        sig { returns(T::Array[Increase::Models::Entity::Corporation::BeneficialOwner]) }
        attr_accessor :beneficial_owners

        sig { returns(T.nilable(String)) }
        attr_accessor :incorporation_state

        sig { returns(T.nilable(String)) }
        attr_accessor :industry_code

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_accessor :tax_identifier

        sig { returns(T.nilable(String)) }
        attr_accessor :website

        sig do
          params(
            address: Increase::Models::Entity::Corporation::Address,
            beneficial_owners: T::Array[Increase::Models::Entity::Corporation::BeneficialOwner],
            incorporation_state: T.nilable(String),
            industry_code: T.nilable(String),
            name: String,
            tax_identifier: T.nilable(String),
            website: T.nilable(String)
          ).void
        end
        def initialize(
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
          override.returns(
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
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(String) }
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zip

          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void
          end
          def initialize(city:, line1:, line2:, state:, zip:)
          end

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
          def to_hash
          end
        end

        class BeneficialOwner < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :beneficial_owner_id

          sig { returns(T.nilable(String)) }
          attr_accessor :company_title

          sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual) }
          attr_accessor :individual

          sig { returns(Symbol) }
          attr_accessor :prong

          sig do
            params(
              beneficial_owner_id: String,
              company_title: T.nilable(String),
              individual: Increase::Models::Entity::Corporation::BeneficialOwner::Individual,
              prong: Symbol
            ).void
          end
          def initialize(beneficial_owner_id:, company_title:, individual:, prong:)
          end

          sig do
            override.returns(
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
            attr_accessor :address

            sig { returns(Date) }
            attr_accessor :date_of_birth

            sig do
              returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification)
            end
            attr_accessor :identification

            sig { returns(String) }
            attr_accessor :name

            sig do
              params(
                address: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address,
                date_of_birth: Date,
                identification: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification,
                name: String
              ).void
            end
            def initialize(address:, date_of_birth:, identification:, name:)
            end

            sig do
              override.returns(
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
              attr_accessor :city

              sig { returns(String) }
              attr_accessor :line1

              sig { returns(T.nilable(String)) }
              attr_accessor :line2

              sig { returns(String) }
              attr_accessor :state

              sig { returns(String) }
              attr_accessor :zip

              sig do
                params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void
              end
              def initialize(city:, line1:, line2:, state:, zip:)
              end

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
              def to_hash
              end
            end

            class Identification < Increase::BaseModel
              sig { returns(Symbol) }
              attr_accessor :method_

              sig { returns(String) }
              attr_accessor :number_last4

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
        attr_accessor :address

        sig { returns(T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson]) }
        attr_accessor :authorized_persons

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_accessor :tax_identifier

        sig { returns(T.nilable(String)) }
        attr_accessor :website

        sig do
          params(
            address: Increase::Models::Entity::GovernmentAuthority::Address,
            authorized_persons: T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson],
            category: Symbol,
            name: String,
            tax_identifier: T.nilable(String),
            website: T.nilable(String)
          ).void
        end
        def initialize(address:, authorized_persons:, category:, name:, tax_identifier:, website:)
        end

        sig do
          override.returns(
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
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(String) }
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zip

          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void
          end
          def initialize(city:, line1:, line2:, state:, zip:)
          end

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
          def to_hash
          end
        end

        class AuthorizedPerson < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :authorized_person_id

          sig { returns(String) }
          attr_accessor :name

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
        attr_accessor :individuals

        sig { returns(String) }
        attr_accessor :name

        sig { params(individuals: T::Array[Increase::Models::Entity::Joint::Individual], name: String).void }
        def initialize(individuals:, name:)
        end

        sig do
          override.returns({individuals: T::Array[Increase::Models::Entity::Joint::Individual], name: String})
        end
        def to_hash
        end

        class Individual < Increase::BaseModel
          sig { returns(Increase::Models::Entity::Joint::Individual::Address) }
          attr_accessor :address

          sig { returns(Date) }
          attr_accessor :date_of_birth

          sig { returns(Increase::Models::Entity::Joint::Individual::Identification) }
          attr_accessor :identification

          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              address: Increase::Models::Entity::Joint::Individual::Address,
              date_of_birth: Date,
              identification: Increase::Models::Entity::Joint::Individual::Identification,
              name: String
            ).void
          end
          def initialize(address:, date_of_birth:, identification:, name:)
          end

          sig do
            override.returns(
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
            attr_accessor :city

            sig { returns(String) }
            attr_accessor :line1

            sig { returns(T.nilable(String)) }
            attr_accessor :line2

            sig { returns(String) }
            attr_accessor :state

            sig { returns(String) }
            attr_accessor :zip

            sig do
              params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void
            end
            def initialize(city:, line1:, line2:, state:, zip:)
            end

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
            def to_hash
            end
          end

          class Identification < Increase::BaseModel
            sig { returns(Symbol) }
            attr_accessor :method_

            sig { returns(String) }
            attr_accessor :number_last4

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
        attr_accessor :address

        sig { returns(Date) }
        attr_accessor :date_of_birth

        sig { returns(Increase::Models::Entity::NaturalPerson::Identification) }
        attr_accessor :identification

        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            address: Increase::Models::Entity::NaturalPerson::Address,
            date_of_birth: Date,
            identification: Increase::Models::Entity::NaturalPerson::Identification,
            name: String
          ).void
        end
        def initialize(address:, date_of_birth:, identification:, name:)
        end

        sig do
          override.returns(
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
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(String) }
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zip

          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void
          end
          def initialize(city:, line1:, line2:, state:, zip:)
          end

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
          def to_hash
          end
        end

        class Identification < Increase::BaseModel
          sig { returns(Symbol) }
          attr_accessor :method_

          sig { returns(String) }
          attr_accessor :number_last4

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
        attr_accessor :reference

        sig { returns(Symbol) }
        attr_accessor :vendor

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
        attr_accessor :address

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(String)) }
        attr_accessor :formation_document_file_id

        sig { returns(T.nilable(String)) }
        attr_accessor :formation_state

        sig { returns(T.nilable(Increase::Models::Entity::Trust::Grantor)) }
        attr_accessor :grantor

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_accessor :tax_identifier

        sig { returns(T::Array[Increase::Models::Entity::Trust::Trustee]) }
        attr_accessor :trustees

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
          ).void
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
          override.returns(
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
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :line1

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(String) }
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zip

          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void
          end
          def initialize(city:, line1:, line2:, state:, zip:)
          end

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
          attr_accessor :address

          sig { returns(Date) }
          attr_accessor :date_of_birth

          sig { returns(Increase::Models::Entity::Trust::Grantor::Identification) }
          attr_accessor :identification

          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              address: Increase::Models::Entity::Trust::Grantor::Address,
              date_of_birth: Date,
              identification: Increase::Models::Entity::Trust::Grantor::Identification,
              name: String
            ).void
          end
          def initialize(address:, date_of_birth:, identification:, name:)
          end

          sig do
            override.returns(
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
            attr_accessor :city

            sig { returns(String) }
            attr_accessor :line1

            sig { returns(T.nilable(String)) }
            attr_accessor :line2

            sig { returns(String) }
            attr_accessor :state

            sig { returns(String) }
            attr_accessor :zip

            sig do
              params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void
            end
            def initialize(city:, line1:, line2:, state:, zip:)
            end

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
            def to_hash
            end
          end

          class Identification < Increase::BaseModel
            sig { returns(Symbol) }
            attr_accessor :method_

            sig { returns(String) }
            attr_accessor :number_last4

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
          attr_accessor :individual

          sig { returns(Symbol) }
          attr_accessor :structure

          sig do
            params(
              individual: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual),
              structure: Symbol
            ).void
          end
          def initialize(individual:, structure:)
          end

          sig do
            override.returns(
              {
                individual: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual),
                structure: Symbol
              }
            )
          end
          def to_hash
          end

          class Individual < Increase::BaseModel
            sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Address) }
            attr_accessor :address

            sig { returns(Date) }
            attr_accessor :date_of_birth

            sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Identification) }
            attr_accessor :identification

            sig { returns(String) }
            attr_accessor :name

            sig do
              params(
                address: Increase::Models::Entity::Trust::Trustee::Individual::Address,
                date_of_birth: Date,
                identification: Increase::Models::Entity::Trust::Trustee::Individual::Identification,
                name: String
              ).void
            end
            def initialize(address:, date_of_birth:, identification:, name:)
            end

            sig do
              override.returns(
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
              attr_accessor :city

              sig { returns(String) }
              attr_accessor :line1

              sig { returns(T.nilable(String)) }
              attr_accessor :line2

              sig { returns(String) }
              attr_accessor :state

              sig { returns(String) }
              attr_accessor :zip

              sig do
                params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String).void
              end
              def initialize(city:, line1:, line2:, state:, zip:)
              end

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
              def to_hash
              end
            end

            class Identification < Increase::BaseModel
              sig { returns(Symbol) }
              attr_accessor :method_

              sig { returns(String) }
              attr_accessor :number_last4

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
