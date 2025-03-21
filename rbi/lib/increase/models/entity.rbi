# typed: strong

module Increase
  module Models
    class Entity < Increase::BaseModel
      # The entity's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Details of the corporation entity. Will be present if `structure` is equal to
      #   `corporation`.
      sig { returns(T.nilable(Increase::Models::Entity::Corporation)) }
      def corporation
      end

      sig do
        params(_: T.nilable(Increase::Models::Entity::Corporation))
          .returns(T.nilable(Increase::Models::Entity::Corporation))
      end
      def corporation=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Entity
      #   was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The entity's description for display purposes.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the
      #   Entity's details were most recently confirmed.
      sig { returns(T.nilable(Time)) }
      def details_confirmed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def details_confirmed_at=(_)
      end

      # Details of the government authority entity. Will be present if `structure` is
      #   equal to `government_authority`.
      sig { returns(T.nilable(Increase::Models::Entity::GovernmentAuthority)) }
      def government_authority
      end

      sig do
        params(_: T.nilable(Increase::Models::Entity::GovernmentAuthority))
          .returns(T.nilable(Increase::Models::Entity::GovernmentAuthority))
      end
      def government_authority=(_)
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

      # Details of the joint entity. Will be present if `structure` is equal to `joint`.
      sig { returns(T.nilable(Increase::Models::Entity::Joint)) }
      def joint
      end

      sig { params(_: T.nilable(Increase::Models::Entity::Joint)).returns(T.nilable(Increase::Models::Entity::Joint)) }
      def joint=(_)
      end

      # Details of the natural person entity. Will be present if `structure` is equal to
      #   `natural_person`.
      sig { returns(T.nilable(Increase::Models::Entity::NaturalPerson)) }
      def natural_person
      end

      sig do
        params(_: T.nilable(Increase::Models::Entity::NaturalPerson))
          .returns(T.nilable(Increase::Models::Entity::NaturalPerson))
      end
      def natural_person=(_)
      end

      # The status of the entity.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The entity's legal structure.
      sig { returns(Symbol) }
      def structure
      end

      sig { params(_: Symbol).returns(Symbol) }
      def structure=(_)
      end

      # Additional documentation associated with the entity. This is limited to the
      #   first 10 documents for an entity. If an entity has more than 10 documents, use
      #   the GET /entity_supplemental_documents list endpoint to retrieve them.
      sig { returns(T::Array[Increase::Models::EntitySupplementalDocument]) }
      def supplemental_documents
      end

      sig do
        params(_: T::Array[Increase::Models::EntitySupplementalDocument])
          .returns(T::Array[Increase::Models::EntitySupplementalDocument])
      end
      def supplemental_documents=(_)
      end

      # A reference to data stored in a third-party verification service. Your
      #   integration may or may not use this field.
      sig { returns(T.nilable(Increase::Models::Entity::ThirdPartyVerification)) }
      def third_party_verification
      end

      sig do
        params(_: T.nilable(Increase::Models::Entity::ThirdPartyVerification))
          .returns(T.nilable(Increase::Models::Entity::ThirdPartyVerification))
      end
      def third_party_verification=(_)
      end

      # Details of the trust entity. Will be present if `structure` is equal to `trust`.
      sig { returns(T.nilable(Increase::Models::Entity::Trust)) }
      def trust
      end

      sig { params(_: T.nilable(Increase::Models::Entity::Trust)).returns(T.nilable(Increase::Models::Entity::Trust)) }
      def trust=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `entity`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Entities are the legal entities that own accounts. They can be people,
      #   corporations, partnerships, government authorities, or trusts.
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
        # The corporation's address.
        sig { returns(Increase::Models::Entity::Corporation::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::Entity::Corporation::Address)
            .returns(Increase::Models::Entity::Corporation::Address)
        end
        def address=(_)
        end

        # The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        sig { returns(T::Array[Increase::Models::Entity::Corporation::BeneficialOwner]) }
        def beneficial_owners
        end

        sig do
          params(_: T::Array[Increase::Models::Entity::Corporation::BeneficialOwner])
            .returns(T::Array[Increase::Models::Entity::Corporation::BeneficialOwner])
        end
        def beneficial_owners=(_)
        end

        # The two-letter United States Postal Service (USPS) abbreviation for the
        #   corporation's state of incorporation.
        sig { returns(T.nilable(String)) }
        def incorporation_state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def incorporation_state=(_)
        end

        # The numeric North American Industry Classification System (NAICS) code submitted
        #   for the corporation.
        sig { returns(T.nilable(String)) }
        def industry_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def industry_code=(_)
        end

        # The legal name of the corporation.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The Employer Identification Number (EIN) for the corporation.
        sig { returns(T.nilable(String)) }
        def tax_identifier
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tax_identifier=(_)
        end

        # The website of the corporation.
        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def website=(_)
        end

        # Details of the corporation entity. Will be present if `structure` is equal to
        #   `corporation`.
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
            .returns(T.attached_class)
        end
        def self.new(address:, beneficial_owners:, incorporation_state:, industry_code:, name:, tax_identifier:, website:)
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
          # The city of the address.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # The first line of the address.
          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          # The second line of the address.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   the address.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # The ZIP code of the address.
          sig { returns(String) }
          def zip
          end

          sig { params(_: String).returns(String) }
          def zip=(_)
          end

          # The corporation's address.
          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, state:, zip:)
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
          # The identifier of this beneficial owner.
          sig { returns(String) }
          def beneficial_owner_id
          end

          sig { params(_: String).returns(String) }
          def beneficial_owner_id=(_)
          end

          # This person's role or title within the entity.
          sig { returns(T.nilable(String)) }
          def company_title
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def company_title=(_)
          end

          # Personal details for the beneficial owner.
          sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual) }
          def individual
          end

          sig do
            params(_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual)
              .returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual)
          end
          def individual=(_)
          end

          # Why this person is considered a beneficial owner of the entity.
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
              .returns(T.attached_class)
          end
          def self.new(beneficial_owner_id:, company_title:, individual:, prong:)
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
            # The person's address.
            sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address) }
            def address
            end

            sig do
              params(_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address)
                .returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address)
            end
            def address=(_)
            end

            # The person's date of birth in YYYY-MM-DD format.
            sig { returns(Date) }
            def date_of_birth
            end

            sig { params(_: Date).returns(Date) }
            def date_of_birth=(_)
            end

            # A means of verifying the person's identity.
            sig { returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification) }
            def identification
            end

            sig do
              params(_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification)
                .returns(Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification)
            end
            def identification=(_)
            end

            # The person's legal name.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # Personal details for the beneficial owner.
            sig do
              params(
                address: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address,
                date_of_birth: Date,
                identification: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification,
                name: String
              )
                .returns(T.attached_class)
            end
            def self.new(address:, date_of_birth:, identification:, name:)
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
              # The city of the address.
              sig { returns(String) }
              def city
              end

              sig { params(_: String).returns(String) }
              def city=(_)
              end

              # The first line of the address.
              sig { returns(String) }
              def line1
              end

              sig { params(_: String).returns(String) }
              def line1=(_)
              end

              # The second line of the address.
              sig { returns(T.nilable(String)) }
              def line2
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_)
              end

              # The two-letter United States Postal Service (USPS) abbreviation for the state of
              #   the address.
              sig { returns(String) }
              def state
              end

              sig { params(_: String).returns(String) }
              def state=(_)
              end

              # The ZIP code of the address.
              sig { returns(String) }
              def zip
              end

              sig { params(_: String).returns(String) }
              def zip=(_)
              end

              # The person's address.
              sig do
                params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
                  .returns(T.attached_class)
              end
              def self.new(city:, line1:, line2:, state:, zip:)
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
              # A method that can be used to verify the individual's identity.
              sig { returns(Symbol) }
              def method_
              end

              sig { params(_: Symbol).returns(Symbol) }
              def method_=(_)
              end

              # The last 4 digits of the identification number that can be used to verify the
              #   individual's identity.
              sig { returns(String) }
              def number_last4
              end

              sig { params(_: String).returns(String) }
              def number_last4=(_)
              end

              # A means of verifying the person's identity.
              sig { params(method_: Symbol, number_last4: String).returns(T.attached_class) }
              def self.new(method_:, number_last4:)
              end

              sig { override.returns({method_: Symbol, number_last4: String}) }
              def to_hash
              end

              # A method that can be used to verify the individual's identity.
              class Method < Increase::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

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
              end
            end
          end

          # Why this person is considered a beneficial owner of the entity.
          class Prong < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP = :ownership

            # A person who manages, directs, or has significant control of the entity.
            CONTROL = :control
          end
        end
      end

      class GovernmentAuthority < Increase::BaseModel
        # The government authority's address.
        sig { returns(Increase::Models::Entity::GovernmentAuthority::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::Entity::GovernmentAuthority::Address)
            .returns(Increase::Models::Entity::GovernmentAuthority::Address)
        end
        def address=(_)
        end

        # The identifying details of authorized persons of the government authority.
        sig { returns(T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson]) }
        def authorized_persons
        end

        sig do
          params(_: T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson])
            .returns(T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson])
        end
        def authorized_persons=(_)
        end

        # The category of the government authority.
        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        # The government authority's name.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The Employer Identification Number (EIN) of the government authority.
        sig { returns(T.nilable(String)) }
        def tax_identifier
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tax_identifier=(_)
        end

        # The government authority's website.
        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def website=(_)
        end

        # Details of the government authority entity. Will be present if `structure` is
        #   equal to `government_authority`.
        sig do
          params(
            address: Increase::Models::Entity::GovernmentAuthority::Address,
            authorized_persons: T::Array[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson],
            category: Symbol,
            name: String,
            tax_identifier: T.nilable(String),
            website: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(address:, authorized_persons:, category:, name:, tax_identifier:, website:)
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
          # The city of the address.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # The first line of the address.
          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          # The second line of the address.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   the address.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # The ZIP code of the address.
          sig { returns(String) }
          def zip
          end

          sig { params(_: String).returns(String) }
          def zip=(_)
          end

          # The government authority's address.
          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, state:, zip:)
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
          # The identifier of this authorized person.
          sig { returns(String) }
          def authorized_person_id
          end

          sig { params(_: String).returns(String) }
          def authorized_person_id=(_)
          end

          # The person's legal name.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(authorized_person_id: String, name: String).returns(T.attached_class) }
          def self.new(authorized_person_id:, name:)
          end

          sig { override.returns({authorized_person_id: String, name: String}) }
          def to_hash
          end
        end

        # The category of the government authority.
        class Category < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # The Public Entity is a Municipality.
          MUNICIPALITY = :municipality
        end
      end

      class Joint < Increase::BaseModel
        # The two individuals that share control of the entity.
        sig { returns(T::Array[Increase::Models::Entity::Joint::Individual]) }
        def individuals
        end

        sig do
          params(_: T::Array[Increase::Models::Entity::Joint::Individual])
            .returns(T::Array[Increase::Models::Entity::Joint::Individual])
        end
        def individuals=(_)
        end

        # The entity's name.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # Details of the joint entity. Will be present if `structure` is equal to `joint`.
        sig do
          params(individuals: T::Array[Increase::Models::Entity::Joint::Individual], name: String)
            .returns(T.attached_class)
        end
        def self.new(individuals:, name:)
        end

        sig { override.returns({individuals: T::Array[Increase::Models::Entity::Joint::Individual], name: String}) }
        def to_hash
        end

        class Individual < Increase::BaseModel
          # The person's address.
          sig { returns(Increase::Models::Entity::Joint::Individual::Address) }
          def address
          end

          sig do
            params(_: Increase::Models::Entity::Joint::Individual::Address)
              .returns(Increase::Models::Entity::Joint::Individual::Address)
          end
          def address=(_)
          end

          # The person's date of birth in YYYY-MM-DD format.
          sig { returns(Date) }
          def date_of_birth
          end

          sig { params(_: Date).returns(Date) }
          def date_of_birth=(_)
          end

          # A means of verifying the person's identity.
          sig { returns(Increase::Models::Entity::Joint::Individual::Identification) }
          def identification
          end

          sig do
            params(_: Increase::Models::Entity::Joint::Individual::Identification)
              .returns(Increase::Models::Entity::Joint::Individual::Identification)
          end
          def identification=(_)
          end

          # The person's legal name.
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
              .returns(T.attached_class)
          end
          def self.new(address:, date_of_birth:, identification:, name:)
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
            # The city of the address.
            sig { returns(String) }
            def city
            end

            sig { params(_: String).returns(String) }
            def city=(_)
            end

            # The first line of the address.
            sig { returns(String) }
            def line1
            end

            sig { params(_: String).returns(String) }
            def line1=(_)
            end

            # The second line of the address.
            sig { returns(T.nilable(String)) }
            def line2
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_)
            end

            # The two-letter United States Postal Service (USPS) abbreviation for the state of
            #   the address.
            sig { returns(String) }
            def state
            end

            sig { params(_: String).returns(String) }
            def state=(_)
            end

            # The ZIP code of the address.
            sig { returns(String) }
            def zip
            end

            sig { params(_: String).returns(String) }
            def zip=(_)
            end

            # The person's address.
            sig do
              params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
                .returns(T.attached_class)
            end
            def self.new(city:, line1:, line2:, state:, zip:)
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
            # A method that can be used to verify the individual's identity.
            sig { returns(Symbol) }
            def method_
            end

            sig { params(_: Symbol).returns(Symbol) }
            def method_=(_)
            end

            # The last 4 digits of the identification number that can be used to verify the
            #   individual's identity.
            sig { returns(String) }
            def number_last4
            end

            sig { params(_: String).returns(String) }
            def number_last4=(_)
            end

            # A means of verifying the person's identity.
            sig { params(method_: Symbol, number_last4: String).returns(T.attached_class) }
            def self.new(method_:, number_last4:)
            end

            sig { override.returns({method_: Symbol, number_last4: String}) }
            def to_hash
            end

            # A method that can be used to verify the individual's identity.
            class Method < Increase::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

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
            end
          end
        end
      end

      class NaturalPerson < Increase::BaseModel
        # The person's address.
        sig { returns(Increase::Models::Entity::NaturalPerson::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::Entity::NaturalPerson::Address)
            .returns(Increase::Models::Entity::NaturalPerson::Address)
        end
        def address=(_)
        end

        # The person's date of birth in YYYY-MM-DD format.
        sig { returns(Date) }
        def date_of_birth
        end

        sig { params(_: Date).returns(Date) }
        def date_of_birth=(_)
        end

        # A means of verifying the person's identity.
        sig { returns(Increase::Models::Entity::NaturalPerson::Identification) }
        def identification
        end

        sig do
          params(_: Increase::Models::Entity::NaturalPerson::Identification)
            .returns(Increase::Models::Entity::NaturalPerson::Identification)
        end
        def identification=(_)
        end

        # The person's legal name.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # Details of the natural person entity. Will be present if `structure` is equal to
        #   `natural_person`.
        sig do
          params(
            address: Increase::Models::Entity::NaturalPerson::Address,
            date_of_birth: Date,
            identification: Increase::Models::Entity::NaturalPerson::Identification,
            name: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, date_of_birth:, identification:, name:)
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
          # The city of the address.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # The first line of the address.
          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          # The second line of the address.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   the address.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # The ZIP code of the address.
          sig { returns(String) }
          def zip
          end

          sig { params(_: String).returns(String) }
          def zip=(_)
          end

          # The person's address.
          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, state:, zip:)
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
          # A method that can be used to verify the individual's identity.
          sig { returns(Symbol) }
          def method_
          end

          sig { params(_: Symbol).returns(Symbol) }
          def method_=(_)
          end

          # The last 4 digits of the identification number that can be used to verify the
          #   individual's identity.
          sig { returns(String) }
          def number_last4
          end

          sig { params(_: String).returns(String) }
          def number_last4=(_)
          end

          # A means of verifying the person's identity.
          sig { params(method_: Symbol, number_last4: String).returns(T.attached_class) }
          def self.new(method_:, number_last4:)
          end

          sig { override.returns({method_: Symbol, number_last4: String}) }
          def to_hash
          end

          # A method that can be used to verify the individual's identity.
          class Method < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

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
          end
        end
      end

      # The status of the entity.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The entity is active.
        ACTIVE = :active

        # The entity is archived, and can no longer be used to create accounts.
        ARCHIVED = :archived

        # The entity is temporarily disabled and cannot be used for financial activity.
        DISABLED = :disabled
      end

      # The entity's legal structure.
      class Structure < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      class ThirdPartyVerification < Increase::BaseModel
        # The reference identifier for the third party verification.
        sig { returns(String) }
        def reference
        end

        sig { params(_: String).returns(String) }
        def reference=(_)
        end

        # The vendor that was used to perform the verification.
        sig { returns(Symbol) }
        def vendor
        end

        sig { params(_: Symbol).returns(Symbol) }
        def vendor=(_)
        end

        # A reference to data stored in a third-party verification service. Your
        #   integration may or may not use this field.
        sig { params(reference: String, vendor: Symbol).returns(T.attached_class) }
        def self.new(reference:, vendor:)
        end

        sig { override.returns({reference: String, vendor: Symbol}) }
        def to_hash
        end

        # The vendor that was used to perform the verification.
        class Vendor < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # Alloy. See https://alloy.com for more information.
          ALLOY = :alloy

          # Middesk. See https://middesk.com for more information.
          MIDDESK = :middesk
        end
      end

      class Trust < Increase::BaseModel
        # The trust's address.
        sig { returns(Increase::Models::Entity::Trust::Address) }
        def address
        end

        sig { params(_: Increase::Models::Entity::Trust::Address).returns(Increase::Models::Entity::Trust::Address) }
        def address=(_)
        end

        # Whether the trust is `revocable` or `irrevocable`.
        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        # The ID for the File containing the formation document of the trust.
        sig { returns(T.nilable(String)) }
        def formation_document_file_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def formation_document_file_id=(_)
        end

        # The two-letter United States Postal Service (USPS) abbreviation for the state in
        #   which the trust was formed.
        sig { returns(T.nilable(String)) }
        def formation_state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def formation_state=(_)
        end

        # The grantor of the trust. Will be present if the `category` is `revocable`.
        sig { returns(T.nilable(Increase::Models::Entity::Trust::Grantor)) }
        def grantor
        end

        sig do
          params(_: T.nilable(Increase::Models::Entity::Trust::Grantor))
            .returns(T.nilable(Increase::Models::Entity::Trust::Grantor))
        end
        def grantor=(_)
        end

        # The trust's name.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The Employer Identification Number (EIN) of the trust itself.
        sig { returns(T.nilable(String)) }
        def tax_identifier
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tax_identifier=(_)
        end

        # The trustees of the trust.
        sig { returns(T::Array[Increase::Models::Entity::Trust::Trustee]) }
        def trustees
        end

        sig do
          params(_: T::Array[Increase::Models::Entity::Trust::Trustee])
            .returns(T::Array[Increase::Models::Entity::Trust::Trustee])
        end
        def trustees=(_)
        end

        # Details of the trust entity. Will be present if `structure` is equal to `trust`.
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
          # The city of the address.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # The first line of the address.
          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          # The second line of the address.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   the address.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # The ZIP code of the address.
          sig { returns(String) }
          def zip
          end

          sig { params(_: String).returns(String) }
          def zip=(_)
          end

          # The trust's address.
          sig do
            params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, state:, zip:)
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

        # Whether the trust is `revocable` or `irrevocable`.
        class Category < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # The trust is revocable by the grantor.
          REVOCABLE = :revocable

          # The trust cannot be revoked.
          IRREVOCABLE = :irrevocable
        end

        class Grantor < Increase::BaseModel
          # The person's address.
          sig { returns(Increase::Models::Entity::Trust::Grantor::Address) }
          def address
          end

          sig do
            params(_: Increase::Models::Entity::Trust::Grantor::Address)
              .returns(Increase::Models::Entity::Trust::Grantor::Address)
          end
          def address=(_)
          end

          # The person's date of birth in YYYY-MM-DD format.
          sig { returns(Date) }
          def date_of_birth
          end

          sig { params(_: Date).returns(Date) }
          def date_of_birth=(_)
          end

          # A means of verifying the person's identity.
          sig { returns(Increase::Models::Entity::Trust::Grantor::Identification) }
          def identification
          end

          sig do
            params(_: Increase::Models::Entity::Trust::Grantor::Identification)
              .returns(Increase::Models::Entity::Trust::Grantor::Identification)
          end
          def identification=(_)
          end

          # The person's legal name.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # The grantor of the trust. Will be present if the `category` is `revocable`.
          sig do
            params(
              address: Increase::Models::Entity::Trust::Grantor::Address,
              date_of_birth: Date,
              identification: Increase::Models::Entity::Trust::Grantor::Identification,
              name: String
            )
              .returns(T.attached_class)
          end
          def self.new(address:, date_of_birth:, identification:, name:)
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
            # The city of the address.
            sig { returns(String) }
            def city
            end

            sig { params(_: String).returns(String) }
            def city=(_)
            end

            # The first line of the address.
            sig { returns(String) }
            def line1
            end

            sig { params(_: String).returns(String) }
            def line1=(_)
            end

            # The second line of the address.
            sig { returns(T.nilable(String)) }
            def line2
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_)
            end

            # The two-letter United States Postal Service (USPS) abbreviation for the state of
            #   the address.
            sig { returns(String) }
            def state
            end

            sig { params(_: String).returns(String) }
            def state=(_)
            end

            # The ZIP code of the address.
            sig { returns(String) }
            def zip
            end

            sig { params(_: String).returns(String) }
            def zip=(_)
            end

            # The person's address.
            sig do
              params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
                .returns(T.attached_class)
            end
            def self.new(city:, line1:, line2:, state:, zip:)
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
            # A method that can be used to verify the individual's identity.
            sig { returns(Symbol) }
            def method_
            end

            sig { params(_: Symbol).returns(Symbol) }
            def method_=(_)
            end

            # The last 4 digits of the identification number that can be used to verify the
            #   individual's identity.
            sig { returns(String) }
            def number_last4
            end

            sig { params(_: String).returns(String) }
            def number_last4=(_)
            end

            # A means of verifying the person's identity.
            sig { params(method_: Symbol, number_last4: String).returns(T.attached_class) }
            def self.new(method_:, number_last4:)
            end

            sig { override.returns({method_: Symbol, number_last4: String}) }
            def to_hash
            end

            # A method that can be used to verify the individual's identity.
            class Method < Increase::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

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
            end
          end
        end

        class Trustee < Increase::BaseModel
          # The individual trustee of the trust. Will be present if the trustee's
          #   `structure` is equal to `individual`.
          sig { returns(T.nilable(Increase::Models::Entity::Trust::Trustee::Individual)) }
          def individual
          end

          sig do
            params(_: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual))
              .returns(T.nilable(Increase::Models::Entity::Trust::Trustee::Individual))
          end
          def individual=(_)
          end

          # The structure of the trustee. Will always be equal to `individual`.
          sig { returns(Symbol) }
          def structure
          end

          sig { params(_: Symbol).returns(Symbol) }
          def structure=(_)
          end

          sig do
            params(individual: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual), structure: Symbol)
              .returns(T.attached_class)
          end
          def self.new(individual:, structure:)
          end

          sig do
            override
              .returns({individual: T.nilable(Increase::Models::Entity::Trust::Trustee::Individual), structure: Symbol})
          end
          def to_hash
          end

          class Individual < Increase::BaseModel
            # The person's address.
            sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Address) }
            def address
            end

            sig do
              params(_: Increase::Models::Entity::Trust::Trustee::Individual::Address)
                .returns(Increase::Models::Entity::Trust::Trustee::Individual::Address)
            end
            def address=(_)
            end

            # The person's date of birth in YYYY-MM-DD format.
            sig { returns(Date) }
            def date_of_birth
            end

            sig { params(_: Date).returns(Date) }
            def date_of_birth=(_)
            end

            # A means of verifying the person's identity.
            sig { returns(Increase::Models::Entity::Trust::Trustee::Individual::Identification) }
            def identification
            end

            sig do
              params(_: Increase::Models::Entity::Trust::Trustee::Individual::Identification)
                .returns(Increase::Models::Entity::Trust::Trustee::Individual::Identification)
            end
            def identification=(_)
            end

            # The person's legal name.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The individual trustee of the trust. Will be present if the trustee's
            #   `structure` is equal to `individual`.
            sig do
              params(
                address: Increase::Models::Entity::Trust::Trustee::Individual::Address,
                date_of_birth: Date,
                identification: Increase::Models::Entity::Trust::Trustee::Individual::Identification,
                name: String
              )
                .returns(T.attached_class)
            end
            def self.new(address:, date_of_birth:, identification:, name:)
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
              # The city of the address.
              sig { returns(String) }
              def city
              end

              sig { params(_: String).returns(String) }
              def city=(_)
              end

              # The first line of the address.
              sig { returns(String) }
              def line1
              end

              sig { params(_: String).returns(String) }
              def line1=(_)
              end

              # The second line of the address.
              sig { returns(T.nilable(String)) }
              def line2
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_)
              end

              # The two-letter United States Postal Service (USPS) abbreviation for the state of
              #   the address.
              sig { returns(String) }
              def state
              end

              sig { params(_: String).returns(String) }
              def state=(_)
              end

              # The ZIP code of the address.
              sig { returns(String) }
              def zip
              end

              sig { params(_: String).returns(String) }
              def zip=(_)
              end

              # The person's address.
              sig do
                params(city: String, line1: String, line2: T.nilable(String), state: String, zip: String)
                  .returns(T.attached_class)
              end
              def self.new(city:, line1:, line2:, state:, zip:)
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
              # A method that can be used to verify the individual's identity.
              sig { returns(Symbol) }
              def method_
              end

              sig { params(_: Symbol).returns(Symbol) }
              def method_=(_)
              end

              # The last 4 digits of the identification number that can be used to verify the
              #   individual's identity.
              sig { returns(String) }
              def number_last4
              end

              sig { params(_: String).returns(String) }
              def number_last4=(_)
              end

              # A means of verifying the person's identity.
              sig { params(method_: Symbol, number_last4: String).returns(T.attached_class) }
              def self.new(method_:, number_last4:)
              end

              sig { override.returns({method_: Symbol, number_last4: String}) }
              def to_hash
              end

              # A method that can be used to verify the individual's identity.
              class Method < Increase::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

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
              end
            end
          end

          # The structure of the trustee. Will always be equal to `individual`.
          class Structure < Increase::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            # The trustee is an individual.
            INDIVIDUAL = :individual
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `entity`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ENTITY = :entity
      end
    end
  end
end
