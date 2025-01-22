# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # entity => {
    #   id: String,
    #   corporation: Increase::Models::Entity::Corporation,
    #   created_at: Time,
    #   description: String,
    #   details_confirmed_at: Time,
    #   **_
    # }
    # ```
    class Entity < Increase::BaseModel
      # @!attribute id
      #   The entity's identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute corporation
      #   Details of the corporation entity. Will be present if `structure` is equal to
      #     `corporation`.
      #
      #   @return [Increase::Models::Entity::Corporation, nil]
      required :corporation, -> { Increase::Models::Entity::Corporation }, nil?: true

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Entity
      #     was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The entity's description for display purposes.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute details_confirmed_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the
      #     Entity's details were most recently confirmed.
      #
      #   @return [Time, nil]
      required :details_confirmed_at, Time, nil?: true

      # @!attribute government_authority
      #   Details of the government authority entity. Will be present if `structure` is
      #     equal to `government_authority`.
      #
      #   @return [Increase::Models::Entity::GovernmentAuthority, nil]
      required :government_authority, -> { Increase::Models::Entity::GovernmentAuthority }, nil?: true

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute joint
      #   Details of the joint entity. Will be present if `structure` is equal to `joint`.
      #
      #   @return [Increase::Models::Entity::Joint, nil]
      required :joint, -> { Increase::Models::Entity::Joint }, nil?: true

      # @!attribute natural_person
      #   Details of the natural person entity. Will be present if `structure` is equal to
      #     `natural_person`.
      #
      #   @return [Increase::Models::Entity::NaturalPerson, nil]
      required :natural_person, -> { Increase::Models::Entity::NaturalPerson }, nil?: true

      # @!attribute status
      #   The status of the entity.
      #
      #   @return [Symbol, Increase::Models::Entity::Status]
      required :status, enum: -> { Increase::Models::Entity::Status }

      # @!attribute structure
      #   The entity's legal structure.
      #
      #   @return [Symbol, Increase::Models::Entity::Structure]
      required :structure, enum: -> { Increase::Models::Entity::Structure }

      # @!attribute supplemental_documents
      #   Additional documentation associated with the entity. This is limited to the
      #     first 10 documents for an entity. If an entity has more than 10 documents, use
      #     the GET /entity_supplemental_documents list endpoint to retrieve them.
      #
      #   @return [Array<Increase::Models::EntitySupplementalDocument>]
      required :supplemental_documents, -> { Increase::ArrayOf[Increase::Models::EntitySupplementalDocument] }

      # @!attribute third_party_verification
      #   A reference to data stored in a third-party verification service. Your
      #     integration may or may not use this field.
      #
      #   @return [Increase::Models::Entity::ThirdPartyVerification, nil]
      required :third_party_verification, -> { Increase::Models::Entity::ThirdPartyVerification }, nil?: true

      # @!attribute trust
      #   Details of the trust entity. Will be present if `structure` is equal to `trust`.
      #
      #   @return [Increase::Models::Entity::Trust, nil]
      required :trust, -> { Increase::Models::Entity::Trust }, nil?: true

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `entity`.
      #
      #   @return [Symbol, Increase::Models::Entity::Type]
      required :type, enum: -> { Increase::Models::Entity::Type }

      # @!parse
      #   # Entities are the legal entities that own accounts. They can be people,
      #   #   corporations, partnerships, government authorities, or trusts.
      #   #
      #   # @param id [String]
      #   # @param corporation [Increase::Models::Entity::Corporation, nil]
      #   # @param created_at [String]
      #   # @param description [String, nil]
      #   # @param details_confirmed_at [String, nil]
      #   # @param government_authority [Increase::Models::Entity::GovernmentAuthority, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param joint [Increase::Models::Entity::Joint, nil]
      #   # @param natural_person [Increase::Models::Entity::NaturalPerson, nil]
      #   # @param status [String]
      #   # @param structure [String]
      #   # @param supplemental_documents [Array<Increase::Models::EntitySupplementalDocument>]
      #   # @param third_party_verification [Increase::Models::Entity::ThirdPartyVerification, nil]
      #   # @param trust [Increase::Models::Entity::Trust, nil]
      #   # @param type [String]
      #   #
      #   def initialize(
      #     id:,
      #     corporation:,
      #     created_at:,
      #     description:,
      #     details_confirmed_at:,
      #     government_authority:,
      #     idempotency_key:,
      #     joint:,
      #     natural_person:,
      #     status:,
      #     structure:,
      #     supplemental_documents:,
      #     third_party_verification:,
      #     trust:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # corporation => {
      #   address: Increase::Models::Entity::Corporation::Address,
      #   beneficial_owners: -> { Increase::ArrayOf[Increase::Models::Entity::Corporation::BeneficialOwner] === _1 },
      #   incorporation_state: String,
      #   industry_code: String,
      #   name: String,
      #   **_
      # }
      # ```
      class Corporation < Increase::BaseModel
        # @!attribute address
        #   The corporation's address.
        #
        #   @return [Increase::Models::Entity::Corporation::Address]
        required :address, -> { Increase::Models::Entity::Corporation::Address }

        # @!attribute beneficial_owners
        #   The identifying details of anyone controlling or owning 25% or more of the
        #     corporation.
        #
        #   @return [Array<Increase::Models::Entity::Corporation::BeneficialOwner>]
        required :beneficial_owners,
                 -> { Increase::ArrayOf[Increase::Models::Entity::Corporation::BeneficialOwner] }

        # @!attribute incorporation_state
        #   The two-letter United States Postal Service (USPS) abbreviation for the
        #     corporation's state of incorporation.
        #
        #   @return [String, nil]
        required :incorporation_state, String, nil?: true

        # @!attribute industry_code
        #   The numeric North American Industry Classification System (NAICS) code submitted
        #     for the corporation.
        #
        #   @return [String, nil]
        required :industry_code, String, nil?: true

        # @!attribute name
        #   The legal name of the corporation.
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   The Employer Identification Number (EIN) for the corporation.
        #
        #   @return [String, nil]
        required :tax_identifier, String, nil?: true

        # @!attribute website
        #   The website of the corporation.
        #
        #   @return [String, nil]
        required :website, String, nil?: true

        # @!parse
        #   # Details of the corporation entity. Will be present if `structure` is equal to
        #   #   `corporation`.
        #   #
        #   # @param address [Increase::Models::Entity::Corporation::Address]
        #   # @param beneficial_owners [Array<Increase::Models::Entity::Corporation::BeneficialOwner>]
        #   # @param incorporation_state [String, nil]
        #   # @param industry_code [String, nil]
        #   # @param name [String]
        #   # @param tax_identifier [String, nil]
        #   # @param website [String, nil]
        #   #
        #   def initialize(address:, beneficial_owners:, incorporation_state:, industry_code:, name:, tax_identifier:, website:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   line2: String,
        #   state: String,
        #   zip: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address.
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   The second line of the address.
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of
          #     the address.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   The ZIP code of the address.
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # The corporation's address.
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # beneficial_owner => {
        #   beneficial_owner_id: String,
        #   company_title: String,
        #   individual: Increase::Models::Entity::Corporation::BeneficialOwner::Individual,
        #   prong: Increase::Models::Entity::Corporation::BeneficialOwner::Prong
        # }
        # ```
        class BeneficialOwner < Increase::BaseModel
          # @!attribute beneficial_owner_id
          #   The identifier of this beneficial owner.
          #
          #   @return [String]
          required :beneficial_owner_id, String

          # @!attribute company_title
          #   This person's role or title within the entity.
          #
          #   @return [String, nil]
          required :company_title, String, nil?: true

          # @!attribute individual
          #   Personal details for the beneficial owner.
          #
          #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual]
          required :individual, -> { Increase::Models::Entity::Corporation::BeneficialOwner::Individual }

          # @!attribute prong
          #   Why this person is considered a beneficial owner of the entity.
          #
          #   @return [Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Prong]
          required :prong, enum: -> { Increase::Models::Entity::Corporation::BeneficialOwner::Prong }

          # @!parse
          #   # @param beneficial_owner_id [String]
          #   # @param company_title [String, nil]
          #   # @param individual [Increase::Models::Entity::Corporation::BeneficialOwner::Individual]
          #   # @param prong [String]
          #   #
          #   def initialize(beneficial_owner_id:, company_title:, individual:, prong:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # individual => {
          #   address: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address,
          #   date_of_birth: Date,
          #   identification: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification,
          #   name: String
          # }
          # ```
          class Individual < Increase::BaseModel
            # @!attribute address
            #   The person's address.
            #
            #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address]
            required :address,
                     -> {
                       Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address
                     }

            # @!attribute date_of_birth
            #   The person's date of birth in YYYY-MM-DD format.
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute identification
            #   A means of verifying the person's identity.
            #
            #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification]
            required :identification,
                     -> { Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification }

            # @!attribute name
            #   The person's legal name.
            #
            #   @return [String]
            required :name, String

            # @!parse
            #   # Personal details for the beneficial owner.
            #   #
            #   # @param address [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address]
            #   # @param date_of_birth [String]
            #   # @param identification [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification]
            #   # @param name [String]
            #   #
            #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # @example
            # ```ruby
            # address => {
            #   city: String,
            #   line1: String,
            #   line2: String,
            #   state: String,
            #   zip: String
            # }
            # ```
            class Address < Increase::BaseModel
              # @!attribute city
              #   The city of the address.
              #
              #   @return [String]
              required :city, String

              # @!attribute line1
              #   The first line of the address.
              #
              #   @return [String]
              required :line1, String

              # @!attribute line2
              #   The second line of the address.
              #
              #   @return [String, nil]
              required :line2, String, nil?: true

              # @!attribute state
              #   The two-letter United States Postal Service (USPS) abbreviation for the state of
              #     the address.
              #
              #   @return [String]
              required :state, String

              # @!attribute zip
              #   The ZIP code of the address.
              #
              #   @return [String]
              required :zip, String

              # @!parse
              #   # The person's address.
              #   #
              #   # @param city [String]
              #   # @param line1 [String]
              #   # @param line2 [String, nil]
              #   # @param state [String]
              #   # @param zip [String]
              #   #
              #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end

            # @example
            # ```ruby
            # identification => {
            #   method_: Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method,
            #   number_last4: String
            # }
            # ```
            class Identification < Increase::BaseModel
              # @!attribute method_
              #   A method that can be used to verify the individual's identity.
              #
              #   @return [Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method]
              required :method_,
                       enum: -> {
                         Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method
                       },
                       api_name: :method

              # @!attribute number_last4
              #   The last 4 digits of the identification number that can be used to verify the
              #     individual's identity.
              #
              #   @return [String]
              required :number_last4, String

              # @!parse
              #   # A means of verifying the person's identity.
              #   #
              #   # @param method_ [String]
              #   # @param number_last4 [String]
              #   #
              #   def initialize(method_:, number_last4:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void

              # A method that can be used to verify the individual's identity.
              #
              # @example
              # ```ruby
              # case method
              # in :social_security_number
              #   # ...
              # in :individual_taxpayer_identification_number
              #   # ...
              # in :passport
              #   # ...
              # in :drivers_license
              #   # ...
              # in :other
              #   # ...
              # end
              # ```
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

                finalize!
              end
            end
          end

          # Why this person is considered a beneficial owner of the entity.
          #
          # @example
          # ```ruby
          # case prong
          # in :ownership
          #   # ...
          # in :control
          #   # ...
          # end
          # ```
          class Prong < Increase::Enum
            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP = :ownership

            # A person who manages, directs, or has significant control of the entity.
            CONTROL = :control

            finalize!
          end
        end
      end

      # @example
      # ```ruby
      # government_authority => {
      #   address: Increase::Models::Entity::GovernmentAuthority::Address,
      #   authorized_persons: -> { Increase::ArrayOf[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson] === _1 },
      #   category: Increase::Models::Entity::GovernmentAuthority::Category,
      #   name: String,
      #   tax_identifier: String
      # }
      # ```
      class GovernmentAuthority < Increase::BaseModel
        # @!attribute address
        #   The government authority's address.
        #
        #   @return [Increase::Models::Entity::GovernmentAuthority::Address]
        required :address, -> { Increase::Models::Entity::GovernmentAuthority::Address }

        # @!attribute authorized_persons
        #   The identifying details of authorized persons of the government authority.
        #
        #   @return [Array<Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson>]
        required :authorized_persons,
                 -> { Increase::ArrayOf[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson] }

        # @!attribute category
        #   The category of the government authority.
        #
        #   @return [Symbol, Increase::Models::Entity::GovernmentAuthority::Category]
        required :category, enum: -> { Increase::Models::Entity::GovernmentAuthority::Category }

        # @!attribute name
        #   The government authority's name.
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   The Employer Identification Number (EIN) of the government authority.
        #
        #   @return [String, nil]
        required :tax_identifier, String, nil?: true

        # @!attribute website
        #   The government authority's website.
        #
        #   @return [String, nil]
        required :website, String, nil?: true

        # @!parse
        #   # Details of the government authority entity. Will be present if `structure` is
        #   #   equal to `government_authority`.
        #   #
        #   # @param address [Increase::Models::Entity::GovernmentAuthority::Address]
        #   # @param authorized_persons [Array<Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson>]
        #   # @param category [String]
        #   # @param name [String]
        #   # @param tax_identifier [String, nil]
        #   # @param website [String, nil]
        #   #
        #   def initialize(address:, authorized_persons:, category:, name:, tax_identifier:, website:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   line2: String,
        #   state: String,
        #   zip: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address.
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   The second line of the address.
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of
          #     the address.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   The ZIP code of the address.
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # The government authority's address.
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # authorized_person => {
        #   authorized_person_id: String,
        #   name: String
        # }
        # ```
        class AuthorizedPerson < Increase::BaseModel
          # @!attribute authorized_person_id
          #   The identifier of this authorized person.
          #
          #   @return [String]
          required :authorized_person_id, String

          # @!attribute name
          #   The person's legal name.
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param authorized_person_id [String]
          #   # @param name [String]
          #   #
          #   def initialize(authorized_person_id:, name:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # The category of the government authority.
        #
        # @example
        # ```ruby
        # case category
        # in :municipality
        #   # ...
        # end
        # ```
        class Category < Increase::Enum
          # The Public Entity is a Municipality.
          MUNICIPALITY = :municipality

          finalize!
        end
      end

      # @example
      # ```ruby
      # joint => {
      #   individuals: -> { Increase::ArrayOf[Increase::Models::Entity::Joint::Individual] === _1 },
      #   name: String
      # }
      # ```
      class Joint < Increase::BaseModel
        # @!attribute individuals
        #   The two individuals that share control of the entity.
        #
        #   @return [Array<Increase::Models::Entity::Joint::Individual>]
        required :individuals, -> { Increase::ArrayOf[Increase::Models::Entity::Joint::Individual] }

        # @!attribute name
        #   The entity's name.
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # Details of the joint entity. Will be present if `structure` is equal to `joint`.
        #   #
        #   # @param individuals [Array<Increase::Models::Entity::Joint::Individual>]
        #   # @param name [String]
        #   #
        #   def initialize(individuals:, name:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # individual => {
        #   address: Increase::Models::Entity::Joint::Individual::Address,
        #   date_of_birth: Date,
        #   identification: Increase::Models::Entity::Joint::Individual::Identification,
        #   name: String
        # }
        # ```
        class Individual < Increase::BaseModel
          # @!attribute address
          #   The person's address.
          #
          #   @return [Increase::Models::Entity::Joint::Individual::Address]
          required :address, -> { Increase::Models::Entity::Joint::Individual::Address }

          # @!attribute date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   A means of verifying the person's identity.
          #
          #   @return [Increase::Models::Entity::Joint::Individual::Identification]
          required :identification, -> { Increase::Models::Entity::Joint::Individual::Identification }

          # @!attribute name
          #   The person's legal name.
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param address [Increase::Models::Entity::Joint::Individual::Address]
          #   # @param date_of_birth [String]
          #   # @param identification [Increase::Models::Entity::Joint::Individual::Identification]
          #   # @param name [String]
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # address => {
          #   city: String,
          #   line1: String,
          #   line2: String,
          #   state: String,
          #   zip: String
          # }
          # ```
          class Address < Increase::BaseModel
            # @!attribute city
            #   The city of the address.
            #
            #   @return [String]
            required :city, String

            # @!attribute line1
            #   The first line of the address.
            #
            #   @return [String]
            required :line1, String

            # @!attribute line2
            #   The second line of the address.
            #
            #   @return [String, nil]
            required :line2, String, nil?: true

            # @!attribute state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of
            #     the address.
            #
            #   @return [String]
            required :state, String

            # @!attribute zip
            #   The ZIP code of the address.
            #
            #   @return [String]
            required :zip, String

            # @!parse
            #   # The person's address.
            #   #
            #   # @param city [String]
            #   # @param line1 [String]
            #   # @param line2 [String, nil]
            #   # @param state [String]
            #   # @param zip [String]
            #   #
            #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # @example
          # ```ruby
          # identification => {
          #   method_: Increase::Models::Entity::Joint::Individual::Identification::Method,
          #   number_last4: String
          # }
          # ```
          class Identification < Increase::BaseModel
            # @!attribute method_
            #   A method that can be used to verify the individual's identity.
            #
            #   @return [Symbol, Increase::Models::Entity::Joint::Individual::Identification::Method]
            required :method_,
                     enum: -> { Increase::Models::Entity::Joint::Individual::Identification::Method },
                     api_name: :method

            # @!attribute number_last4
            #   The last 4 digits of the identification number that can be used to verify the
            #     individual's identity.
            #
            #   @return [String]
            required :number_last4, String

            # @!parse
            #   # A means of verifying the person's identity.
            #   #
            #   # @param method_ [String]
            #   # @param number_last4 [String]
            #   #
            #   def initialize(method_:, number_last4:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # A method that can be used to verify the individual's identity.
            #
            # @example
            # ```ruby
            # case method
            # in :social_security_number
            #   # ...
            # in :individual_taxpayer_identification_number
            #   # ...
            # in :passport
            #   # ...
            # in :drivers_license
            #   # ...
            # in :other
            #   # ...
            # end
            # ```
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

              finalize!
            end
          end
        end
      end

      # @example
      # ```ruby
      # natural_person => {
      #   address: Increase::Models::Entity::NaturalPerson::Address,
      #   date_of_birth: Date,
      #   identification: Increase::Models::Entity::NaturalPerson::Identification,
      #   name: String
      # }
      # ```
      class NaturalPerson < Increase::BaseModel
        # @!attribute address
        #   The person's address.
        #
        #   @return [Increase::Models::Entity::NaturalPerson::Address]
        required :address, -> { Increase::Models::Entity::NaturalPerson::Address }

        # @!attribute date_of_birth
        #   The person's date of birth in YYYY-MM-DD format.
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute identification
        #   A means of verifying the person's identity.
        #
        #   @return [Increase::Models::Entity::NaturalPerson::Identification]
        required :identification, -> { Increase::Models::Entity::NaturalPerson::Identification }

        # @!attribute name
        #   The person's legal name.
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # Details of the natural person entity. Will be present if `structure` is equal to
        #   #   `natural_person`.
        #   #
        #   # @param address [Increase::Models::Entity::NaturalPerson::Address]
        #   # @param date_of_birth [String]
        #   # @param identification [Increase::Models::Entity::NaturalPerson::Identification]
        #   # @param name [String]
        #   #
        #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   line2: String,
        #   state: String,
        #   zip: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address.
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   The second line of the address.
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of
          #     the address.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   The ZIP code of the address.
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # The person's address.
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # identification => {
        #   method_: Increase::Models::Entity::NaturalPerson::Identification::Method,
        #   number_last4: String
        # }
        # ```
        class Identification < Increase::BaseModel
          # @!attribute method_
          #   A method that can be used to verify the individual's identity.
          #
          #   @return [Symbol, Increase::Models::Entity::NaturalPerson::Identification::Method]
          required :method_,
                   enum: -> { Increase::Models::Entity::NaturalPerson::Identification::Method },
                   api_name: :method

          # @!attribute number_last4
          #   The last 4 digits of the identification number that can be used to verify the
          #     individual's identity.
          #
          #   @return [String]
          required :number_last4, String

          # @!parse
          #   # A means of verifying the person's identity.
          #   #
          #   # @param method_ [String]
          #   # @param number_last4 [String]
          #   #
          #   def initialize(method_:, number_last4:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # A method that can be used to verify the individual's identity.
          #
          # @example
          # ```ruby
          # case method
          # in :social_security_number
          #   # ...
          # in :individual_taxpayer_identification_number
          #   # ...
          # in :passport
          #   # ...
          # in :drivers_license
          #   # ...
          # in :other
          #   # ...
          # end
          # ```
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

            finalize!
          end
        end
      end

      # The status of the entity.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :archived
      #   # ...
      # in :disabled
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The entity is active.
        ACTIVE = :active

        # The entity is archived, and can no longer be used to create accounts.
        ARCHIVED = :archived

        # The entity is temporarily disabled and cannot be used for financial activity.
        DISABLED = :disabled

        finalize!
      end

      # The entity's legal structure.
      #
      # @example
      # ```ruby
      # case structure
      # in :corporation
      #   # ...
      # in :natural_person
      #   # ...
      # in :joint
      #   # ...
      # in :trust
      #   # ...
      # in :government_authority
      #   # ...
      # end
      # ```
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

        finalize!
      end

      # @example
      # ```ruby
      # third_party_verification => {
      #   reference: String,
      #   vendor: Increase::Models::Entity::ThirdPartyVerification::Vendor
      # }
      # ```
      class ThirdPartyVerification < Increase::BaseModel
        # @!attribute reference
        #   The reference identifier for the third party verification.
        #
        #   @return [String]
        required :reference, String

        # @!attribute vendor
        #   The vendor that was used to perform the verification.
        #
        #   @return [Symbol, Increase::Models::Entity::ThirdPartyVerification::Vendor]
        required :vendor, enum: -> { Increase::Models::Entity::ThirdPartyVerification::Vendor }

        # @!parse
        #   # A reference to data stored in a third-party verification service. Your
        #   #   integration may or may not use this field.
        #   #
        #   # @param reference [String]
        #   # @param vendor [String]
        #   #
        #   def initialize(reference:, vendor:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # The vendor that was used to perform the verification.
        #
        # @example
        # ```ruby
        # case vendor
        # in :alloy
        #   # ...
        # in :middesk
        #   # ...
        # end
        # ```
        class Vendor < Increase::Enum
          # Alloy. See https://alloy.com for more information.
          ALLOY = :alloy

          # Middesk. See https://middesk.com for more information.
          MIDDESK = :middesk

          finalize!
        end
      end

      # @example
      # ```ruby
      # trust => {
      #   address: Increase::Models::Entity::Trust::Address,
      #   category: Increase::Models::Entity::Trust::Category,
      #   formation_document_file_id: String,
      #   formation_state: String,
      #   grantor: Increase::Models::Entity::Trust::Grantor,
      #   **_
      # }
      # ```
      class Trust < Increase::BaseModel
        # @!attribute address
        #   The trust's address.
        #
        #   @return [Increase::Models::Entity::Trust::Address]
        required :address, -> { Increase::Models::Entity::Trust::Address }

        # @!attribute category
        #   Whether the trust is `revocable` or `irrevocable`.
        #
        #   @return [Symbol, Increase::Models::Entity::Trust::Category]
        required :category, enum: -> { Increase::Models::Entity::Trust::Category }

        # @!attribute formation_document_file_id
        #   The ID for the File containing the formation document of the trust.
        #
        #   @return [String, nil]
        required :formation_document_file_id, String, nil?: true

        # @!attribute formation_state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state in
        #     which the trust was formed.
        #
        #   @return [String, nil]
        required :formation_state, String, nil?: true

        # @!attribute grantor
        #   The grantor of the trust. Will be present if the `category` is `revocable`.
        #
        #   @return [Increase::Models::Entity::Trust::Grantor, nil]
        required :grantor, -> { Increase::Models::Entity::Trust::Grantor }, nil?: true

        # @!attribute name
        #   The trust's name.
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   The Employer Identification Number (EIN) of the trust itself.
        #
        #   @return [String, nil]
        required :tax_identifier, String, nil?: true

        # @!attribute trustees
        #   The trustees of the trust.
        #
        #   @return [Array<Increase::Models::Entity::Trust::Trustee>]
        required :trustees, -> { Increase::ArrayOf[Increase::Models::Entity::Trust::Trustee] }

        # @!parse
        #   # Details of the trust entity. Will be present if `structure` is equal to `trust`.
        #   #
        #   # @param address [Increase::Models::Entity::Trust::Address]
        #   # @param category [String]
        #   # @param formation_document_file_id [String, nil]
        #   # @param formation_state [String, nil]
        #   # @param grantor [Increase::Models::Entity::Trust::Grantor, nil]
        #   # @param name [String]
        #   # @param tax_identifier [String, nil]
        #   # @param trustees [Array<Increase::Models::Entity::Trust::Trustee>]
        #   #
        #   def initialize(
        #     address:,
        #     category:,
        #     formation_document_file_id:,
        #     formation_state:,
        #     grantor:,
        #     name:,
        #     tax_identifier:,
        #     trustees:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   line2: String,
        #   state: String,
        #   zip: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address.
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   The second line of the address.
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of
          #     the address.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   The ZIP code of the address.
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # The trust's address.
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # Whether the trust is `revocable` or `irrevocable`.
        #
        # @example
        # ```ruby
        # case category
        # in :revocable
        #   # ...
        # in :irrevocable
        #   # ...
        # end
        # ```
        class Category < Increase::Enum
          # The trust is revocable by the grantor.
          REVOCABLE = :revocable

          # The trust cannot be revoked.
          IRREVOCABLE = :irrevocable

          finalize!
        end

        # @example
        # ```ruby
        # grantor => {
        #   address: Increase::Models::Entity::Trust::Grantor::Address,
        #   date_of_birth: Date,
        #   identification: Increase::Models::Entity::Trust::Grantor::Identification,
        #   name: String
        # }
        # ```
        class Grantor < Increase::BaseModel
          # @!attribute address
          #   The person's address.
          #
          #   @return [Increase::Models::Entity::Trust::Grantor::Address]
          required :address, -> { Increase::Models::Entity::Trust::Grantor::Address }

          # @!attribute date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   A means of verifying the person's identity.
          #
          #   @return [Increase::Models::Entity::Trust::Grantor::Identification]
          required :identification, -> { Increase::Models::Entity::Trust::Grantor::Identification }

          # @!attribute name
          #   The person's legal name.
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # The grantor of the trust. Will be present if the `category` is `revocable`.
          #   #
          #   # @param address [Increase::Models::Entity::Trust::Grantor::Address]
          #   # @param date_of_birth [String]
          #   # @param identification [Increase::Models::Entity::Trust::Grantor::Identification]
          #   # @param name [String]
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # address => {
          #   city: String,
          #   line1: String,
          #   line2: String,
          #   state: String,
          #   zip: String
          # }
          # ```
          class Address < Increase::BaseModel
            # @!attribute city
            #   The city of the address.
            #
            #   @return [String]
            required :city, String

            # @!attribute line1
            #   The first line of the address.
            #
            #   @return [String]
            required :line1, String

            # @!attribute line2
            #   The second line of the address.
            #
            #   @return [String, nil]
            required :line2, String, nil?: true

            # @!attribute state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of
            #     the address.
            #
            #   @return [String]
            required :state, String

            # @!attribute zip
            #   The ZIP code of the address.
            #
            #   @return [String]
            required :zip, String

            # @!parse
            #   # The person's address.
            #   #
            #   # @param city [String]
            #   # @param line1 [String]
            #   # @param line2 [String, nil]
            #   # @param state [String]
            #   # @param zip [String]
            #   #
            #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # @example
          # ```ruby
          # identification => {
          #   method_: Increase::Models::Entity::Trust::Grantor::Identification::Method,
          #   number_last4: String
          # }
          # ```
          class Identification < Increase::BaseModel
            # @!attribute method_
            #   A method that can be used to verify the individual's identity.
            #
            #   @return [Symbol, Increase::Models::Entity::Trust::Grantor::Identification::Method]
            required :method_,
                     enum: -> { Increase::Models::Entity::Trust::Grantor::Identification::Method },
                     api_name: :method

            # @!attribute number_last4
            #   The last 4 digits of the identification number that can be used to verify the
            #     individual's identity.
            #
            #   @return [String]
            required :number_last4, String

            # @!parse
            #   # A means of verifying the person's identity.
            #   #
            #   # @param method_ [String]
            #   # @param number_last4 [String]
            #   #
            #   def initialize(method_:, number_last4:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # A method that can be used to verify the individual's identity.
            #
            # @example
            # ```ruby
            # case method
            # in :social_security_number
            #   # ...
            # in :individual_taxpayer_identification_number
            #   # ...
            # in :passport
            #   # ...
            # in :drivers_license
            #   # ...
            # in :other
            #   # ...
            # end
            # ```
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

              finalize!
            end
          end
        end

        # @example
        # ```ruby
        # trustee => {
        #   individual: Increase::Models::Entity::Trust::Trustee::Individual,
        #   structure: Increase::Models::Entity::Trust::Trustee::Structure
        # }
        # ```
        class Trustee < Increase::BaseModel
          # @!attribute individual
          #   The individual trustee of the trust. Will be present if the trustee's
          #     `structure` is equal to `individual`.
          #
          #   @return [Increase::Models::Entity::Trust::Trustee::Individual, nil]
          required :individual, -> { Increase::Models::Entity::Trust::Trustee::Individual }, nil?: true

          # @!attribute structure
          #   The structure of the trustee. Will always be equal to `individual`.
          #
          #   @return [Symbol, Increase::Models::Entity::Trust::Trustee::Structure]
          required :structure, enum: -> { Increase::Models::Entity::Trust::Trustee::Structure }

          # @!parse
          #   # @param individual [Increase::Models::Entity::Trust::Trustee::Individual, nil]
          #   # @param structure [String]
          #   #
          #   def initialize(individual:, structure:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # individual => {
          #   address: Increase::Models::Entity::Trust::Trustee::Individual::Address,
          #   date_of_birth: Date,
          #   identification: Increase::Models::Entity::Trust::Trustee::Individual::Identification,
          #   name: String
          # }
          # ```
          class Individual < Increase::BaseModel
            # @!attribute address
            #   The person's address.
            #
            #   @return [Increase::Models::Entity::Trust::Trustee::Individual::Address]
            required :address, -> { Increase::Models::Entity::Trust::Trustee::Individual::Address }

            # @!attribute date_of_birth
            #   The person's date of birth in YYYY-MM-DD format.
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute identification
            #   A means of verifying the person's identity.
            #
            #   @return [Increase::Models::Entity::Trust::Trustee::Individual::Identification]
            required :identification,
                     -> {
                       Increase::Models::Entity::Trust::Trustee::Individual::Identification
                     }

            # @!attribute name
            #   The person's legal name.
            #
            #   @return [String]
            required :name, String

            # @!parse
            #   # The individual trustee of the trust. Will be present if the trustee's
            #   #   `structure` is equal to `individual`.
            #   #
            #   # @param address [Increase::Models::Entity::Trust::Trustee::Individual::Address]
            #   # @param date_of_birth [String]
            #   # @param identification [Increase::Models::Entity::Trust::Trustee::Individual::Identification]
            #   # @param name [String]
            #   #
            #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # @example
            # ```ruby
            # address => {
            #   city: String,
            #   line1: String,
            #   line2: String,
            #   state: String,
            #   zip: String
            # }
            # ```
            class Address < Increase::BaseModel
              # @!attribute city
              #   The city of the address.
              #
              #   @return [String]
              required :city, String

              # @!attribute line1
              #   The first line of the address.
              #
              #   @return [String]
              required :line1, String

              # @!attribute line2
              #   The second line of the address.
              #
              #   @return [String, nil]
              required :line2, String, nil?: true

              # @!attribute state
              #   The two-letter United States Postal Service (USPS) abbreviation for the state of
              #     the address.
              #
              #   @return [String]
              required :state, String

              # @!attribute zip
              #   The ZIP code of the address.
              #
              #   @return [String]
              required :zip, String

              # @!parse
              #   # The person's address.
              #   #
              #   # @param city [String]
              #   # @param line1 [String]
              #   # @param line2 [String, nil]
              #   # @param state [String]
              #   # @param zip [String]
              #   #
              #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end

            # @example
            # ```ruby
            # identification => {
            #   method_: Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method,
            #   number_last4: String
            # }
            # ```
            class Identification < Increase::BaseModel
              # @!attribute method_
              #   A method that can be used to verify the individual's identity.
              #
              #   @return [Symbol, Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method]
              required :method_,
                       enum: -> {
                         Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method
                       },
                       api_name: :method

              # @!attribute number_last4
              #   The last 4 digits of the identification number that can be used to verify the
              #     individual's identity.
              #
              #   @return [String]
              required :number_last4, String

              # @!parse
              #   # A means of verifying the person's identity.
              #   #
              #   # @param method_ [String]
              #   # @param number_last4 [String]
              #   #
              #   def initialize(method_:, number_last4:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void

              # A method that can be used to verify the individual's identity.
              #
              # @example
              # ```ruby
              # case method
              # in :social_security_number
              #   # ...
              # in :individual_taxpayer_identification_number
              #   # ...
              # in :passport
              #   # ...
              # in :drivers_license
              #   # ...
              # in :other
              #   # ...
              # end
              # ```
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

                finalize!
              end
            end
          end

          # The structure of the trustee. Will always be equal to `individual`.
          #
          # @example
          # ```ruby
          # case structure
          # in :individual
          #   # ...
          # end
          # ```
          class Structure < Increase::Enum
            # The trustee is an individual.
            INDIVIDUAL = :individual

            finalize!
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `entity`.
      #
      # @example
      # ```ruby
      # case type
      # in :entity
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        ENTITY = :entity

        finalize!
      end
    end
  end
end
