# frozen_string_literal: true

module Increase
  module Models
    class EntityCreateParams < Increase::BaseModel
      # @!attribute structure
      #   The type of Entity to create.
      #
      #   @return [Symbol, Increase::Models::EntityCreateParams::Structure]
      required :structure, enum: -> { Increase::Models::EntityCreateParams::Structure }

      # @!attribute corporation
      #   Details of the corporation entity to create. Required if `structure` is equal to `corporation`.
      #
      #   @return [Increase::Models::EntityCreateParams::Corporation]
      optional :corporation, -> { Increase::Models::EntityCreateParams::Corporation }

      # @!attribute description
      #   The description you choose to give the entity.
      #
      #   @return [String]
      optional :description, String

      # @!attribute government_authority
      #   Details of the Government Authority entity to create. Required if `structure` is equal to `Government Authority`.
      #
      #   @return [Increase::Models::EntityCreateParams::GovernmentAuthority]
      optional :government_authority, -> { Increase::Models::EntityCreateParams::GovernmentAuthority }

      # @!attribute joint
      #   Details of the joint entity to create. Required if `structure` is equal to `joint`.
      #
      #   @return [Increase::Models::EntityCreateParams::Joint]
      optional :joint, -> { Increase::Models::EntityCreateParams::Joint }

      # @!attribute natural_person
      #   Details of the natural person entity to create. Required if `structure` is equal to `natural_person`. Natural people entities should be submitted with `social_security_number` or `individual_taxpayer_identification_number` identification methods.
      #
      #   @return [Increase::Models::EntityCreateParams::NaturalPerson]
      optional :natural_person, -> { Increase::Models::EntityCreateParams::NaturalPerson }

      # @!attribute supplemental_documents
      #   Additional documentation associated with the entity.
      #
      #   @return [Array<Increase::Models::EntityCreateParams::SupplementalDocument>]
      optional :supplemental_documents,
               -> { Increase::ArrayOf[Increase::Models::EntityCreateParams::SupplementalDocument] }

      # @!attribute third_party_verification
      #   A reference to data stored in a third-party verification service. Your integration may or may not use this field.
      #
      #   @return [Increase::Models::EntityCreateParams::ThirdPartyVerification]
      optional :third_party_verification, -> { Increase::Models::EntityCreateParams::ThirdPartyVerification }

      # @!attribute trust
      #   Details of the trust entity to create. Required if `structure` is equal to `trust`.
      #
      #   @return [Increase::Models::EntityCreateParams::Trust]
      optional :trust, -> { Increase::Models::EntityCreateParams::Trust }

      # @!parse
      #   # @param structure [String] The type of Entity to create.
      #   #
      #   # @param corporation [Increase::Models::EntityCreateParams::Corporation] Details of the corporation entity to create. Required if `structure` is equal to
      #   #   `corporation`.
      #   #
      #   # @param description [String] The description you choose to give the entity.
      #   #
      #   # @param government_authority [Increase::Models::EntityCreateParams::GovernmentAuthority] Details of the Government Authority entity to create. Required if `structure` is
      #   #   equal to `Government Authority`.
      #   #
      #   # @param joint [Increase::Models::EntityCreateParams::Joint] Details of the joint entity to create. Required if `structure` is equal to
      #   #   `joint`.
      #   #
      #   # @param natural_person [Increase::Models::EntityCreateParams::NaturalPerson] Details of the natural person entity to create. Required if `structure` is equal
      #   #   to `natural_person`. Natural people entities should be submitted with
      #   #   `social_security_number` or `individual_taxpayer_identification_number`
      #   #   identification methods.
      #   #
      #   # @param supplemental_documents [Array<Increase::Models::EntityCreateParams::SupplementalDocument>] Additional documentation associated with the entity.
      #   #
      #   # @param third_party_verification [Increase::Models::EntityCreateParams::ThirdPartyVerification] A reference to data stored in a third-party verification service. Your
      #   #   integration may or may not use this field.
      #   #
      #   # @param trust [Increase::Models::EntityCreateParams::Trust] Details of the trust entity to create. Required if `structure` is equal to
      #   #   `trust`.
      #   #
      #   def initialize(
      #     structure:,
      #     corporation: nil,
      #     description: nil,
      #     government_authority: nil,
      #     joint: nil,
      #     natural_person: nil,
      #     supplemental_documents: nil,
      #     third_party_verification: nil,
      #     trust: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The type of Entity to create.
      #
      # @example
      #
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
      #
      # ```ruby
      # corporation => {
      #   address: Increase::Models::EntityCreateParams::Corporation::Address,
      #   beneficial_owners: -> { Increase::ArrayOf[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner] === _1 },
      #   name: String,
      #   tax_identifier: String,
      #   incorporation_state: String,
      #   **_
      # }
      # ```
      class Corporation < Increase::BaseModel
        # @!attribute address
        #   The entity's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
        #
        #   @return [Increase::Models::EntityCreateParams::Corporation::Address]
        required :address, -> { Increase::Models::EntityCreateParams::Corporation::Address }

        # @!attribute beneficial_owners
        #   The identifying details of anyone controlling or owning 25% or more of the corporation.
        #
        #   @return [Array<Increase::Models::EntityCreateParams::Corporation::BeneficialOwner>]
        required :beneficial_owners,
                 -> { Increase::ArrayOf[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner] }

        # @!attribute name
        #   The legal name of the corporation.
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   The Employer Identification Number (EIN) for the corporation.
        #
        #   @return [String]
        required :tax_identifier, String

        # @!attribute incorporation_state
        #   The two-letter United States Postal Service (USPS) abbreviation for the corporation's state of incorporation.
        #
        #   @return [String]
        optional :incorporation_state, String

        # @!attribute industry_code
        #   The North American Industry Classification System (NAICS) code for the corporation's primary line of business. This is a number, like `5132` for `Software Publishers`. A full list of classification codes is available [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
        #
        #   @return [String]
        optional :industry_code, String

        # @!attribute website
        #   The website of the corporation.
        #
        #   @return [String]
        optional :website, String

        # @!parse
        #   # Details of the corporation entity to create. Required if `structure` is equal to
        #   #   `corporation`.
        #   #
        #   # @param address [Increase::Models::EntityCreateParams::Corporation::Address] The entity's physical address. Mail receiving locations like PO Boxes and PMB's
        #   #   are disallowed.
        #   #
        #   # @param beneficial_owners [Array<Increase::Models::EntityCreateParams::Corporation::BeneficialOwner>] The identifying details of anyone controlling or owning 25% or more of the
        #   #   corporation.
        #   #
        #   # @param name [String] The legal name of the corporation.
        #   #
        #   # @param tax_identifier [String] The Employer Identification Number (EIN) for the corporation.
        #   #
        #   # @param incorporation_state [String] The two-letter United States Postal Service (USPS) abbreviation for the
        #   #   corporation's state of incorporation.
        #   #
        #   # @param industry_code [String] The North American Industry Classification System (NAICS) code for the
        #   #   corporation's primary line of business. This is a number, like `5132` for
        #   #   `Software Publishers`. A full list of classification codes is available
        #   #   [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
        #   #
        #   # @param website [String] The website of the corporation.
        #   #
        #   def initialize(
        #     address:,
        #     beneficial_owners:,
        #     name:,
        #     tax_identifier:,
        #     incorporation_state: nil,
        #     industry_code: nil,
        #     website: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   state: String,
        #   zip: String,
        #   line2: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address. This is usually the street number and street.
          #
          #   @return [String]
          required :line1, String

          # @!attribute state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   The ZIP code of the address.
          #
          #   @return [String]
          required :zip, String

          # @!attribute line2
          #   The second line of the address. This might be the floor or room number.
          #
          #   @return [String]
          optional :line2, String

          # @!parse
          #   # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
          #   #   are disallowed.
          #   #
          #   # @param city [String] The city of the address.
          #   #
          #   # @param line1 [String] The first line of the address. This is usually the street number and street.
          #   #
          #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   #   the address.
          #   #
          #   # @param zip [String] The ZIP code of the address.
          #   #
          #   # @param line2 [String] The second line of the address. This might be the floor or room number.
          #   #
          #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # beneficial_owner => {
        #   individual: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
        #   prongs: -> { Increase::ArrayOf[enum: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong] === _1 },
        #   company_title: String
        # }
        # ```
        class BeneficialOwner < Increase::BaseModel
          # @!attribute individual
          #   Personal details for the beneficial owner.
          #
          #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual]
          required :individual,
                   -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual }

          # @!attribute prongs
          #   Why this person is considered a beneficial owner of the entity. At least one option is required, if a person is both a control person and owner, submit an array containing both.
          #
          #   @return [Array<Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong>]
          required :prongs,
                   -> {
                     Increase::ArrayOf[enum: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong]
                   }

          # @!attribute company_title
          #   This person's role or title within the entity.
          #
          #   @return [String]
          optional :company_title, String

          # @!parse
          #   # @param individual [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual] Personal details for the beneficial owner.
          #   #
          #   # @param prongs [Array<String>] Why this person is considered a beneficial owner of the entity. At least one
          #   #   option is required, if a person is both a control person and owner, submit an
          #   #   array containing both.
          #   #
          #   # @param company_title [String] This person's role or title within the entity.
          #   #
          #   def initialize(individual:, prongs:, company_title: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          #
          # ```ruby
          # individual => {
          #   address: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
          #   date_of_birth: Date,
          #   identification: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
          #   name: String,
          #   confirmed_no_us_tax_id: Increase::BooleanModel
          # }
          # ```
          class Individual < Increase::BaseModel
            # @!attribute address
            #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
            #
            #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address]
            required :address,
                     -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address }

            # @!attribute date_of_birth
            #   The person's date of birth in YYYY-MM-DD format.
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute identification
            #   A means of verifying the person's identity.
            #
            #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification]
            required :identification,
                     -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification }

            # @!attribute name
            #   The person's legal name.
            #
            #   @return [String]
            required :name, String

            # @!attribute confirmed_no_us_tax_id
            #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
            #
            #   @return [Boolean]
            optional :confirmed_no_us_tax_id, Increase::BooleanModel

            # @!parse
            #   # Personal details for the beneficial owner.
            #   #
            #   # @param address [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address] The individual's physical address. Mail receiving locations like PO Boxes and
            #   #   PMB's are disallowed.
            #   #
            #   # @param date_of_birth [String] The person's date of birth in YYYY-MM-DD format.
            #   #
            #   # @param identification [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification] A means of verifying the person's identity.
            #   #
            #   # @param name [String] The person's legal name.
            #   #
            #   # @param confirmed_no_us_tax_id [Boolean] The identification method for an individual can only be a passport, driver's
            #   #   license, or other document if you've confirmed the individual does not have a US
            #   #   tax id (either a Social Security Number or Individual Taxpayer Identification
            #   #   Number).
            #   #
            #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # @example
            #
            # ```ruby
            # address => {
            #   city: String,
            #   line1: String,
            #   state: String,
            #   zip: String,
            #   line2: String
            # }
            # ```
            class Address < Increase::BaseModel
              # @!attribute city
              #   The city of the address.
              #
              #   @return [String]
              required :city, String

              # @!attribute line1
              #   The first line of the address. This is usually the street number and street.
              #
              #   @return [String]
              required :line1, String

              # @!attribute state
              #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
              #
              #   @return [String]
              required :state, String

              # @!attribute zip
              #   The ZIP code of the address.
              #
              #   @return [String]
              required :zip, String

              # @!attribute line2
              #   The second line of the address. This might be the floor or room number.
              #
              #   @return [String]
              optional :line2, String

              # @!parse
              #   # The individual's physical address. Mail receiving locations like PO Boxes and
              #   #   PMB's are disallowed.
              #   #
              #   # @param city [String] The city of the address.
              #   #
              #   # @param line1 [String] The first line of the address. This is usually the street number and street.
              #   #
              #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
              #   #   the address.
              #   #
              #   # @param zip [String] The ZIP code of the address.
              #   #
              #   # @param line2 [String] The second line of the address. This might be the floor or room number.
              #   #
              #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end

            # @example
            #
            # ```ruby
            # identification => {
            #   method_: enum: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method,
            #   number: String,
            #   drivers_license: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
            #   other: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
            #   passport: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport
            # }
            # ```
            class Identification < Increase::BaseModel
              # @!attribute method_
              #   A method that can be used to verify the individual's identity.
              #
              #   @return [Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method]
              required :method_,
                       enum: -> {
                         Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method
                       },
                       api_name: :method

              # @!attribute number
              #   An identification number that can be used to verify the individual's identity, such as a social security number.
              #
              #   @return [String]
              required :number, String

              # @!attribute drivers_license
              #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
              #
              #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense]
              optional :drivers_license,
                       -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense }

              # @!attribute other
              #   Information about the identification document provided. Required if `method` is equal to `other`.
              #
              #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other]
              optional :other,
                       -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other }

              # @!attribute passport
              #   Information about the passport used for identification. Required if `method` is equal to `passport`.
              #
              #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport]
              optional :passport,
                       -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport }

              # @!parse
              #   # A means of verifying the person's identity.
              #   #
              #   # @param method_ [String] A method that can be used to verify the individual's identity.
              #   #
              #   # @param number [String] An identification number that can be used to verify the individual's identity,
              #   #   such as a social security number.
              #   #
              #   # @param drivers_license [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense] Information about the United States driver's license used for identification.
              #   #   Required if `method` is equal to `drivers_license`.
              #   #
              #   # @param other [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other] Information about the identification document provided. Required if `method` is
              #   #   equal to `other`.
              #   #
              #   # @param passport [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport] Information about the passport used for identification. Required if `method` is
              #   #   equal to `passport`.
              #   #
              #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void

              # A method that can be used to verify the individual's identity.
              #
              # @example
              #
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

              # @example
              #
              # ```ruby
              # drivers_license => {
              #   expiration_date: Date,
              #   file_id: String,
              #   state: String,
              #   back_file_id: String
              # }
              # ```
              class DriversLicense < Increase::BaseModel
                # @!attribute expiration_date
                #   The driver's license's expiration date in YYYY-MM-DD format.
                #
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute file_id
                #   The identifier of the File containing the front of the driver's license.
                #
                #   @return [String]
                required :file_id, String

                # @!attribute state
                #   The state that issued the provided driver's license.
                #
                #   @return [String]
                required :state, String

                # @!attribute back_file_id
                #   The identifier of the File containing the back of the driver's license.
                #
                #   @return [String]
                optional :back_file_id, String

                # @!parse
                #   # Information about the United States driver's license used for identification.
                #   #   Required if `method` is equal to `drivers_license`.
                #   #
                #   # @param expiration_date [String] The driver's license's expiration date in YYYY-MM-DD format.
                #   #
                #   # @param file_id [String] The identifier of the File containing the front of the driver's license.
                #   #
                #   # @param state [String] The state that issued the provided driver's license.
                #   #
                #   # @param back_file_id [String] The identifier of the File containing the back of the driver's license.
                #   #
                #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

                # def initialize: (Hash | Increase::BaseModel) -> void
              end

              # @example
              #
              # ```ruby
              # other => {
              #   country: String,
              #   description: String,
              #   file_id: String,
              #   back_file_id: String,
              #   expiration_date: Date
              # }
              # ```
              class Other < Increase::BaseModel
                # @!attribute country
                #   The two-character ISO 3166-1 code representing the country that issued the document.
                #
                #   @return [String]
                required :country, String

                # @!attribute description
                #   A description of the document submitted.
                #
                #   @return [String]
                required :description, String

                # @!attribute file_id
                #   The identifier of the File containing the front of the document.
                #
                #   @return [String]
                required :file_id, String

                # @!attribute back_file_id
                #   The identifier of the File containing the back of the document. Not every document has a reverse side.
                #
                #   @return [String]
                optional :back_file_id, String

                # @!attribute expiration_date
                #   The document's expiration date in YYYY-MM-DD format.
                #
                #   @return [Date]
                optional :expiration_date, Date

                # @!parse
                #   # Information about the identification document provided. Required if `method` is
                #   #   equal to `other`.
                #   #
                #   # @param country [String] The two-character ISO 3166-1 code representing the country that issued the
                #   #   document.
                #   #
                #   # @param description [String] A description of the document submitted.
                #   #
                #   # @param file_id [String] The identifier of the File containing the front of the document.
                #   #
                #   # @param back_file_id [String] The identifier of the File containing the back of the document. Not every
                #   #   document has a reverse side.
                #   #
                #   # @param expiration_date [String] The document's expiration date in YYYY-MM-DD format.
                #   #
                #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

                # def initialize: (Hash | Increase::BaseModel) -> void
              end

              # @example
              #
              # ```ruby
              # passport => {
              #   country: String,
              #   expiration_date: Date,
              #   file_id: String
              # }
              # ```
              class Passport < Increase::BaseModel
                # @!attribute country
                #   The country that issued the passport.
                #
                #   @return [String]
                required :country, String

                # @!attribute expiration_date
                #   The passport's expiration date in YYYY-MM-DD format.
                #
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute file_id
                #   The identifier of the File containing the passport.
                #
                #   @return [String]
                required :file_id, String

                # @!parse
                #   # Information about the passport used for identification. Required if `method` is
                #   #   equal to `passport`.
                #   #
                #   # @param country [String] The country that issued the passport.
                #   #
                #   # @param expiration_date [String] The passport's expiration date in YYYY-MM-DD format.
                #   #
                #   # @param file_id [String] The identifier of the File containing the passport.
                #   #
                #   def initialize(country:, expiration_date:, file_id:, **) = super

                # def initialize: (Hash | Increase::BaseModel) -> void
              end
            end
          end

          # @example
          #
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
      #
      # ```ruby
      # government_authority => {
      #   address: Increase::Models::EntityCreateParams::GovernmentAuthority::Address,
      #   authorized_persons: -> { Increase::ArrayOf[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson] === _1 },
      #   category: enum: Increase::Models::EntityCreateParams::GovernmentAuthority::Category,
      #   name: String,
      #   tax_identifier: String
      # }
      # ```
      class GovernmentAuthority < Increase::BaseModel
        # @!attribute address
        #   The entity's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
        #
        #   @return [Increase::Models::EntityCreateParams::GovernmentAuthority::Address]
        required :address, -> { Increase::Models::EntityCreateParams::GovernmentAuthority::Address }

        # @!attribute authorized_persons
        #   The identifying details of authorized officials acting on the entity's behalf.
        #
        #   @return [Array<Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson>]
        required :authorized_persons,
                 -> {
                   Increase::ArrayOf[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson]
                 }

        # @!attribute category
        #   The category of the government authority.
        #
        #   @return [Symbol, Increase::Models::EntityCreateParams::GovernmentAuthority::Category]
        required :category, enum: -> { Increase::Models::EntityCreateParams::GovernmentAuthority::Category }

        # @!attribute name
        #   The legal name of the government authority.
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   The Employer Identification Number (EIN) for the government authority.
        #
        #   @return [String]
        required :tax_identifier, String

        # @!attribute website
        #   The website of the government authority.
        #
        #   @return [String]
        optional :website, String

        # @!parse
        #   # Details of the Government Authority entity to create. Required if `structure` is
        #   #   equal to `Government Authority`.
        #   #
        #   # @param address [Increase::Models::EntityCreateParams::GovernmentAuthority::Address] The entity's physical address. Mail receiving locations like PO Boxes and PMB's
        #   #   are disallowed.
        #   #
        #   # @param authorized_persons [Array<Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson>] The identifying details of authorized officials acting on the entity's behalf.
        #   #
        #   # @param category [String] The category of the government authority.
        #   #
        #   # @param name [String] The legal name of the government authority.
        #   #
        #   # @param tax_identifier [String] The Employer Identification Number (EIN) for the government authority.
        #   #
        #   # @param website [String] The website of the government authority.
        #   #
        #   def initialize(address:, authorized_persons:, category:, name:, tax_identifier:, website: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   state: String,
        #   zip: String,
        #   line2: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address. This is usually the street number and street.
          #
          #   @return [String]
          required :line1, String

          # @!attribute state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   The ZIP code of the address.
          #
          #   @return [String]
          required :zip, String

          # @!attribute line2
          #   The second line of the address. This might be the floor or room number.
          #
          #   @return [String]
          optional :line2, String

          # @!parse
          #   # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
          #   #   are disallowed.
          #   #
          #   # @param city [String] The city of the address.
          #   #
          #   # @param line1 [String] The first line of the address. This is usually the street number and street.
          #   #
          #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   #   the address.
          #   #
          #   # @param zip [String] The ZIP code of the address.
          #   #
          #   # @param line2 [String] The second line of the address. This might be the floor or room number.
          #   #
          #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # authorized_person => {
        #   name: String
        # }
        # ```
        class AuthorizedPerson < Increase::BaseModel
          # @!attribute name
          #   The person's legal name.
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param name [String] The person's legal name.
          #   #
          #   def initialize(name:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # The category of the government authority.
        #
        # @example
        #
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
      #
      # ```ruby
      # joint => {
      #   individuals: -> { Increase::ArrayOf[Increase::Models::EntityCreateParams::Joint::Individual] === _1 },
      #   name: String
      # }
      # ```
      class Joint < Increase::BaseModel
        # @!attribute individuals
        #   The two individuals that share control of the entity.
        #
        #   @return [Array<Increase::Models::EntityCreateParams::Joint::Individual>]
        required :individuals,
                 -> {
                   Increase::ArrayOf[Increase::Models::EntityCreateParams::Joint::Individual]
                 }

        # @!attribute name
        #   The name of the joint entity.
        #
        #   @return [String]
        optional :name, String

        # @!parse
        #   # Details of the joint entity to create. Required if `structure` is equal to
        #   #   `joint`.
        #   #
        #   # @param individuals [Array<Increase::Models::EntityCreateParams::Joint::Individual>] The two individuals that share control of the entity.
        #   #
        #   # @param name [String] The name of the joint entity.
        #   #
        #   def initialize(individuals:, name: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # individual => {
        #   address: Increase::Models::EntityCreateParams::Joint::Individual::Address,
        #   date_of_birth: Date,
        #   identification: Increase::Models::EntityCreateParams::Joint::Individual::Identification,
        #   name: String,
        #   confirmed_no_us_tax_id: Increase::BooleanModel
        # }
        # ```
        class Individual < Increase::BaseModel
          # @!attribute address
          #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
          #
          #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Address]
          required :address, -> { Increase::Models::EntityCreateParams::Joint::Individual::Address }

          # @!attribute date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   A means of verifying the person's identity.
          #
          #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification]
          required :identification,
                   -> {
                     Increase::Models::EntityCreateParams::Joint::Individual::Identification
                   }

          # @!attribute name
          #   The person's legal name.
          #
          #   @return [String]
          required :name, String

          # @!attribute confirmed_no_us_tax_id
          #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
          #
          #   @return [Boolean]
          optional :confirmed_no_us_tax_id, Increase::BooleanModel

          # @!parse
          #   # @param address [Increase::Models::EntityCreateParams::Joint::Individual::Address] The individual's physical address. Mail receiving locations like PO Boxes and
          #   #   PMB's are disallowed.
          #   #
          #   # @param date_of_birth [String] The person's date of birth in YYYY-MM-DD format.
          #   #
          #   # @param identification [Increase::Models::EntityCreateParams::Joint::Individual::Identification] A means of verifying the person's identity.
          #   #
          #   # @param name [String] The person's legal name.
          #   #
          #   # @param confirmed_no_us_tax_id [Boolean] The identification method for an individual can only be a passport, driver's
          #   #   license, or other document if you've confirmed the individual does not have a US
          #   #   tax id (either a Social Security Number or Individual Taxpayer Identification
          #   #   Number).
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          #
          # ```ruby
          # address => {
          #   city: String,
          #   line1: String,
          #   state: String,
          #   zip: String,
          #   line2: String
          # }
          # ```
          class Address < Increase::BaseModel
            # @!attribute city
            #   The city of the address.
            #
            #   @return [String]
            required :city, String

            # @!attribute line1
            #   The first line of the address. This is usually the street number and street.
            #
            #   @return [String]
            required :line1, String

            # @!attribute state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
            #
            #   @return [String]
            required :state, String

            # @!attribute zip
            #   The ZIP code of the address.
            #
            #   @return [String]
            required :zip, String

            # @!attribute line2
            #   The second line of the address. This might be the floor or room number.
            #
            #   @return [String]
            optional :line2, String

            # @!parse
            #   # The individual's physical address. Mail receiving locations like PO Boxes and
            #   #   PMB's are disallowed.
            #   #
            #   # @param city [String] The city of the address.
            #   #
            #   # @param line1 [String] The first line of the address. This is usually the street number and street.
            #   #
            #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
            #   #   the address.
            #   #
            #   # @param zip [String] The ZIP code of the address.
            #   #
            #   # @param line2 [String] The second line of the address. This might be the floor or room number.
            #   #
            #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # identification => {
          #   method_: enum: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method,
          #   number: String,
          #   drivers_license: Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
          #   other: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
          #   passport: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport
          # }
          # ```
          class Identification < Increase::BaseModel
            # @!attribute method_
            #   A method that can be used to verify the individual's identity.
            #
            #   @return [Symbol, Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method]
            required :method_,
                     enum: -> {
                       Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method
                     },
                     api_name: :method

            # @!attribute number
            #   An identification number that can be used to verify the individual's identity, such as a social security number.
            #
            #   @return [String]
            required :number, String

            # @!attribute drivers_license
            #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
            #
            #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense]
            optional :drivers_license,
                     -> { Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense }

            # @!attribute other
            #   Information about the identification document provided. Required if `method` is equal to `other`.
            #
            #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other]
            optional :other,
                     -> {
                       Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other
                     }

            # @!attribute passport
            #   Information about the passport used for identification. Required if `method` is equal to `passport`.
            #
            #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport]
            optional :passport,
                     -> { Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport }

            # @!parse
            #   # A means of verifying the person's identity.
            #   #
            #   # @param method_ [String] A method that can be used to verify the individual's identity.
            #   #
            #   # @param number [String] An identification number that can be used to verify the individual's identity,
            #   #   such as a social security number.
            #   #
            #   # @param drivers_license [Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense] Information about the United States driver's license used for identification.
            #   #   Required if `method` is equal to `drivers_license`.
            #   #
            #   # @param other [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other] Information about the identification document provided. Required if `method` is
            #   #   equal to `other`.
            #   #
            #   # @param passport [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport] Information about the passport used for identification. Required if `method` is
            #   #   equal to `passport`.
            #   #
            #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # A method that can be used to verify the individual's identity.
            #
            # @example
            #
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

            # @example
            #
            # ```ruby
            # drivers_license => {
            #   expiration_date: Date,
            #   file_id: String,
            #   state: String,
            #   back_file_id: String
            # }
            # ```
            class DriversLicense < Increase::BaseModel
              # @!attribute expiration_date
              #   The driver's license's expiration date in YYYY-MM-DD format.
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   The identifier of the File containing the front of the driver's license.
              #
              #   @return [String]
              required :file_id, String

              # @!attribute state
              #   The state that issued the provided driver's license.
              #
              #   @return [String]
              required :state, String

              # @!attribute back_file_id
              #   The identifier of the File containing the back of the driver's license.
              #
              #   @return [String]
              optional :back_file_id, String

              # @!parse
              #   # Information about the United States driver's license used for identification.
              #   #   Required if `method` is equal to `drivers_license`.
              #   #
              #   # @param expiration_date [String] The driver's license's expiration date in YYYY-MM-DD format.
              #   #
              #   # @param file_id [String] The identifier of the File containing the front of the driver's license.
              #   #
              #   # @param state [String] The state that issued the provided driver's license.
              #   #
              #   # @param back_file_id [String] The identifier of the File containing the back of the driver's license.
              #   #
              #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end

            # @example
            #
            # ```ruby
            # other => {
            #   country: String,
            #   description: String,
            #   file_id: String,
            #   back_file_id: String,
            #   expiration_date: Date
            # }
            # ```
            class Other < Increase::BaseModel
              # @!attribute country
              #   The two-character ISO 3166-1 code representing the country that issued the document.
              #
              #   @return [String]
              required :country, String

              # @!attribute description
              #   A description of the document submitted.
              #
              #   @return [String]
              required :description, String

              # @!attribute file_id
              #   The identifier of the File containing the front of the document.
              #
              #   @return [String]
              required :file_id, String

              # @!attribute back_file_id
              #   The identifier of the File containing the back of the document. Not every document has a reverse side.
              #
              #   @return [String]
              optional :back_file_id, String

              # @!attribute expiration_date
              #   The document's expiration date in YYYY-MM-DD format.
              #
              #   @return [Date]
              optional :expiration_date, Date

              # @!parse
              #   # Information about the identification document provided. Required if `method` is
              #   #   equal to `other`.
              #   #
              #   # @param country [String] The two-character ISO 3166-1 code representing the country that issued the
              #   #   document.
              #   #
              #   # @param description [String] A description of the document submitted.
              #   #
              #   # @param file_id [String] The identifier of the File containing the front of the document.
              #   #
              #   # @param back_file_id [String] The identifier of the File containing the back of the document. Not every
              #   #   document has a reverse side.
              #   #
              #   # @param expiration_date [String] The document's expiration date in YYYY-MM-DD format.
              #   #
              #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end

            # @example
            #
            # ```ruby
            # passport => {
            #   country: String,
            #   expiration_date: Date,
            #   file_id: String
            # }
            # ```
            class Passport < Increase::BaseModel
              # @!attribute country
              #   The country that issued the passport.
              #
              #   @return [String]
              required :country, String

              # @!attribute expiration_date
              #   The passport's expiration date in YYYY-MM-DD format.
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   The identifier of the File containing the passport.
              #
              #   @return [String]
              required :file_id, String

              # @!parse
              #   # Information about the passport used for identification. Required if `method` is
              #   #   equal to `passport`.
              #   #
              #   # @param country [String] The country that issued the passport.
              #   #
              #   # @param expiration_date [String] The passport's expiration date in YYYY-MM-DD format.
              #   #
              #   # @param file_id [String] The identifier of the File containing the passport.
              #   #
              #   def initialize(country:, expiration_date:, file_id:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end
          end
        end
      end

      # @example
      #
      # ```ruby
      # natural_person => {
      #   address: Increase::Models::EntityCreateParams::NaturalPerson::Address,
      #   date_of_birth: Date,
      #   identification: Increase::Models::EntityCreateParams::NaturalPerson::Identification,
      #   name: String,
      #   confirmed_no_us_tax_id: Increase::BooleanModel
      # }
      # ```
      class NaturalPerson < Increase::BaseModel
        # @!attribute address
        #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
        #
        #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Address]
        required :address, -> { Increase::Models::EntityCreateParams::NaturalPerson::Address }

        # @!attribute date_of_birth
        #   The person's date of birth in YYYY-MM-DD format.
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute identification
        #   A means of verifying the person's identity.
        #
        #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification]
        required :identification, -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification }

        # @!attribute name
        #   The person's legal name.
        #
        #   @return [String]
        required :name, String

        # @!attribute confirmed_no_us_tax_id
        #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
        #
        #   @return [Boolean]
        optional :confirmed_no_us_tax_id, Increase::BooleanModel

        # @!parse
        #   # Details of the natural person entity to create. Required if `structure` is equal
        #   #   to `natural_person`. Natural people entities should be submitted with
        #   #   `social_security_number` or `individual_taxpayer_identification_number`
        #   #   identification methods.
        #   #
        #   # @param address [Increase::Models::EntityCreateParams::NaturalPerson::Address] The individual's physical address. Mail receiving locations like PO Boxes and
        #   #   PMB's are disallowed.
        #   #
        #   # @param date_of_birth [String] The person's date of birth in YYYY-MM-DD format.
        #   #
        #   # @param identification [Increase::Models::EntityCreateParams::NaturalPerson::Identification] A means of verifying the person's identity.
        #   #
        #   # @param name [String] The person's legal name.
        #   #
        #   # @param confirmed_no_us_tax_id [Boolean] The identification method for an individual can only be a passport, driver's
        #   #   license, or other document if you've confirmed the individual does not have a US
        #   #   tax id (either a Social Security Number or Individual Taxpayer Identification
        #   #   Number).
        #   #
        #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   state: String,
        #   zip: String,
        #   line2: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address. This is usually the street number and street.
          #
          #   @return [String]
          required :line1, String

          # @!attribute state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   The ZIP code of the address.
          #
          #   @return [String]
          required :zip, String

          # @!attribute line2
          #   The second line of the address. This might be the floor or room number.
          #
          #   @return [String]
          optional :line2, String

          # @!parse
          #   # The individual's physical address. Mail receiving locations like PO Boxes and
          #   #   PMB's are disallowed.
          #   #
          #   # @param city [String] The city of the address.
          #   #
          #   # @param line1 [String] The first line of the address. This is usually the street number and street.
          #   #
          #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   #   the address.
          #   #
          #   # @param zip [String] The ZIP code of the address.
          #   #
          #   # @param line2 [String] The second line of the address. This might be the floor or room number.
          #   #
          #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # identification => {
        #   method_: enum: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method,
        #   number: String,
        #   drivers_license: Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
        #   other: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other,
        #   passport: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport
        # }
        # ```
        class Identification < Increase::BaseModel
          # @!attribute method_
          #   A method that can be used to verify the individual's identity.
          #
          #   @return [Symbol, Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method]
          required :method_,
                   enum: -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method },
                   api_name: :method

          # @!attribute number
          #   An identification number that can be used to verify the individual's identity, such as a social security number.
          #
          #   @return [String]
          required :number, String

          # @!attribute drivers_license
          #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
          #
          #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense]
          optional :drivers_license,
                   -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense }

          # @!attribute other
          #   Information about the identification document provided. Required if `method` is equal to `other`.
          #
          #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other]
          optional :other, -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other }

          # @!attribute passport
          #   Information about the passport used for identification. Required if `method` is equal to `passport`.
          #
          #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport]
          optional :passport,
                   -> {
                     Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport
                   }

          # @!parse
          #   # A means of verifying the person's identity.
          #   #
          #   # @param method_ [String] A method that can be used to verify the individual's identity.
          #   #
          #   # @param number [String] An identification number that can be used to verify the individual's identity,
          #   #   such as a social security number.
          #   #
          #   # @param drivers_license [Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense] Information about the United States driver's license used for identification.
          #   #   Required if `method` is equal to `drivers_license`.
          #   #
          #   # @param other [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other] Information about the identification document provided. Required if `method` is
          #   #   equal to `other`.
          #   #
          #   # @param passport [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport] Information about the passport used for identification. Required if `method` is
          #   #   equal to `passport`.
          #   #
          #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # A method that can be used to verify the individual's identity.
          #
          # @example
          #
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

          # @example
          #
          # ```ruby
          # drivers_license => {
          #   expiration_date: Date,
          #   file_id: String,
          #   state: String,
          #   back_file_id: String
          # }
          # ```
          class DriversLicense < Increase::BaseModel
            # @!attribute expiration_date
            #   The driver's license's expiration date in YYYY-MM-DD format.
            #
            #   @return [Date]
            required :expiration_date, Date

            # @!attribute file_id
            #   The identifier of the File containing the front of the driver's license.
            #
            #   @return [String]
            required :file_id, String

            # @!attribute state
            #   The state that issued the provided driver's license.
            #
            #   @return [String]
            required :state, String

            # @!attribute back_file_id
            #   The identifier of the File containing the back of the driver's license.
            #
            #   @return [String]
            optional :back_file_id, String

            # @!parse
            #   # Information about the United States driver's license used for identification.
            #   #   Required if `method` is equal to `drivers_license`.
            #   #
            #   # @param expiration_date [String] The driver's license's expiration date in YYYY-MM-DD format.
            #   #
            #   # @param file_id [String] The identifier of the File containing the front of the driver's license.
            #   #
            #   # @param state [String] The state that issued the provided driver's license.
            #   #
            #   # @param back_file_id [String] The identifier of the File containing the back of the driver's license.
            #   #
            #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # other => {
          #   country: String,
          #   description: String,
          #   file_id: String,
          #   back_file_id: String,
          #   expiration_date: Date
          # }
          # ```
          class Other < Increase::BaseModel
            # @!attribute country
            #   The two-character ISO 3166-1 code representing the country that issued the document.
            #
            #   @return [String]
            required :country, String

            # @!attribute description
            #   A description of the document submitted.
            #
            #   @return [String]
            required :description, String

            # @!attribute file_id
            #   The identifier of the File containing the front of the document.
            #
            #   @return [String]
            required :file_id, String

            # @!attribute back_file_id
            #   The identifier of the File containing the back of the document. Not every document has a reverse side.
            #
            #   @return [String]
            optional :back_file_id, String

            # @!attribute expiration_date
            #   The document's expiration date in YYYY-MM-DD format.
            #
            #   @return [Date]
            optional :expiration_date, Date

            # @!parse
            #   # Information about the identification document provided. Required if `method` is
            #   #   equal to `other`.
            #   #
            #   # @param country [String] The two-character ISO 3166-1 code representing the country that issued the
            #   #   document.
            #   #
            #   # @param description [String] A description of the document submitted.
            #   #
            #   # @param file_id [String] The identifier of the File containing the front of the document.
            #   #
            #   # @param back_file_id [String] The identifier of the File containing the back of the document. Not every
            #   #   document has a reverse side.
            #   #
            #   # @param expiration_date [String] The document's expiration date in YYYY-MM-DD format.
            #   #
            #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # passport => {
          #   country: String,
          #   expiration_date: Date,
          #   file_id: String
          # }
          # ```
          class Passport < Increase::BaseModel
            # @!attribute country
            #   The country that issued the passport.
            #
            #   @return [String]
            required :country, String

            # @!attribute expiration_date
            #   The passport's expiration date in YYYY-MM-DD format.
            #
            #   @return [Date]
            required :expiration_date, Date

            # @!attribute file_id
            #   The identifier of the File containing the passport.
            #
            #   @return [String]
            required :file_id, String

            # @!parse
            #   # Information about the passport used for identification. Required if `method` is
            #   #   equal to `passport`.
            #   #
            #   # @param country [String] The country that issued the passport.
            #   #
            #   # @param expiration_date [String] The passport's expiration date in YYYY-MM-DD format.
            #   #
            #   # @param file_id [String] The identifier of the File containing the passport.
            #   #
            #   def initialize(country:, expiration_date:, file_id:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end
        end
      end

      # @example
      #
      # ```ruby
      # supplemental_document => {
      #   file_id: String
      # }
      # ```
      class SupplementalDocument < Increase::BaseModel
        # @!attribute file_id
        #   The identifier of the File containing the document.
        #
        #   @return [String]
        required :file_id, String

        # @!parse
        #   # @param file_id [String] The identifier of the File containing the document.
        #   #
        #   def initialize(file_id:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # third_party_verification => {
      #   reference: String,
      #   vendor: enum: Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor
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
        #   @return [Symbol, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor]
        required :vendor, enum: -> { Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor }

        # @!parse
        #   # A reference to data stored in a third-party verification service. Your
        #   #   integration may or may not use this field.
        #   #
        #   # @param reference [String] The reference identifier for the third party verification.
        #   #
        #   # @param vendor [String] The vendor that was used to perform the verification.
        #   #
        #   def initialize(reference:, vendor:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # The vendor that was used to perform the verification.
        #
        # @example
        #
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
      #
      # ```ruby
      # trust => {
      #   address: Increase::Models::EntityCreateParams::Trust::Address,
      #   category: enum: Increase::Models::EntityCreateParams::Trust::Category,
      #   name: String,
      #   trustees: -> { Increase::ArrayOf[Increase::Models::EntityCreateParams::Trust::Trustee] === _1 },
      #   formation_document_file_id: String,
      #   **_
      # }
      # ```
      class Trust < Increase::BaseModel
        # @!attribute address
        #   The trust's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
        #
        #   @return [Increase::Models::EntityCreateParams::Trust::Address]
        required :address, -> { Increase::Models::EntityCreateParams::Trust::Address }

        # @!attribute category
        #   Whether the trust is `revocable` or `irrevocable`. Irrevocable trusts require their own Employer Identification Number. Revocable trusts require information about the individual `grantor` who created the trust.
        #
        #   @return [Symbol, Increase::Models::EntityCreateParams::Trust::Category]
        required :category, enum: -> { Increase::Models::EntityCreateParams::Trust::Category }

        # @!attribute name
        #   The legal name of the trust.
        #
        #   @return [String]
        required :name, String

        # @!attribute trustees
        #   The trustees of the trust.
        #
        #   @return [Array<Increase::Models::EntityCreateParams::Trust::Trustee>]
        required :trustees, -> { Increase::ArrayOf[Increase::Models::EntityCreateParams::Trust::Trustee] }

        # @!attribute formation_document_file_id
        #   The identifier of the File containing the formation document of the trust.
        #
        #   @return [String]
        optional :formation_document_file_id, String

        # @!attribute formation_state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state in which the trust was formed.
        #
        #   @return [String]
        optional :formation_state, String

        # @!attribute grantor
        #   The grantor of the trust. Required if `category` is equal to `revocable`.
        #
        #   @return [Increase::Models::EntityCreateParams::Trust::Grantor]
        optional :grantor, -> { Increase::Models::EntityCreateParams::Trust::Grantor }

        # @!attribute tax_identifier
        #   The Employer Identification Number (EIN) for the trust. Required if `category` is equal to `irrevocable`.
        #
        #   @return [String]
        optional :tax_identifier, String

        # @!parse
        #   # Details of the trust entity to create. Required if `structure` is equal to
        #   #   `trust`.
        #   #
        #   # @param address [Increase::Models::EntityCreateParams::Trust::Address] The trust's physical address. Mail receiving locations like PO Boxes and PMB's
        #   #   are disallowed.
        #   #
        #   # @param category [String] Whether the trust is `revocable` or `irrevocable`. Irrevocable trusts require
        #   #   their own Employer Identification Number. Revocable trusts require information
        #   #   about the individual `grantor` who created the trust.
        #   #
        #   # @param name [String] The legal name of the trust.
        #   #
        #   # @param trustees [Array<Increase::Models::EntityCreateParams::Trust::Trustee>] The trustees of the trust.
        #   #
        #   # @param formation_document_file_id [String] The identifier of the File containing the formation document of the trust.
        #   #
        #   # @param formation_state [String] The two-letter United States Postal Service (USPS) abbreviation for the state in
        #   #   which the trust was formed.
        #   #
        #   # @param grantor [Increase::Models::EntityCreateParams::Trust::Grantor] The grantor of the trust. Required if `category` is equal to `revocable`.
        #   #
        #   # @param tax_identifier [String] The Employer Identification Number (EIN) for the trust. Required if `category`
        #   #   is equal to `irrevocable`.
        #   #
        #   def initialize(
        #     address:,
        #     category:,
        #     name:,
        #     trustees:,
        #     formation_document_file_id: nil,
        #     formation_state: nil,
        #     grantor: nil,
        #     tax_identifier: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   state: String,
        #   zip: String,
        #   line2: String
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address. This is usually the street number and street.
          #
          #   @return [String]
          required :line1, String

          # @!attribute state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   The ZIP code of the address.
          #
          #   @return [String]
          required :zip, String

          # @!attribute line2
          #   The second line of the address. This might be the floor or room number.
          #
          #   @return [String]
          optional :line2, String

          # @!parse
          #   # The trust's physical address. Mail receiving locations like PO Boxes and PMB's
          #   #   are disallowed.
          #   #
          #   # @param city [String] The city of the address.
          #   #
          #   # @param line1 [String] The first line of the address. This is usually the street number and street.
          #   #
          #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
          #   #   the address.
          #   #
          #   # @param zip [String] The ZIP code of the address.
          #   #
          #   # @param line2 [String] The second line of the address. This might be the floor or room number.
          #   #
          #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # Whether the trust is `revocable` or `irrevocable`. Irrevocable trusts require their own Employer Identification Number. Revocable trusts require information about the individual `grantor` who created the trust.
        #
        # @example
        #
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
        #
        # ```ruby
        # trustee => {
        #   structure: enum: Increase::Models::EntityCreateParams::Trust::Trustee::Structure,
        #   individual: Increase::Models::EntityCreateParams::Trust::Trustee::Individual
        # }
        # ```
        class Trustee < Increase::BaseModel
          # @!attribute structure
          #   The structure of the trustee.
          #
          #   @return [Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Structure]
          required :structure, enum: -> { Increase::Models::EntityCreateParams::Trust::Trustee::Structure }

          # @!attribute individual
          #   Details of the individual trustee. Required when the trustee `structure` is equal to `individual`.
          #
          #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual]
          optional :individual, -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual }

          # @!parse
          #   # @param structure [String] The structure of the trustee.
          #   #
          #   # @param individual [Increase::Models::EntityCreateParams::Trust::Trustee::Individual] Details of the individual trustee. Required when the trustee `structure` is
          #   #   equal to `individual`.
          #   #
          #   def initialize(structure:, individual: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The structure of the trustee.
          #
          # @example
          #
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

          # @example
          #
          # ```ruby
          # individual => {
          #   address: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address,
          #   date_of_birth: Date,
          #   identification: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
          #   name: String,
          #   confirmed_no_us_tax_id: Increase::BooleanModel
          # }
          # ```
          class Individual < Increase::BaseModel
            # @!attribute address
            #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address]
            required :address,
                     -> {
                       Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address
                     }

            # @!attribute date_of_birth
            #   The person's date of birth in YYYY-MM-DD format.
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute identification
            #   A means of verifying the person's identity.
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification]
            required :identification,
                     -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification }

            # @!attribute name
            #   The person's legal name.
            #
            #   @return [String]
            required :name, String

            # @!attribute confirmed_no_us_tax_id
            #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
            #
            #   @return [Boolean]
            optional :confirmed_no_us_tax_id, Increase::BooleanModel

            # @!parse
            #   # Details of the individual trustee. Required when the trustee `structure` is
            #   #   equal to `individual`.
            #   #
            #   # @param address [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address] The individual's physical address. Mail receiving locations like PO Boxes and
            #   #   PMB's are disallowed.
            #   #
            #   # @param date_of_birth [String] The person's date of birth in YYYY-MM-DD format.
            #   #
            #   # @param identification [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification] A means of verifying the person's identity.
            #   #
            #   # @param name [String] The person's legal name.
            #   #
            #   # @param confirmed_no_us_tax_id [Boolean] The identification method for an individual can only be a passport, driver's
            #   #   license, or other document if you've confirmed the individual does not have a US
            #   #   tax id (either a Social Security Number or Individual Taxpayer Identification
            #   #   Number).
            #   #
            #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # @example
            #
            # ```ruby
            # address => {
            #   city: String,
            #   line1: String,
            #   state: String,
            #   zip: String,
            #   line2: String
            # }
            # ```
            class Address < Increase::BaseModel
              # @!attribute city
              #   The city of the address.
              #
              #   @return [String]
              required :city, String

              # @!attribute line1
              #   The first line of the address. This is usually the street number and street.
              #
              #   @return [String]
              required :line1, String

              # @!attribute state
              #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
              #
              #   @return [String]
              required :state, String

              # @!attribute zip
              #   The ZIP code of the address.
              #
              #   @return [String]
              required :zip, String

              # @!attribute line2
              #   The second line of the address. This might be the floor or room number.
              #
              #   @return [String]
              optional :line2, String

              # @!parse
              #   # The individual's physical address. Mail receiving locations like PO Boxes and
              #   #   PMB's are disallowed.
              #   #
              #   # @param city [String] The city of the address.
              #   #
              #   # @param line1 [String] The first line of the address. This is usually the street number and street.
              #   #
              #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
              #   #   the address.
              #   #
              #   # @param zip [String] The ZIP code of the address.
              #   #
              #   # @param line2 [String] The second line of the address. This might be the floor or room number.
              #   #
              #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end

            # @example
            #
            # ```ruby
            # identification => {
            #   method_: enum: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method,
            #   number: String,
            #   drivers_license: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
            #   other: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
            #   passport: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport
            # }
            # ```
            class Identification < Increase::BaseModel
              # @!attribute method_
              #   A method that can be used to verify the individual's identity.
              #
              #   @return [Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method]
              required :method_,
                       enum: -> {
                         Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method
                       },
                       api_name: :method

              # @!attribute number
              #   An identification number that can be used to verify the individual's identity, such as a social security number.
              #
              #   @return [String]
              required :number, String

              # @!attribute drivers_license
              #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
              #
              #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense]
              optional :drivers_license,
                       -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense }

              # @!attribute other
              #   Information about the identification document provided. Required if `method` is equal to `other`.
              #
              #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other]
              optional :other,
                       -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other }

              # @!attribute passport
              #   Information about the passport used for identification. Required if `method` is equal to `passport`.
              #
              #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport]
              optional :passport,
                       -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport }

              # @!parse
              #   # A means of verifying the person's identity.
              #   #
              #   # @param method_ [String] A method that can be used to verify the individual's identity.
              #   #
              #   # @param number [String] An identification number that can be used to verify the individual's identity,
              #   #   such as a social security number.
              #   #
              #   # @param drivers_license [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense] Information about the United States driver's license used for identification.
              #   #   Required if `method` is equal to `drivers_license`.
              #   #
              #   # @param other [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other] Information about the identification document provided. Required if `method` is
              #   #   equal to `other`.
              #   #
              #   # @param passport [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport] Information about the passport used for identification. Required if `method` is
              #   #   equal to `passport`.
              #   #
              #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void

              # A method that can be used to verify the individual's identity.
              #
              # @example
              #
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

              # @example
              #
              # ```ruby
              # drivers_license => {
              #   expiration_date: Date,
              #   file_id: String,
              #   state: String,
              #   back_file_id: String
              # }
              # ```
              class DriversLicense < Increase::BaseModel
                # @!attribute expiration_date
                #   The driver's license's expiration date in YYYY-MM-DD format.
                #
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute file_id
                #   The identifier of the File containing the front of the driver's license.
                #
                #   @return [String]
                required :file_id, String

                # @!attribute state
                #   The state that issued the provided driver's license.
                #
                #   @return [String]
                required :state, String

                # @!attribute back_file_id
                #   The identifier of the File containing the back of the driver's license.
                #
                #   @return [String]
                optional :back_file_id, String

                # @!parse
                #   # Information about the United States driver's license used for identification.
                #   #   Required if `method` is equal to `drivers_license`.
                #   #
                #   # @param expiration_date [String] The driver's license's expiration date in YYYY-MM-DD format.
                #   #
                #   # @param file_id [String] The identifier of the File containing the front of the driver's license.
                #   #
                #   # @param state [String] The state that issued the provided driver's license.
                #   #
                #   # @param back_file_id [String] The identifier of the File containing the back of the driver's license.
                #   #
                #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

                # def initialize: (Hash | Increase::BaseModel) -> void
              end

              # @example
              #
              # ```ruby
              # other => {
              #   country: String,
              #   description: String,
              #   file_id: String,
              #   back_file_id: String,
              #   expiration_date: Date
              # }
              # ```
              class Other < Increase::BaseModel
                # @!attribute country
                #   The two-character ISO 3166-1 code representing the country that issued the document.
                #
                #   @return [String]
                required :country, String

                # @!attribute description
                #   A description of the document submitted.
                #
                #   @return [String]
                required :description, String

                # @!attribute file_id
                #   The identifier of the File containing the front of the document.
                #
                #   @return [String]
                required :file_id, String

                # @!attribute back_file_id
                #   The identifier of the File containing the back of the document. Not every document has a reverse side.
                #
                #   @return [String]
                optional :back_file_id, String

                # @!attribute expiration_date
                #   The document's expiration date in YYYY-MM-DD format.
                #
                #   @return [Date]
                optional :expiration_date, Date

                # @!parse
                #   # Information about the identification document provided. Required if `method` is
                #   #   equal to `other`.
                #   #
                #   # @param country [String] The two-character ISO 3166-1 code representing the country that issued the
                #   #   document.
                #   #
                #   # @param description [String] A description of the document submitted.
                #   #
                #   # @param file_id [String] The identifier of the File containing the front of the document.
                #   #
                #   # @param back_file_id [String] The identifier of the File containing the back of the document. Not every
                #   #   document has a reverse side.
                #   #
                #   # @param expiration_date [String] The document's expiration date in YYYY-MM-DD format.
                #   #
                #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

                # def initialize: (Hash | Increase::BaseModel) -> void
              end

              # @example
              #
              # ```ruby
              # passport => {
              #   country: String,
              #   expiration_date: Date,
              #   file_id: String
              # }
              # ```
              class Passport < Increase::BaseModel
                # @!attribute country
                #   The country that issued the passport.
                #
                #   @return [String]
                required :country, String

                # @!attribute expiration_date
                #   The passport's expiration date in YYYY-MM-DD format.
                #
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute file_id
                #   The identifier of the File containing the passport.
                #
                #   @return [String]
                required :file_id, String

                # @!parse
                #   # Information about the passport used for identification. Required if `method` is
                #   #   equal to `passport`.
                #   #
                #   # @param country [String] The country that issued the passport.
                #   #
                #   # @param expiration_date [String] The passport's expiration date in YYYY-MM-DD format.
                #   #
                #   # @param file_id [String] The identifier of the File containing the passport.
                #   #
                #   def initialize(country:, expiration_date:, file_id:, **) = super

                # def initialize: (Hash | Increase::BaseModel) -> void
              end
            end
          end
        end

        # @example
        #
        # ```ruby
        # grantor => {
        #   address: Increase::Models::EntityCreateParams::Trust::Grantor::Address,
        #   date_of_birth: Date,
        #   identification: Increase::Models::EntityCreateParams::Trust::Grantor::Identification,
        #   name: String,
        #   confirmed_no_us_tax_id: Increase::BooleanModel
        # }
        # ```
        class Grantor < Increase::BaseModel
          # @!attribute address
          #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
          #
          #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Address]
          required :address, -> { Increase::Models::EntityCreateParams::Trust::Grantor::Address }

          # @!attribute date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   A means of verifying the person's identity.
          #
          #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification]
          required :identification,
                   -> {
                     Increase::Models::EntityCreateParams::Trust::Grantor::Identification
                   }

          # @!attribute name
          #   The person's legal name.
          #
          #   @return [String]
          required :name, String

          # @!attribute confirmed_no_us_tax_id
          #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
          #
          #   @return [Boolean]
          optional :confirmed_no_us_tax_id, Increase::BooleanModel

          # @!parse
          #   # The grantor of the trust. Required if `category` is equal to `revocable`.
          #   #
          #   # @param address [Increase::Models::EntityCreateParams::Trust::Grantor::Address] The individual's physical address. Mail receiving locations like PO Boxes and
          #   #   PMB's are disallowed.
          #   #
          #   # @param date_of_birth [String] The person's date of birth in YYYY-MM-DD format.
          #   #
          #   # @param identification [Increase::Models::EntityCreateParams::Trust::Grantor::Identification] A means of verifying the person's identity.
          #   #
          #   # @param name [String] The person's legal name.
          #   #
          #   # @param confirmed_no_us_tax_id [Boolean] The identification method for an individual can only be a passport, driver's
          #   #   license, or other document if you've confirmed the individual does not have a US
          #   #   tax id (either a Social Security Number or Individual Taxpayer Identification
          #   #   Number).
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          #
          # ```ruby
          # address => {
          #   city: String,
          #   line1: String,
          #   state: String,
          #   zip: String,
          #   line2: String
          # }
          # ```
          class Address < Increase::BaseModel
            # @!attribute city
            #   The city of the address.
            #
            #   @return [String]
            required :city, String

            # @!attribute line1
            #   The first line of the address. This is usually the street number and street.
            #
            #   @return [String]
            required :line1, String

            # @!attribute state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
            #
            #   @return [String]
            required :state, String

            # @!attribute zip
            #   The ZIP code of the address.
            #
            #   @return [String]
            required :zip, String

            # @!attribute line2
            #   The second line of the address. This might be the floor or room number.
            #
            #   @return [String]
            optional :line2, String

            # @!parse
            #   # The individual's physical address. Mail receiving locations like PO Boxes and
            #   #   PMB's are disallowed.
            #   #
            #   # @param city [String] The city of the address.
            #   #
            #   # @param line1 [String] The first line of the address. This is usually the street number and street.
            #   #
            #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
            #   #   the address.
            #   #
            #   # @param zip [String] The ZIP code of the address.
            #   #
            #   # @param line2 [String] The second line of the address. This might be the floor or room number.
            #   #
            #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # identification => {
          #   method_: enum: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method,
          #   number: String,
          #   drivers_license: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
          #   other: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
          #   passport: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport
          # }
          # ```
          class Identification < Increase::BaseModel
            # @!attribute method_
            #   A method that can be used to verify the individual's identity.
            #
            #   @return [Symbol, Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method]
            required :method_,
                     enum: -> {
                       Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method
                     },
                     api_name: :method

            # @!attribute number
            #   An identification number that can be used to verify the individual's identity, such as a social security number.
            #
            #   @return [String]
            required :number, String

            # @!attribute drivers_license
            #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense]
            optional :drivers_license,
                     -> { Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense }

            # @!attribute other
            #   Information about the identification document provided. Required if `method` is equal to `other`.
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other]
            optional :other,
                     -> {
                       Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other
                     }

            # @!attribute passport
            #   Information about the passport used for identification. Required if `method` is equal to `passport`.
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport]
            optional :passport,
                     -> {
                       Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport
                     }

            # @!parse
            #   # A means of verifying the person's identity.
            #   #
            #   # @param method_ [String] A method that can be used to verify the individual's identity.
            #   #
            #   # @param number [String] An identification number that can be used to verify the individual's identity,
            #   #   such as a social security number.
            #   #
            #   # @param drivers_license [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense] Information about the United States driver's license used for identification.
            #   #   Required if `method` is equal to `drivers_license`.
            #   #
            #   # @param other [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other] Information about the identification document provided. Required if `method` is
            #   #   equal to `other`.
            #   #
            #   # @param passport [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport] Information about the passport used for identification. Required if `method` is
            #   #   equal to `passport`.
            #   #
            #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # A method that can be used to verify the individual's identity.
            #
            # @example
            #
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

            # @example
            #
            # ```ruby
            # drivers_license => {
            #   expiration_date: Date,
            #   file_id: String,
            #   state: String,
            #   back_file_id: String
            # }
            # ```
            class DriversLicense < Increase::BaseModel
              # @!attribute expiration_date
              #   The driver's license's expiration date in YYYY-MM-DD format.
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   The identifier of the File containing the front of the driver's license.
              #
              #   @return [String]
              required :file_id, String

              # @!attribute state
              #   The state that issued the provided driver's license.
              #
              #   @return [String]
              required :state, String

              # @!attribute back_file_id
              #   The identifier of the File containing the back of the driver's license.
              #
              #   @return [String]
              optional :back_file_id, String

              # @!parse
              #   # Information about the United States driver's license used for identification.
              #   #   Required if `method` is equal to `drivers_license`.
              #   #
              #   # @param expiration_date [String] The driver's license's expiration date in YYYY-MM-DD format.
              #   #
              #   # @param file_id [String] The identifier of the File containing the front of the driver's license.
              #   #
              #   # @param state [String] The state that issued the provided driver's license.
              #   #
              #   # @param back_file_id [String] The identifier of the File containing the back of the driver's license.
              #   #
              #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end

            # @example
            #
            # ```ruby
            # other => {
            #   country: String,
            #   description: String,
            #   file_id: String,
            #   back_file_id: String,
            #   expiration_date: Date
            # }
            # ```
            class Other < Increase::BaseModel
              # @!attribute country
              #   The two-character ISO 3166-1 code representing the country that issued the document.
              #
              #   @return [String]
              required :country, String

              # @!attribute description
              #   A description of the document submitted.
              #
              #   @return [String]
              required :description, String

              # @!attribute file_id
              #   The identifier of the File containing the front of the document.
              #
              #   @return [String]
              required :file_id, String

              # @!attribute back_file_id
              #   The identifier of the File containing the back of the document. Not every document has a reverse side.
              #
              #   @return [String]
              optional :back_file_id, String

              # @!attribute expiration_date
              #   The document's expiration date in YYYY-MM-DD format.
              #
              #   @return [Date]
              optional :expiration_date, Date

              # @!parse
              #   # Information about the identification document provided. Required if `method` is
              #   #   equal to `other`.
              #   #
              #   # @param country [String] The two-character ISO 3166-1 code representing the country that issued the
              #   #   document.
              #   #
              #   # @param description [String] A description of the document submitted.
              #   #
              #   # @param file_id [String] The identifier of the File containing the front of the document.
              #   #
              #   # @param back_file_id [String] The identifier of the File containing the back of the document. Not every
              #   #   document has a reverse side.
              #   #
              #   # @param expiration_date [String] The document's expiration date in YYYY-MM-DD format.
              #   #
              #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end

            # @example
            #
            # ```ruby
            # passport => {
            #   country: String,
            #   expiration_date: Date,
            #   file_id: String
            # }
            # ```
            class Passport < Increase::BaseModel
              # @!attribute country
              #   The country that issued the passport.
              #
              #   @return [String]
              required :country, String

              # @!attribute expiration_date
              #   The passport's expiration date in YYYY-MM-DD format.
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   The identifier of the File containing the passport.
              #
              #   @return [String]
              required :file_id, String

              # @!parse
              #   # Information about the passport used for identification. Required if `method` is
              #   #   equal to `passport`.
              #   #
              #   # @param country [String] The country that issued the passport.
              #   #
              #   # @param expiration_date [String] The passport's expiration date in YYYY-MM-DD format.
              #   #
              #   # @param file_id [String] The identifier of the File containing the passport.
              #   #
              #   def initialize(country:, expiration_date:, file_id:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
