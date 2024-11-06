# frozen_string_literal: true

module Increase
  module Models
    class Entity < Increase::BaseModel
      # @!attribute [rw] id
      #   The entity's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] corporation
      #   Details of the corporation entity. Will be present if `structure` is equal to `corporation`.
      #   @return [Increase::Models::Entity::Corporation]
      required :corporation, -> { Increase::Models::Entity::Corporation }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Entity was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   The entity's description for display purposes.
      #   @return [String]
      required :description, String

      # @!attribute [rw] details_confirmed_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Entity's details were most recently confirmed.
      #   @return [Time]
      required :details_confirmed_at, Time

      # @!attribute [rw] government_authority
      #   Details of the government authority entity. Will be present if `structure` is equal to `government_authority`.
      #   @return [Increase::Models::Entity::GovernmentAuthority]
      required :government_authority, -> { Increase::Models::Entity::GovernmentAuthority }

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] joint
      #   Details of the joint entity. Will be present if `structure` is equal to `joint`.
      #   @return [Increase::Models::Entity::Joint]
      required :joint, -> { Increase::Models::Entity::Joint }

      # @!attribute [rw] natural_person
      #   Details of the natural person entity. Will be present if `structure` is equal to `natural_person`.
      #   @return [Increase::Models::Entity::NaturalPerson]
      required :natural_person, -> { Increase::Models::Entity::NaturalPerson }

      # @!attribute [rw] status
      #   The status of the entity.
      #   @return [Symbol, Increase::Models::Entity::Status]
      required :status, enum: -> { Increase::Models::Entity::Status }

      # @!attribute [rw] structure
      #   The entity's legal structure.
      #   @return [Symbol, Increase::Models::Entity::Structure]
      required :structure, enum: -> { Increase::Models::Entity::Structure }

      # @!attribute [rw] supplemental_documents
      #   Additional documentation associated with the entity. This is limited to the first 10 documents for an entity. If an entity has more than 10 documents, use the GET /entity_supplemental_documents list endpoint to retrieve them.
      #   @return [Array<Increase::Models::EntitySupplementalDocument>]
      required :supplemental_documents,
               Increase::ArrayOf.new(-> { Increase::Models::EntitySupplementalDocument })

      # @!attribute [rw] third_party_verification
      #   A reference to data stored in a third-party verification service. Your integration may or may not use this field.
      #   @return [Increase::Models::Entity::ThirdPartyVerification]
      required :third_party_verification, -> { Increase::Models::Entity::ThirdPartyVerification }

      # @!attribute [rw] trust_
      #   Details of the trust entity. Will be present if `structure` is equal to `trust`.
      #   @return [Increase::Models::Entity::Trust]
      required :trust_, -> { Increase::Models::Entity::Trust }, api_name: :trust

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `entity`.
      #   @return [Symbol, Increase::Models::Entity::Type]
      required :type, enum: -> { Increase::Models::Entity::Type }

      class Corporation < Increase::BaseModel
        # @!attribute [rw] address
        #   The corporation's address.
        #   @return [Increase::Models::Entity::Corporation::Address]
        required :address, -> { Increase::Models::Entity::Corporation::Address }

        # @!attribute [rw] beneficial_owners
        #   The identifying details of anyone controlling or owning 25% or more of the corporation.
        #   @return [Array<Increase::Models::Entity::Corporation::BeneficialOwner>]
        required :beneficial_owners,
                 Increase::ArrayOf.new(-> { Increase::Models::Entity::Corporation::BeneficialOwner })

        # @!attribute [rw] incorporation_state
        #   The two-letter United States Postal Service (USPS) abbreviation for the corporation's state of incorporation.
        #   @return [String]
        required :incorporation_state, String

        # @!attribute [rw] industry_code
        #   The numeric North American Industry Classification System (NAICS) code submitted for the corporation.
        #   @return [String]
        required :industry_code, String

        # @!attribute [rw] name_
        #   The legal name of the corporation.
        #   @return [String]
        required :name_, String, api_name: :name

        # @!attribute [rw] tax_identifier
        #   The Employer Identification Number (EIN) for the corporation.
        #   @return [String]
        required :tax_identifier, String

        # @!attribute [rw] website
        #   The website of the corporation.
        #   @return [String]
        required :website, String

        class Address < Increase::BaseModel
          # @!attribute [rw] city
          #   The city of the address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] line2
          #   The second line of the address.
          #   @return [String]
          required :line2, String

          # @!attribute [rw] state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] zip
          #   The ZIP code of the address.
          #   @return [String]
          required :zip, String

          # @!parse
          #   # Create a new instance of Address from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :city The city of the address.
          #   #   @option data [String] :line1 The first line of the address.
          #   #   @option data [String] :line2 The second line of the address.
          #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   #     the address.
          #   #   @option data [String] :zip The ZIP code of the address.
          #   def initialize(data = {}) = super
        end

        class BeneficialOwner < Increase::BaseModel
          # @!attribute [rw] beneficial_owner_id
          #   The identifier of this beneficial owner.
          #   @return [String]
          required :beneficial_owner_id, String

          # @!attribute [rw] company_title
          #   This person's role or title within the entity.
          #   @return [String]
          required :company_title, String

          # @!attribute [rw] individual
          #   Personal details for the beneficial owner.
          #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual]
          required :individual, -> { Increase::Models::Entity::Corporation::BeneficialOwner::Individual }

          # @!attribute [rw] prong
          #   Why this person is considered a beneficial owner of the entity.
          #   @return [Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Prong]
          required :prong, enum: -> { Increase::Models::Entity::Corporation::BeneficialOwner::Prong }

          class Individual < Increase::BaseModel
            # @!attribute [rw] address
            #   The person's address.
            #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address]
            required :address,
                     -> {
                       Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address
                     }

            # @!attribute [rw] date_of_birth
            #   The person's date of birth in YYYY-MM-DD format.
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute [rw] identification
            #   A means of verifying the person's identity.
            #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification]
            required :identification,
                     -> { Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification }

            # @!attribute [rw] name_
            #   The person's legal name.
            #   @return [String]
            required :name_, String, api_name: :name

            class Address < Increase::BaseModel
              # @!attribute [rw] city
              #   The city of the address.
              #   @return [String]
              required :city, String

              # @!attribute [rw] line1
              #   The first line of the address.
              #   @return [String]
              required :line1, String

              # @!attribute [rw] line2
              #   The second line of the address.
              #   @return [String]
              required :line2, String

              # @!attribute [rw] state
              #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
              #   @return [String]
              required :state, String

              # @!attribute [rw] zip
              #   The ZIP code of the address.
              #   @return [String]
              required :zip, String

              # @!parse
              #   # Create a new instance of Address from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :city The city of the address.
              #   #   @option data [String] :line1 The first line of the address.
              #   #   @option data [String] :line2 The second line of the address.
              #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
              #   #     the address.
              #   #   @option data [String] :zip The ZIP code of the address.
              #   def initialize(data = {}) = super
            end

            class Identification < Increase::BaseModel
              # @!attribute [rw] method_
              #   A method that can be used to verify the individual's identity.
              #   @return [Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method]
              required :method_,
                       api_name: :method,
                       enum: -> {
                         Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method
                       }

              # @!attribute [rw] number_last4
              #   The last 4 digits of the identification number that can be used to verify the individual's identity.
              #   @return [String]
              required :number_last4, String

              # A method that can be used to verify the individual's identity.
              class Method < Increase::Enum
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

              # @!parse
              #   # Create a new instance of Identification from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :method A method that can be used to verify the individual's identity.
              #   #   @option data [String] :number_last4 The last 4 digits of the identification number that can be used to verify the
              #   #     individual's identity.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of Individual from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Object] :address The person's address.
            #   #   @option data [String] :date_of_birth The person's date of birth in YYYY-MM-DD format.
            #   #   @option data [Object] :identification A means of verifying the person's identity.
            #   #   @option data [String] :name The person's legal name.
            #   def initialize(data = {}) = super
          end

          # Why this person is considered a beneficial owner of the entity.
          class Prong < Increase::Enum
            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP = :ownership

            # A person who manages, directs, or has significant control of the entity.
            CONTROL = :control
          end

          # @!parse
          #   # Create a new instance of BeneficialOwner from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :beneficial_owner_id The identifier of this beneficial owner.
          #   #   @option data [String] :company_title This person's role or title within the entity.
          #   #   @option data [Object] :individual Personal details for the beneficial owner.
          #   #   @option data [String] :prong Why this person is considered a beneficial owner of the entity.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Corporation from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :address The corporation's address.
        #   #   @option data [Array<Object>] :beneficial_owners The identifying details of anyone controlling or owning 25% or more of the
        #   #     corporation.
        #   #   @option data [String] :incorporation_state The two-letter United States Postal Service (USPS) abbreviation for the
        #   #     corporation's state of incorporation.
        #   #   @option data [String] :industry_code The numeric North American Industry Classification System (NAICS) code submitted
        #   #     for the corporation.
        #   #   @option data [String] :name The legal name of the corporation.
        #   #   @option data [String] :tax_identifier The Employer Identification Number (EIN) for the corporation.
        #   #   @option data [String] :website The website of the corporation.
        #   def initialize(data = {}) = super
      end

      class GovernmentAuthority < Increase::BaseModel
        # @!attribute [rw] address
        #   The government authority's address.
        #   @return [Increase::Models::Entity::GovernmentAuthority::Address]
        required :address, -> { Increase::Models::Entity::GovernmentAuthority::Address }

        # @!attribute [rw] authorized_persons
        #   The identifying details of authorized persons of the government authority.
        #   @return [Array<Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson>]
        required :authorized_persons,
                 Increase::ArrayOf.new(-> { Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson })

        # @!attribute [rw] category
        #   The category of the government authority.
        #   @return [Symbol, Increase::Models::Entity::GovernmentAuthority::Category]
        required :category, enum: -> { Increase::Models::Entity::GovernmentAuthority::Category }

        # @!attribute [rw] name_
        #   The government authority's name.
        #   @return [String]
        required :name_, String, api_name: :name

        # @!attribute [rw] tax_identifier
        #   The Employer Identification Number (EIN) of the government authority.
        #   @return [String]
        required :tax_identifier, String

        # @!attribute [rw] website
        #   The government authority's website.
        #   @return [String]
        required :website, String

        class Address < Increase::BaseModel
          # @!attribute [rw] city
          #   The city of the address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] line2
          #   The second line of the address.
          #   @return [String]
          required :line2, String

          # @!attribute [rw] state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] zip
          #   The ZIP code of the address.
          #   @return [String]
          required :zip, String

          # @!parse
          #   # Create a new instance of Address from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :city The city of the address.
          #   #   @option data [String] :line1 The first line of the address.
          #   #   @option data [String] :line2 The second line of the address.
          #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   #     the address.
          #   #   @option data [String] :zip The ZIP code of the address.
          #   def initialize(data = {}) = super
        end

        class AuthorizedPerson < Increase::BaseModel
          # @!attribute [rw] authorized_person_id
          #   The identifier of this authorized person.
          #   @return [String]
          required :authorized_person_id, String

          # @!attribute [rw] name_
          #   The person's legal name.
          #   @return [String]
          required :name_, String, api_name: :name

          # @!parse
          #   # Create a new instance of AuthorizedPerson from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :authorized_person_id The identifier of this authorized person.
          #   #   @option data [String] :name The person's legal name.
          #   def initialize(data = {}) = super
        end

        # The category of the government authority.
        class Category < Increase::Enum
          # The Public Entity is a Municipality.
          MUNICIPALITY = :municipality
        end

        # @!parse
        #   # Create a new instance of GovernmentAuthority from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :address The government authority's address.
        #   #   @option data [Array<Object>] :authorized_persons The identifying details of authorized persons of the government authority.
        #   #   @option data [String] :category The category of the government authority.
        #   #   @option data [String] :name The government authority's name.
        #   #   @option data [String] :tax_identifier The Employer Identification Number (EIN) of the government authority.
        #   #   @option data [String] :website The government authority's website.
        #   def initialize(data = {}) = super
      end

      class Joint < Increase::BaseModel
        # @!attribute [rw] individuals
        #   The two individuals that share control of the entity.
        #   @return [Array<Increase::Models::Entity::Joint::Individual>]
        required :individuals, Increase::ArrayOf.new(-> { Increase::Models::Entity::Joint::Individual })

        # @!attribute [rw] name_
        #   The entity's name.
        #   @return [String]
        required :name_, String, api_name: :name

        class Individual < Increase::BaseModel
          # @!attribute [rw] address
          #   The person's address.
          #   @return [Increase::Models::Entity::Joint::Individual::Address]
          required :address, -> { Increase::Models::Entity::Joint::Individual::Address }

          # @!attribute [rw] date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute [rw] identification
          #   A means of verifying the person's identity.
          #   @return [Increase::Models::Entity::Joint::Individual::Identification]
          required :identification, -> { Increase::Models::Entity::Joint::Individual::Identification }

          # @!attribute [rw] name_
          #   The person's legal name.
          #   @return [String]
          required :name_, String, api_name: :name

          class Address < Increase::BaseModel
            # @!attribute [rw] city
            #   The city of the address.
            #   @return [String]
            required :city, String

            # @!attribute [rw] line1
            #   The first line of the address.
            #   @return [String]
            required :line1, String

            # @!attribute [rw] line2
            #   The second line of the address.
            #   @return [String]
            required :line2, String

            # @!attribute [rw] state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
            #   @return [String]
            required :state, String

            # @!attribute [rw] zip
            #   The ZIP code of the address.
            #   @return [String]
            required :zip, String

            # @!parse
            #   # Create a new instance of Address from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :city The city of the address.
            #   #   @option data [String] :line1 The first line of the address.
            #   #   @option data [String] :line2 The second line of the address.
            #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
            #   #     the address.
            #   #   @option data [String] :zip The ZIP code of the address.
            #   def initialize(data = {}) = super
          end

          class Identification < Increase::BaseModel
            # @!attribute [rw] method_
            #   A method that can be used to verify the individual's identity.
            #   @return [Symbol, Increase::Models::Entity::Joint::Individual::Identification::Method]
            required :method_,
                     api_name: :method,
                     enum: -> { Increase::Models::Entity::Joint::Individual::Identification::Method }

            # @!attribute [rw] number_last4
            #   The last 4 digits of the identification number that can be used to verify the individual's identity.
            #   @return [String]
            required :number_last4, String

            # A method that can be used to verify the individual's identity.
            class Method < Increase::Enum
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

            # @!parse
            #   # Create a new instance of Identification from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :method A method that can be used to verify the individual's identity.
            #   #   @option data [String] :number_last4 The last 4 digits of the identification number that can be used to verify the
            #   #     individual's identity.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Individual from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :address The person's address.
          #   #   @option data [String] :date_of_birth The person's date of birth in YYYY-MM-DD format.
          #   #   @option data [Object] :identification A means of verifying the person's identity.
          #   #   @option data [String] :name The person's legal name.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Joint from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Array<Object>] :individuals The two individuals that share control of the entity.
        #   #   @option data [String] :name The entity's name.
        #   def initialize(data = {}) = super
      end

      class NaturalPerson < Increase::BaseModel
        # @!attribute [rw] address
        #   The person's address.
        #   @return [Increase::Models::Entity::NaturalPerson::Address]
        required :address, -> { Increase::Models::Entity::NaturalPerson::Address }

        # @!attribute [rw] date_of_birth
        #   The person's date of birth in YYYY-MM-DD format.
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute [rw] identification
        #   A means of verifying the person's identity.
        #   @return [Increase::Models::Entity::NaturalPerson::Identification]
        required :identification, -> { Increase::Models::Entity::NaturalPerson::Identification }

        # @!attribute [rw] name_
        #   The person's legal name.
        #   @return [String]
        required :name_, String, api_name: :name

        class Address < Increase::BaseModel
          # @!attribute [rw] city
          #   The city of the address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] line2
          #   The second line of the address.
          #   @return [String]
          required :line2, String

          # @!attribute [rw] state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] zip
          #   The ZIP code of the address.
          #   @return [String]
          required :zip, String

          # @!parse
          #   # Create a new instance of Address from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :city The city of the address.
          #   #   @option data [String] :line1 The first line of the address.
          #   #   @option data [String] :line2 The second line of the address.
          #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   #     the address.
          #   #   @option data [String] :zip The ZIP code of the address.
          #   def initialize(data = {}) = super
        end

        class Identification < Increase::BaseModel
          # @!attribute [rw] method_
          #   A method that can be used to verify the individual's identity.
          #   @return [Symbol, Increase::Models::Entity::NaturalPerson::Identification::Method]
          required :method_,
                   api_name: :method,
                   enum: -> { Increase::Models::Entity::NaturalPerson::Identification::Method }

          # @!attribute [rw] number_last4
          #   The last 4 digits of the identification number that can be used to verify the individual's identity.
          #   @return [String]
          required :number_last4, String

          # A method that can be used to verify the individual's identity.
          class Method < Increase::Enum
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

          # @!parse
          #   # Create a new instance of Identification from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :method A method that can be used to verify the individual's identity.
          #   #   @option data [String] :number_last4 The last 4 digits of the identification number that can be used to verify the
          #   #     individual's identity.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of NaturalPerson from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :address The person's address.
        #   #   @option data [String] :date_of_birth The person's date of birth in YYYY-MM-DD format.
        #   #   @option data [Object] :identification A means of verifying the person's identity.
        #   #   @option data [String] :name The person's legal name.
        #   def initialize(data = {}) = super
      end

      # The status of the entity.
      class Status < Increase::Enum
        # The entity is active.
        ACTIVE = :active

        # The entity is archived, and can no longer be used to create accounts.
        ARCHIVED = :archived

        # The entity is temporarily disabled and cannot be used for financial activity.
        DISABLED = :disabled
      end

      # The entity's legal structure.
      class Structure < Increase::Enum
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
        # @!attribute [rw] reference
        #   The reference identifier for the third party verification.
        #   @return [String]
        required :reference, String

        # @!attribute [rw] vendor
        #   The vendor that was used to perform the verification.
        #   @return [Symbol, Increase::Models::Entity::ThirdPartyVerification::Vendor]
        required :vendor, enum: -> { Increase::Models::Entity::ThirdPartyVerification::Vendor }

        # The vendor that was used to perform the verification.
        class Vendor < Increase::Enum
          # Alloy. See https://alloy.com for more information.
          ALLOY = :alloy

          # Middesk. See https://middesk.com for more information.
          MIDDESK = :middesk
        end

        # @!parse
        #   # Create a new instance of ThirdPartyVerification from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :reference The reference identifier for the third party verification.
        #   #   @option data [String] :vendor The vendor that was used to perform the verification.
        #   def initialize(data = {}) = super
      end

      class Trust < Increase::BaseModel
        # @!attribute [rw] address
        #   The trust's address.
        #   @return [Increase::Models::Entity::Trust::Address]
        required :address, -> { Increase::Models::Entity::Trust::Address }

        # @!attribute [rw] category
        #   Whether the trust is `revocable` or `irrevocable`.
        #   @return [Symbol, Increase::Models::Entity::Trust::Category]
        required :category, enum: -> { Increase::Models::Entity::Trust::Category }

        # @!attribute [rw] formation_document_file_id
        #   The ID for the File containing the formation document of the trust.
        #   @return [String]
        required :formation_document_file_id, String

        # @!attribute [rw] formation_state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state in which the trust was formed.
        #   @return [String]
        required :formation_state, String

        # @!attribute [rw] grantor
        #   The grantor of the trust. Will be present if the `category` is `revocable`.
        #   @return [Increase::Models::Entity::Trust::Grantor]
        required :grantor, -> { Increase::Models::Entity::Trust::Grantor }

        # @!attribute [rw] name_
        #   The trust's name.
        #   @return [String]
        required :name_, String, api_name: :name

        # @!attribute [rw] tax_identifier
        #   The Employer Identification Number (EIN) of the trust itself.
        #   @return [String]
        required :tax_identifier, String

        # @!attribute [rw] trustees
        #   The trustees of the trust.
        #   @return [Array<Increase::Models::Entity::Trust::Trustee>]
        required :trustees, Increase::ArrayOf.new(-> { Increase::Models::Entity::Trust::Trustee })

        class Address < Increase::BaseModel
          # @!attribute [rw] city
          #   The city of the address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] line2
          #   The second line of the address.
          #   @return [String]
          required :line2, String

          # @!attribute [rw] state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] zip
          #   The ZIP code of the address.
          #   @return [String]
          required :zip, String

          # @!parse
          #   # Create a new instance of Address from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :city The city of the address.
          #   #   @option data [String] :line1 The first line of the address.
          #   #   @option data [String] :line2 The second line of the address.
          #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   #     the address.
          #   #   @option data [String] :zip The ZIP code of the address.
          #   def initialize(data = {}) = super
        end

        # Whether the trust is `revocable` or `irrevocable`.
        class Category < Increase::Enum
          # The trust is revocable by the grantor.
          REVOCABLE = :revocable

          # The trust cannot be revoked.
          IRREVOCABLE = :irrevocable
        end

        class Grantor < Increase::BaseModel
          # @!attribute [rw] address
          #   The person's address.
          #   @return [Increase::Models::Entity::Trust::Grantor::Address]
          required :address, -> { Increase::Models::Entity::Trust::Grantor::Address }

          # @!attribute [rw] date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute [rw] identification
          #   A means of verifying the person's identity.
          #   @return [Increase::Models::Entity::Trust::Grantor::Identification]
          required :identification, -> { Increase::Models::Entity::Trust::Grantor::Identification }

          # @!attribute [rw] name_
          #   The person's legal name.
          #   @return [String]
          required :name_, String, api_name: :name

          class Address < Increase::BaseModel
            # @!attribute [rw] city
            #   The city of the address.
            #   @return [String]
            required :city, String

            # @!attribute [rw] line1
            #   The first line of the address.
            #   @return [String]
            required :line1, String

            # @!attribute [rw] line2
            #   The second line of the address.
            #   @return [String]
            required :line2, String

            # @!attribute [rw] state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
            #   @return [String]
            required :state, String

            # @!attribute [rw] zip
            #   The ZIP code of the address.
            #   @return [String]
            required :zip, String

            # @!parse
            #   # Create a new instance of Address from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :city The city of the address.
            #   #   @option data [String] :line1 The first line of the address.
            #   #   @option data [String] :line2 The second line of the address.
            #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
            #   #     the address.
            #   #   @option data [String] :zip The ZIP code of the address.
            #   def initialize(data = {}) = super
          end

          class Identification < Increase::BaseModel
            # @!attribute [rw] method_
            #   A method that can be used to verify the individual's identity.
            #   @return [Symbol, Increase::Models::Entity::Trust::Grantor::Identification::Method]
            required :method_,
                     api_name: :method,
                     enum: -> { Increase::Models::Entity::Trust::Grantor::Identification::Method }

            # @!attribute [rw] number_last4
            #   The last 4 digits of the identification number that can be used to verify the individual's identity.
            #   @return [String]
            required :number_last4, String

            # A method that can be used to verify the individual's identity.
            class Method < Increase::Enum
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

            # @!parse
            #   # Create a new instance of Identification from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :method A method that can be used to verify the individual's identity.
            #   #   @option data [String] :number_last4 The last 4 digits of the identification number that can be used to verify the
            #   #     individual's identity.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Grantor from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :address The person's address.
          #   #   @option data [String] :date_of_birth The person's date of birth in YYYY-MM-DD format.
          #   #   @option data [Object] :identification A means of verifying the person's identity.
          #   #   @option data [String] :name The person's legal name.
          #   def initialize(data = {}) = super
        end

        class Trustee < Increase::BaseModel
          # @!attribute [rw] individual
          #   The individual trustee of the trust. Will be present if the trustee's `structure` is equal to `individual`.
          #   @return [Increase::Models::Entity::Trust::Trustee::Individual]
          required :individual, -> { Increase::Models::Entity::Trust::Trustee::Individual }

          # @!attribute [rw] structure
          #   The structure of the trustee. Will always be equal to `individual`.
          #   @return [Symbol, Increase::Models::Entity::Trust::Trustee::Structure]
          required :structure, enum: -> { Increase::Models::Entity::Trust::Trustee::Structure }

          class Individual < Increase::BaseModel
            # @!attribute [rw] address
            #   The person's address.
            #   @return [Increase::Models::Entity::Trust::Trustee::Individual::Address]
            required :address, -> { Increase::Models::Entity::Trust::Trustee::Individual::Address }

            # @!attribute [rw] date_of_birth
            #   The person's date of birth in YYYY-MM-DD format.
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute [rw] identification
            #   A means of verifying the person's identity.
            #   @return [Increase::Models::Entity::Trust::Trustee::Individual::Identification]
            required :identification,
                     -> {
                       Increase::Models::Entity::Trust::Trustee::Individual::Identification
                     }

            # @!attribute [rw] name_
            #   The person's legal name.
            #   @return [String]
            required :name_, String, api_name: :name

            class Address < Increase::BaseModel
              # @!attribute [rw] city
              #   The city of the address.
              #   @return [String]
              required :city, String

              # @!attribute [rw] line1
              #   The first line of the address.
              #   @return [String]
              required :line1, String

              # @!attribute [rw] line2
              #   The second line of the address.
              #   @return [String]
              required :line2, String

              # @!attribute [rw] state
              #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
              #   @return [String]
              required :state, String

              # @!attribute [rw] zip
              #   The ZIP code of the address.
              #   @return [String]
              required :zip, String

              # @!parse
              #   # Create a new instance of Address from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :city The city of the address.
              #   #   @option data [String] :line1 The first line of the address.
              #   #   @option data [String] :line2 The second line of the address.
              #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
              #   #     the address.
              #   #   @option data [String] :zip The ZIP code of the address.
              #   def initialize(data = {}) = super
            end

            class Identification < Increase::BaseModel
              # @!attribute [rw] method_
              #   A method that can be used to verify the individual's identity.
              #   @return [Symbol, Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method]
              required :method_,
                       api_name: :method,
                       enum: -> {
                         Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method
                       }

              # @!attribute [rw] number_last4
              #   The last 4 digits of the identification number that can be used to verify the individual's identity.
              #   @return [String]
              required :number_last4, String

              # A method that can be used to verify the individual's identity.
              class Method < Increase::Enum
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

              # @!parse
              #   # Create a new instance of Identification from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :method A method that can be used to verify the individual's identity.
              #   #   @option data [String] :number_last4 The last 4 digits of the identification number that can be used to verify the
              #   #     individual's identity.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of Individual from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Object] :address The person's address.
            #   #   @option data [String] :date_of_birth The person's date of birth in YYYY-MM-DD format.
            #   #   @option data [Object] :identification A means of verifying the person's identity.
            #   #   @option data [String] :name The person's legal name.
            #   def initialize(data = {}) = super
          end

          # The structure of the trustee. Will always be equal to `individual`.
          class Structure < Increase::Enum
            # The trustee is an individual.
            INDIVIDUAL = :individual
          end

          # @!parse
          #   # Create a new instance of Trustee from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :individual The individual trustee of the trust. Will be present if the trustee's
          #   #     `structure` is equal to `individual`.
          #   #   @option data [String] :structure The structure of the trustee. Will always be equal to `individual`.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Trust from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :address The trust's address.
        #   #   @option data [String] :category Whether the trust is `revocable` or `irrevocable`.
        #   #   @option data [String] :formation_document_file_id The ID for the File containing the formation document of the trust.
        #   #   @option data [String] :formation_state The two-letter United States Postal Service (USPS) abbreviation for the state in
        #   #     which the trust was formed.
        #   #   @option data [Object] :grantor The grantor of the trust. Will be present if the `category` is `revocable`.
        #   #   @option data [String] :name The trust's name.
        #   #   @option data [String] :tax_identifier The Employer Identification Number (EIN) of the trust itself.
        #   #   @option data [Array<Object>] :trustees The trustees of the trust.
        #   def initialize(data = {}) = super
      end

      # A constant representing the object's type. For this resource it will always be `entity`.
      class Type < Increase::Enum
        ENTITY = :entity
      end

      # @!parse
      #   # Create a new instance of Entity from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The entity's identifier.
      #   #   @option data [Object] :corporation Details of the corporation entity. Will be present if `structure` is equal to
      #   #     `corporation`.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Entity
      #   #     was created.
      #   #   @option data [String] :description The entity's description for display purposes.
      #   #   @option data [String] :details_confirmed_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the
      #   #     Entity's details were most recently confirmed.
      #   #   @option data [Object] :government_authority Details of the government authority entity. Will be present if `structure` is
      #   #     equal to `government_authority`.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [Object] :joint Details of the joint entity. Will be present if `structure` is equal to `joint`.
      #   #   @option data [Object] :natural_person Details of the natural person entity. Will be present if `structure` is equal to
      #   #     `natural_person`.
      #   #   @option data [String] :status The status of the entity.
      #   #   @option data [String] :structure The entity's legal structure.
      #   #   @option data [Array<Object>] :supplemental_documents Additional documentation associated with the entity. This is limited to the
      #   #     first 10 documents for an entity. If an entity has more than 10 documents, use
      #   #     the GET /entity_supplemental_documents list endpoint to retrieve them.
      #   #   @option data [Object] :third_party_verification A reference to data stored in a third-party verification service. Your
      #   #     integration may or may not use this field.
      #   #   @option data [Object] :trust Details of the trust entity. Will be present if `structure` is equal to `trust`.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `entity`.
      #   def initialize(data = {}) = super
    end
  end
end
