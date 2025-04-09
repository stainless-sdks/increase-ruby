# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#create
    class EntityCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute structure
      #   #/components/schemas/create_an_entity_parameters/properties/structure
      #
      #   @return [Symbol, Increase::Models::EntityCreateParams::Structure]
      required :structure, enum: -> { Increase::Models::EntityCreateParams::Structure }

      # @!attribute [r] corporation
      #   #/components/schemas/create_an_entity_parameters/properties/corporation
      #
      #   @return [Increase::Models::EntityCreateParams::Corporation, nil]
      optional :corporation, -> { Increase::Models::EntityCreateParams::Corporation }

      # @!parse
      #   # @return [Increase::Models::EntityCreateParams::Corporation]
      #   attr_writer :corporation

      # @!attribute [r] description
      #   #/components/schemas/create_an_entity_parameters/properties/description
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] government_authority
      #   #/components/schemas/create_an_entity_parameters/properties/government_authority
      #
      #   @return [Increase::Models::EntityCreateParams::GovernmentAuthority, nil]
      optional :government_authority, -> { Increase::Models::EntityCreateParams::GovernmentAuthority }

      # @!parse
      #   # @return [Increase::Models::EntityCreateParams::GovernmentAuthority]
      #   attr_writer :government_authority

      # @!attribute [r] joint
      #   #/components/schemas/create_an_entity_parameters/properties/joint
      #
      #   @return [Increase::Models::EntityCreateParams::Joint, nil]
      optional :joint, -> { Increase::Models::EntityCreateParams::Joint }

      # @!parse
      #   # @return [Increase::Models::EntityCreateParams::Joint]
      #   attr_writer :joint

      # @!attribute [r] natural_person
      #   #/components/schemas/create_an_entity_parameters/properties/natural_person
      #
      #   @return [Increase::Models::EntityCreateParams::NaturalPerson, nil]
      optional :natural_person, -> { Increase::Models::EntityCreateParams::NaturalPerson }

      # @!parse
      #   # @return [Increase::Models::EntityCreateParams::NaturalPerson]
      #   attr_writer :natural_person

      # @!attribute [r] supplemental_documents
      #   #/components/schemas/create_an_entity_parameters/properties/supplemental_documents
      #
      #   @return [Array<Increase::Models::EntityCreateParams::SupplementalDocument>, nil]
      optional :supplemental_documents,
               -> { Increase::Internal::Type::ArrayOf[Increase::Models::EntityCreateParams::SupplementalDocument] }

      # @!parse
      #   # @return [Array<Increase::Models::EntityCreateParams::SupplementalDocument>]
      #   attr_writer :supplemental_documents

      # @!attribute [r] third_party_verification
      #   #/components/schemas/create_an_entity_parameters/properties/third_party_verification
      #
      #   @return [Increase::Models::EntityCreateParams::ThirdPartyVerification, nil]
      optional :third_party_verification, -> { Increase::Models::EntityCreateParams::ThirdPartyVerification }

      # @!parse
      #   # @return [Increase::Models::EntityCreateParams::ThirdPartyVerification]
      #   attr_writer :third_party_verification

      # @!attribute [r] trust
      #   #/components/schemas/create_an_entity_parameters/properties/trust
      #
      #   @return [Increase::Models::EntityCreateParams::Trust, nil]
      optional :trust, -> { Increase::Models::EntityCreateParams::Trust }

      # @!parse
      #   # @return [Increase::Models::EntityCreateParams::Trust]
      #   attr_writer :trust

      # @!parse
      #   # @param structure [Symbol, Increase::Models::EntityCreateParams::Structure]
      #   # @param corporation [Increase::Models::EntityCreateParams::Corporation]
      #   # @param description [String]
      #   # @param government_authority [Increase::Models::EntityCreateParams::GovernmentAuthority]
      #   # @param joint [Increase::Models::EntityCreateParams::Joint]
      #   # @param natural_person [Increase::Models::EntityCreateParams::NaturalPerson]
      #   # @param supplemental_documents [Array<Increase::Models::EntityCreateParams::SupplementalDocument>]
      #   # @param third_party_verification [Increase::Models::EntityCreateParams::ThirdPartyVerification]
      #   # @param trust [Increase::Models::EntityCreateParams::Trust]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
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
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/create_an_entity_parameters/properties/structure
      module Structure
        extend Increase::Internal::Type::Enum

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

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class Corporation < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address
        #
        #   @return [Increase::Models::EntityCreateParams::Corporation::Address]
        required :address, -> { Increase::Models::EntityCreateParams::Corporation::Address }

        # @!attribute beneficial_owners
        #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners
        #
        #   @return [Array<Increase::Models::EntityCreateParams::Corporation::BeneficialOwner>]
        required :beneficial_owners,
                 -> { Increase::Internal::Type::ArrayOf[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner] }

        # @!attribute name
        #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/name
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/tax_identifier
        #
        #   @return [String]
        required :tax_identifier, String

        # @!attribute [r] incorporation_state
        #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/incorporation_state
        #
        #   @return [String, nil]
        optional :incorporation_state, String

        # @!parse
        #   # @return [String]
        #   attr_writer :incorporation_state

        # @!attribute [r] industry_code
        #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/industry_code
        #
        #   @return [String, nil]
        optional :industry_code, String

        # @!parse
        #   # @return [String]
        #   attr_writer :industry_code

        # @!attribute [r] website
        #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/website
        #
        #   @return [String, nil]
        optional :website, String

        # @!parse
        #   # @return [String]
        #   attr_writer :website

        # @!parse
        #   # #/components/schemas/create_an_entity_parameters/properties/corporation
        #   #
        #   # @param address [Increase::Models::EntityCreateParams::Corporation::Address]
        #   # @param beneficial_owners [Array<Increase::Models::EntityCreateParams::Corporation::BeneficialOwner>]
        #   # @param name [String]
        #   # @param tax_identifier [String]
        #   # @param incorporation_state [String]
        #   # @param industry_code [String]
        #   # @param website [String]
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

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::EntityCreateParams::Corporation#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute state
          #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!attribute [r] line2
          #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/line2
          #
          #   @return [String, nil]
          optional :line2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :line2

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param state [String]
          #   # @param zip [String]
          #   # @param line2 [String]
          #   #
          #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        class BeneficialOwner < Increase::Internal::Type::BaseModel
          # @!attribute individual
          #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual
          #
          #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual]
          required :individual,
                   -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual }

          # @!attribute prongs
          #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/prongs
          #
          #   @return [Array<Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong>]
          required :prongs,
                   -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong] }

          # @!attribute [r] company_title
          #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/company_title
          #
          #   @return [String, nil]
          optional :company_title, String

          # @!parse
          #   # @return [String]
          #   attr_writer :company_title

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items
          #   #
          #   # @param individual [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual]
          #   # @param prongs [Array<Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong>]
          #   # @param company_title [String]
          #   #
          #   def initialize(individual:, prongs:, company_title: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::EntityCreateParams::Corporation::BeneficialOwner#individual
          class Individual < Increase::Internal::Type::BaseModel
            # @!attribute address
            #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address
            #
            #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address]
            required :address,
                     -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address }

            # @!attribute date_of_birth
            #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute identification
            #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification
            #
            #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification]
            required :identification,
                     -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification }

            # @!attribute name
            #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/name
            #
            #   @return [String]
            required :name, String

            # @!attribute [r] confirmed_no_us_tax_id
            #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/confirmed_no_us_tax_id
            #
            #   @return [Boolean, nil]
            optional :confirmed_no_us_tax_id, Increase::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :confirmed_no_us_tax_id

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual
            #   #
            #   # @param address [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address]
            #   # @param date_of_birth [Date]
            #   # @param identification [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification]
            #   # @param name [String]
            #   # @param confirmed_no_us_tax_id [Boolean]
            #   #
            #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual#address
            class Address < Increase::Internal::Type::BaseModel
              # @!attribute country
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/country
              #
              #   @return [String]
              required :country, String

              # @!attribute line1
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/line1
              #
              #   @return [String]
              required :line1, String

              # @!attribute [r] city
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/city
              #
              #   @return [String, nil]
              optional :city, String

              # @!parse
              #   # @return [String]
              #   attr_writer :city

              # @!attribute [r] line2
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/line2
              #
              #   @return [String, nil]
              optional :line2, String

              # @!parse
              #   # @return [String]
              #   attr_writer :line2

              # @!attribute [r] state
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/state
              #
              #   @return [String, nil]
              optional :state, String

              # @!parse
              #   # @return [String]
              #   attr_writer :state

              # @!attribute [r] zip
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/zip
              #
              #   @return [String, nil]
              optional :zip, String

              # @!parse
              #   # @return [String]
              #   attr_writer :zip

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address
              #   #
              #   # @param country [String]
              #   # @param line1 [String]
              #   # @param city [String]
              #   # @param line2 [String]
              #   # @param state [String]
              #   # @param zip [String]
              #   #
              #   def initialize(country:, line1:, city: nil, line2: nil, state: nil, zip: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual#identification
            class Identification < Increase::Internal::Type::BaseModel
              # @!attribute method_
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/method
              #
              #   @return [Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method]
              required :method_,
                       enum: -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method },
                       api_name: :method

              # @!attribute number
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/number
              #
              #   @return [String]
              required :number, String

              # @!attribute [r] drivers_license
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license
              #
              #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense, nil]
              optional :drivers_license,
                       -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense }

              # @!parse
              #   # @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense]
              #   attr_writer :drivers_license

              # @!attribute [r] other
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other
              #
              #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other, nil]
              optional :other,
                       -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other }

              # @!parse
              #   # @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other]
              #   attr_writer :other

              # @!attribute [r] passport
              #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport
              #
              #   @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport, nil]
              optional :passport,
                       -> { Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport }

              # @!parse
              #   # @return [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport]
              #   attr_writer :passport

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification
              #   #
              #   # @param method_ [Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method]
              #   # @param number [String]
              #   # @param drivers_license [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense]
              #   # @param other [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other]
              #   # @param passport [Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport]
              #   #
              #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/method
              #
              # @see Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification#method_
              module Method
                extend Increase::Internal::Type::Enum

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

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # @see Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification#drivers_license
              class DriversLicense < Increase::Internal::Type::BaseModel
                # @!attribute expiration_date
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license/properties/expiration_date
                #
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute file_id
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license/properties/file_id
                #
                #   @return [String]
                required :file_id, String

                # @!attribute state
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license/properties/state
                #
                #   @return [String]
                required :state, String

                # @!attribute [r] back_file_id
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license/properties/back_file_id
                #
                #   @return [String, nil]
                optional :back_file_id, String

                # @!parse
                #   # @return [String]
                #   attr_writer :back_file_id

                # @!parse
                #   # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license
                #   #
                #   # @param expiration_date [Date]
                #   # @param file_id [String]
                #   # @param state [String]
                #   # @param back_file_id [String]
                #   #
                #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
              end

              # @see Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification#other
              class Other < Increase::Internal::Type::BaseModel
                # @!attribute country
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/country
                #
                #   @return [String]
                required :country, String

                # @!attribute description
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/description
                #
                #   @return [String]
                required :description, String

                # @!attribute file_id
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/file_id
                #
                #   @return [String]
                required :file_id, String

                # @!attribute [r] back_file_id
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/back_file_id
                #
                #   @return [String, nil]
                optional :back_file_id, String

                # @!parse
                #   # @return [String]
                #   attr_writer :back_file_id

                # @!attribute [r] expiration_date
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/expiration_date
                #
                #   @return [Date, nil]
                optional :expiration_date, Date

                # @!parse
                #   # @return [Date]
                #   attr_writer :expiration_date

                # @!parse
                #   # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other
                #   #
                #   # @param country [String]
                #   # @param description [String]
                #   # @param file_id [String]
                #   # @param back_file_id [String]
                #   # @param expiration_date [Date]
                #   #
                #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
              end

              # @see Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification#passport
              class Passport < Increase::Internal::Type::BaseModel
                # @!attribute country
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport/properties/country
                #
                #   @return [String]
                required :country, String

                # @!attribute expiration_date
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport/properties/expiration_date
                #
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute file_id
                #   #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport/properties/file_id
                #
                #   @return [String]
                required :file_id, String

                # @!parse
                #   # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport
                #   #
                #   # @param country [String]
                #   # @param expiration_date [Date]
                #   # @param file_id [String]
                #   #
                #   def initialize(country:, expiration_date:, file_id:, **) = super

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
              end
            end
          end

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/prongs/items
          module Prong
            extend Increase::Internal::Type::Enum

            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP = :ownership

            # A person who manages, directs, or has significant control of the entity.
            CONTROL = :control

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end

      class GovernmentAuthority < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address
        #
        #   @return [Increase::Models::EntityCreateParams::GovernmentAuthority::Address]
        required :address, -> { Increase::Models::EntityCreateParams::GovernmentAuthority::Address }

        # @!attribute authorized_persons
        #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/authorized_persons
        #
        #   @return [Array<Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson>]
        required :authorized_persons,
                 -> { Increase::Internal::Type::ArrayOf[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson] }

        # @!attribute category
        #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/category
        #
        #   @return [Symbol, Increase::Models::EntityCreateParams::GovernmentAuthority::Category]
        required :category, enum: -> { Increase::Models::EntityCreateParams::GovernmentAuthority::Category }

        # @!attribute name
        #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/name
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/tax_identifier
        #
        #   @return [String]
        required :tax_identifier, String

        # @!attribute [r] website
        #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/website
        #
        #   @return [String, nil]
        optional :website, String

        # @!parse
        #   # @return [String]
        #   attr_writer :website

        # @!parse
        #   # #/components/schemas/create_an_entity_parameters/properties/government_authority
        #   #
        #   # @param address [Increase::Models::EntityCreateParams::GovernmentAuthority::Address]
        #   # @param authorized_persons [Array<Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson>]
        #   # @param category [Symbol, Increase::Models::EntityCreateParams::GovernmentAuthority::Category]
        #   # @param name [String]
        #   # @param tax_identifier [String]
        #   # @param website [String]
        #   #
        #   def initialize(address:, authorized_persons:, category:, name:, tax_identifier:, website: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::EntityCreateParams::GovernmentAuthority#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute state
          #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!attribute [r] line2
          #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/line2
          #
          #   @return [String, nil]
          optional :line2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :line2

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param state [String]
          #   # @param zip [String]
          #   # @param line2 [String]
          #   #
          #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        class AuthorizedPerson < Increase::Internal::Type::BaseModel
          # @!attribute name
          #   #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/authorized_persons/items/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/authorized_persons/items
          #   #
          #   # @param name [String]
          #   #
          #   def initialize(name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/category
        #
        # @see Increase::Models::EntityCreateParams::GovernmentAuthority#category
        module Category
          extend Increase::Internal::Type::Enum

          # The Public Entity is a Municipality.
          MUNICIPALITY = :municipality

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      class Joint < Increase::Internal::Type::BaseModel
        # @!attribute individuals
        #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals
        #
        #   @return [Array<Increase::Models::EntityCreateParams::Joint::Individual>]
        required :individuals,
                 -> { Increase::Internal::Type::ArrayOf[Increase::Models::EntityCreateParams::Joint::Individual] }

        # @!attribute [r] name
        #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/name
        #
        #   @return [String, nil]
        optional :name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :name

        # @!parse
        #   # #/components/schemas/create_an_entity_parameters/properties/joint
        #   #
        #   # @param individuals [Array<Increase::Models::EntityCreateParams::Joint::Individual>]
        #   # @param name [String]
        #   #
        #   def initialize(individuals:, name: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        class Individual < Increase::Internal::Type::BaseModel
          # @!attribute address
          #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address
          #
          #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Address]
          required :address, -> { Increase::Models::EntityCreateParams::Joint::Individual::Address }

          # @!attribute date_of_birth
          #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/date_of_birth
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification
          #
          #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification]
          required :identification, -> { Increase::Models::EntityCreateParams::Joint::Individual::Identification }

          # @!attribute name
          #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/name
          #
          #   @return [String]
          required :name, String

          # @!attribute [r] confirmed_no_us_tax_id
          #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/confirmed_no_us_tax_id
          #
          #   @return [Boolean, nil]
          optional :confirmed_no_us_tax_id, Increase::Internal::Type::Boolean

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :confirmed_no_us_tax_id

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items
          #   #
          #   # @param address [Increase::Models::EntityCreateParams::Joint::Individual::Address]
          #   # @param date_of_birth [Date]
          #   # @param identification [Increase::Models::EntityCreateParams::Joint::Individual::Identification]
          #   # @param name [String]
          #   # @param confirmed_no_us_tax_id [Boolean]
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::EntityCreateParams::Joint::Individual#address
          class Address < Increase::Internal::Type::BaseModel
            # @!attribute city
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/city
            #
            #   @return [String]
            required :city, String

            # @!attribute line1
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/line1
            #
            #   @return [String]
            required :line1, String

            # @!attribute state
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/state
            #
            #   @return [String]
            required :state, String

            # @!attribute zip
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/zip
            #
            #   @return [String]
            required :zip, String

            # @!attribute [r] line2
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/line2
            #
            #   @return [String, nil]
            optional :line2, String

            # @!parse
            #   # @return [String]
            #   attr_writer :line2

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address
            #   #
            #   # @param city [String]
            #   # @param line1 [String]
            #   # @param state [String]
            #   # @param zip [String]
            #   # @param line2 [String]
            #   #
            #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::EntityCreateParams::Joint::Individual#identification
          class Identification < Increase::Internal::Type::BaseModel
            # @!attribute method_
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/method
            #
            #   @return [Symbol, Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method]
            required :method_,
                     enum: -> { Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method },
                     api_name: :method

            # @!attribute number
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/number
            #
            #   @return [String]
            required :number, String

            # @!attribute [r] drivers_license
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license
            #
            #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense, nil]
            optional :drivers_license,
                     -> { Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense }

            # @!parse
            #   # @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense]
            #   attr_writer :drivers_license

            # @!attribute [r] other
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other
            #
            #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other, nil]
            optional :other, -> { Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other }

            # @!parse
            #   # @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other]
            #   attr_writer :other

            # @!attribute [r] passport
            #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport
            #
            #   @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport, nil]
            optional :passport,
                     -> { Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport }

            # @!parse
            #   # @return [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport]
            #   attr_writer :passport

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification
            #   #
            #   # @param method_ [Symbol, Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method]
            #   # @param number [String]
            #   # @param drivers_license [Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense]
            #   # @param other [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other]
            #   # @param passport [Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport]
            #   #
            #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/method
            #
            # @see Increase::Models::EntityCreateParams::Joint::Individual::Identification#method_
            module Method
              extend Increase::Internal::Type::Enum

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

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::EntityCreateParams::Joint::Individual::Identification#drivers_license
            class DriversLicense < Increase::Internal::Type::BaseModel
              # @!attribute expiration_date
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license/properties/expiration_date
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!attribute state
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license/properties/state
              #
              #   @return [String]
              required :state, String

              # @!attribute [r] back_file_id
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license/properties/back_file_id
              #
              #   @return [String, nil]
              optional :back_file_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :back_file_id

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license
              #   #
              #   # @param expiration_date [Date]
              #   # @param file_id [String]
              #   # @param state [String]
              #   # @param back_file_id [String]
              #   #
              #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::EntityCreateParams::Joint::Individual::Identification#other
            class Other < Increase::Internal::Type::BaseModel
              # @!attribute country
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/country
              #
              #   @return [String]
              required :country, String

              # @!attribute description
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/description
              #
              #   @return [String]
              required :description, String

              # @!attribute file_id
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!attribute [r] back_file_id
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/back_file_id
              #
              #   @return [String, nil]
              optional :back_file_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :back_file_id

              # @!attribute [r] expiration_date
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/expiration_date
              #
              #   @return [Date, nil]
              optional :expiration_date, Date

              # @!parse
              #   # @return [Date]
              #   attr_writer :expiration_date

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other
              #   #
              #   # @param country [String]
              #   # @param description [String]
              #   # @param file_id [String]
              #   # @param back_file_id [String]
              #   # @param expiration_date [Date]
              #   #
              #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::EntityCreateParams::Joint::Individual::Identification#passport
            class Passport < Increase::Internal::Type::BaseModel
              # @!attribute country
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport/properties/country
              #
              #   @return [String]
              required :country, String

              # @!attribute expiration_date
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport/properties/expiration_date
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport
              #   #
              #   # @param country [String]
              #   # @param expiration_date [Date]
              #   # @param file_id [String]
              #   #
              #   def initialize(country:, expiration_date:, file_id:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end
          end
        end
      end

      class NaturalPerson < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address
        #
        #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Address]
        required :address, -> { Increase::Models::EntityCreateParams::NaturalPerson::Address }

        # @!attribute date_of_birth
        #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/date_of_birth
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute identification
        #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification
        #
        #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification]
        required :identification, -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification }

        # @!attribute name
        #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/name
        #
        #   @return [String]
        required :name, String

        # @!attribute [r] confirmed_no_us_tax_id
        #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/confirmed_no_us_tax_id
        #
        #   @return [Boolean, nil]
        optional :confirmed_no_us_tax_id, Increase::Internal::Type::Boolean

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :confirmed_no_us_tax_id

        # @!parse
        #   # #/components/schemas/create_an_entity_parameters/properties/natural_person
        #   #
        #   # @param address [Increase::Models::EntityCreateParams::NaturalPerson::Address]
        #   # @param date_of_birth [Date]
        #   # @param identification [Increase::Models::EntityCreateParams::NaturalPerson::Identification]
        #   # @param name [String]
        #   # @param confirmed_no_us_tax_id [Boolean]
        #   #
        #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::EntityCreateParams::NaturalPerson#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute state
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!attribute [r] line2
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/line2
          #
          #   @return [String, nil]
          optional :line2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :line2

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param state [String]
          #   # @param zip [String]
          #   # @param line2 [String]
          #   #
          #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::EntityCreateParams::NaturalPerson#identification
        class Identification < Increase::Internal::Type::BaseModel
          # @!attribute method_
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/method
          #
          #   @return [Symbol, Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method]
          required :method_,
                   enum: -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method },
                   api_name: :method

          # @!attribute number
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/number
          #
          #   @return [String]
          required :number, String

          # @!attribute [r] drivers_license
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license
          #
          #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense, nil]
          optional :drivers_license,
                   -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense }

          # @!parse
          #   # @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense]
          #   attr_writer :drivers_license

          # @!attribute [r] other
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other
          #
          #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other, nil]
          optional :other, -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other }

          # @!parse
          #   # @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other]
          #   attr_writer :other

          # @!attribute [r] passport
          #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport
          #
          #   @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport, nil]
          optional :passport, -> { Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport }

          # @!parse
          #   # @return [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport]
          #   attr_writer :passport

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification
          #   #
          #   # @param method_ [Symbol, Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method]
          #   # @param number [String]
          #   # @param drivers_license [Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense]
          #   # @param other [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other]
          #   # @param passport [Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport]
          #   #
          #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/method
          #
          # @see Increase::Models::EntityCreateParams::NaturalPerson::Identification#method_
          module Method
            extend Increase::Internal::Type::Enum

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

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::EntityCreateParams::NaturalPerson::Identification#drivers_license
          class DriversLicense < Increase::Internal::Type::BaseModel
            # @!attribute expiration_date
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license/properties/expiration_date
            #
            #   @return [Date]
            required :expiration_date, Date

            # @!attribute file_id
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license/properties/file_id
            #
            #   @return [String]
            required :file_id, String

            # @!attribute state
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license/properties/state
            #
            #   @return [String]
            required :state, String

            # @!attribute [r] back_file_id
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license/properties/back_file_id
            #
            #   @return [String, nil]
            optional :back_file_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :back_file_id

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license
            #   #
            #   # @param expiration_date [Date]
            #   # @param file_id [String]
            #   # @param state [String]
            #   # @param back_file_id [String]
            #   #
            #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::EntityCreateParams::NaturalPerson::Identification#other
          class Other < Increase::Internal::Type::BaseModel
            # @!attribute country
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/country
            #
            #   @return [String]
            required :country, String

            # @!attribute description
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/description
            #
            #   @return [String]
            required :description, String

            # @!attribute file_id
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/file_id
            #
            #   @return [String]
            required :file_id, String

            # @!attribute [r] back_file_id
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/back_file_id
            #
            #   @return [String, nil]
            optional :back_file_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :back_file_id

            # @!attribute [r] expiration_date
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/expiration_date
            #
            #   @return [Date, nil]
            optional :expiration_date, Date

            # @!parse
            #   # @return [Date]
            #   attr_writer :expiration_date

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other
            #   #
            #   # @param country [String]
            #   # @param description [String]
            #   # @param file_id [String]
            #   # @param back_file_id [String]
            #   # @param expiration_date [Date]
            #   #
            #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::EntityCreateParams::NaturalPerson::Identification#passport
          class Passport < Increase::Internal::Type::BaseModel
            # @!attribute country
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport/properties/country
            #
            #   @return [String]
            required :country, String

            # @!attribute expiration_date
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport/properties/expiration_date
            #
            #   @return [Date]
            required :expiration_date, Date

            # @!attribute file_id
            #   #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport/properties/file_id
            #
            #   @return [String]
            required :file_id, String

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport
            #   #
            #   # @param country [String]
            #   # @param expiration_date [Date]
            #   # @param file_id [String]
            #   #
            #   def initialize(country:, expiration_date:, file_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end
        end
      end

      class SupplementalDocument < Increase::Internal::Type::BaseModel
        # @!attribute file_id
        #   #/components/schemas/create_an_entity_parameters/properties/supplemental_documents/items/properties/file_id
        #
        #   @return [String]
        required :file_id, String

        # @!parse
        #   # #/components/schemas/create_an_entity_parameters/properties/supplemental_documents/items
        #   #
        #   # @param file_id [String]
        #   #
        #   def initialize(file_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      class ThirdPartyVerification < Increase::Internal::Type::BaseModel
        # @!attribute reference
        #   #/components/schemas/create_an_entity_parameters/properties/third_party_verification/properties/reference
        #
        #   @return [String]
        required :reference, String

        # @!attribute vendor
        #   #/components/schemas/create_an_entity_parameters/properties/third_party_verification/properties/vendor
        #
        #   @return [Symbol, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor]
        required :vendor, enum: -> { Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor }

        # @!parse
        #   # #/components/schemas/create_an_entity_parameters/properties/third_party_verification
        #   #
        #   # @param reference [String]
        #   # @param vendor [Symbol, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor]
        #   #
        #   def initialize(reference:, vendor:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/create_an_entity_parameters/properties/third_party_verification/properties/vendor
        #
        # @see Increase::Models::EntityCreateParams::ThirdPartyVerification#vendor
        module Vendor
          extend Increase::Internal::Type::Enum

          # Alloy. See https://alloy.com for more information.
          ALLOY = :alloy

          # Middesk. See https://middesk.com for more information.
          MIDDESK = :middesk

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      class Trust < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/address
        #
        #   @return [Increase::Models::EntityCreateParams::Trust::Address]
        required :address, -> { Increase::Models::EntityCreateParams::Trust::Address }

        # @!attribute category
        #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/category
        #
        #   @return [Symbol, Increase::Models::EntityCreateParams::Trust::Category]
        required :category, enum: -> { Increase::Models::EntityCreateParams::Trust::Category }

        # @!attribute name
        #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/name
        #
        #   @return [String]
        required :name, String

        # @!attribute trustees
        #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees
        #
        #   @return [Array<Increase::Models::EntityCreateParams::Trust::Trustee>]
        required :trustees,
                 -> { Increase::Internal::Type::ArrayOf[Increase::Models::EntityCreateParams::Trust::Trustee] }

        # @!attribute [r] formation_document_file_id
        #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/formation_document_file_id
        #
        #   @return [String, nil]
        optional :formation_document_file_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :formation_document_file_id

        # @!attribute [r] formation_state
        #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/formation_state
        #
        #   @return [String, nil]
        optional :formation_state, String

        # @!parse
        #   # @return [String]
        #   attr_writer :formation_state

        # @!attribute [r] grantor
        #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor
        #
        #   @return [Increase::Models::EntityCreateParams::Trust::Grantor, nil]
        optional :grantor, -> { Increase::Models::EntityCreateParams::Trust::Grantor }

        # @!parse
        #   # @return [Increase::Models::EntityCreateParams::Trust::Grantor]
        #   attr_writer :grantor

        # @!attribute [r] tax_identifier
        #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/tax_identifier
        #
        #   @return [String, nil]
        optional :tax_identifier, String

        # @!parse
        #   # @return [String]
        #   attr_writer :tax_identifier

        # @!parse
        #   # #/components/schemas/create_an_entity_parameters/properties/trust
        #   #
        #   # @param address [Increase::Models::EntityCreateParams::Trust::Address]
        #   # @param category [Symbol, Increase::Models::EntityCreateParams::Trust::Category]
        #   # @param name [String]
        #   # @param trustees [Array<Increase::Models::EntityCreateParams::Trust::Trustee>]
        #   # @param formation_document_file_id [String]
        #   # @param formation_state [String]
        #   # @param grantor [Increase::Models::EntityCreateParams::Trust::Grantor]
        #   # @param tax_identifier [String]
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

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::EntityCreateParams::Trust#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute state
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!attribute [r] line2
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/line2
          #
          #   @return [String, nil]
          optional :line2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :line2

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param state [String]
          #   # @param zip [String]
          #   # @param line2 [String]
          #   #
          #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/category
        #
        # @see Increase::Models::EntityCreateParams::Trust#category
        module Category
          extend Increase::Internal::Type::Enum

          # The trust is revocable by the grantor.
          REVOCABLE = :revocable

          # The trust cannot be revoked.
          IRREVOCABLE = :irrevocable

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class Trustee < Increase::Internal::Type::BaseModel
          # @!attribute structure
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/structure
          #
          #   @return [Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Structure]
          required :structure, enum: -> { Increase::Models::EntityCreateParams::Trust::Trustee::Structure }

          # @!attribute [r] individual
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual
          #
          #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual, nil]
          optional :individual, -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual }

          # @!parse
          #   # @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual]
          #   attr_writer :individual

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items
          #   #
          #   # @param structure [Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Structure]
          #   # @param individual [Increase::Models::EntityCreateParams::Trust::Trustee::Individual]
          #   #
          #   def initialize(structure:, individual: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/structure
          #
          # @see Increase::Models::EntityCreateParams::Trust::Trustee#structure
          module Structure
            extend Increase::Internal::Type::Enum

            # The trustee is an individual.
            INDIVIDUAL = :individual

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::EntityCreateParams::Trust::Trustee#individual
          class Individual < Increase::Internal::Type::BaseModel
            # @!attribute address
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address]
            required :address, -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address }

            # @!attribute date_of_birth
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute identification
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification]
            required :identification,
                     -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification }

            # @!attribute name
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/name
            #
            #   @return [String]
            required :name, String

            # @!attribute [r] confirmed_no_us_tax_id
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/confirmed_no_us_tax_id
            #
            #   @return [Boolean, nil]
            optional :confirmed_no_us_tax_id, Increase::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :confirmed_no_us_tax_id

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual
            #   #
            #   # @param address [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address]
            #   # @param date_of_birth [Date]
            #   # @param identification [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification]
            #   # @param name [String]
            #   # @param confirmed_no_us_tax_id [Boolean]
            #   #
            #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::EntityCreateParams::Trust::Trustee::Individual#address
            class Address < Increase::Internal::Type::BaseModel
              # @!attribute city
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/city
              #
              #   @return [String]
              required :city, String

              # @!attribute line1
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/line1
              #
              #   @return [String]
              required :line1, String

              # @!attribute state
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/state
              #
              #   @return [String]
              required :state, String

              # @!attribute zip
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/zip
              #
              #   @return [String]
              required :zip, String

              # @!attribute [r] line2
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/line2
              #
              #   @return [String, nil]
              optional :line2, String

              # @!parse
              #   # @return [String]
              #   attr_writer :line2

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address
              #   #
              #   # @param city [String]
              #   # @param line1 [String]
              #   # @param state [String]
              #   # @param zip [String]
              #   # @param line2 [String]
              #   #
              #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::EntityCreateParams::Trust::Trustee::Individual#identification
            class Identification < Increase::Internal::Type::BaseModel
              # @!attribute method_
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/method
              #
              #   @return [Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method]
              required :method_,
                       enum: -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method },
                       api_name: :method

              # @!attribute number
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/number
              #
              #   @return [String]
              required :number, String

              # @!attribute [r] drivers_license
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license
              #
              #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense, nil]
              optional :drivers_license,
                       -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense }

              # @!parse
              #   # @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense]
              #   attr_writer :drivers_license

              # @!attribute [r] other
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other
              #
              #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other, nil]
              optional :other,
                       -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other }

              # @!parse
              #   # @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other]
              #   attr_writer :other

              # @!attribute [r] passport
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport
              #
              #   @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport, nil]
              optional :passport,
                       -> { Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport }

              # @!parse
              #   # @return [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport]
              #   attr_writer :passport

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification
              #   #
              #   # @param method_ [Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method]
              #   # @param number [String]
              #   # @param drivers_license [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense]
              #   # @param other [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other]
              #   # @param passport [Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport]
              #   #
              #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/method
              #
              # @see Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification#method_
              module Method
                extend Increase::Internal::Type::Enum

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

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # @see Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification#drivers_license
              class DriversLicense < Increase::Internal::Type::BaseModel
                # @!attribute expiration_date
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license/properties/expiration_date
                #
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute file_id
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license/properties/file_id
                #
                #   @return [String]
                required :file_id, String

                # @!attribute state
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license/properties/state
                #
                #   @return [String]
                required :state, String

                # @!attribute [r] back_file_id
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license/properties/back_file_id
                #
                #   @return [String, nil]
                optional :back_file_id, String

                # @!parse
                #   # @return [String]
                #   attr_writer :back_file_id

                # @!parse
                #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license
                #   #
                #   # @param expiration_date [Date]
                #   # @param file_id [String]
                #   # @param state [String]
                #   # @param back_file_id [String]
                #   #
                #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
              end

              # @see Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification#other
              class Other < Increase::Internal::Type::BaseModel
                # @!attribute country
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/country
                #
                #   @return [String]
                required :country, String

                # @!attribute description
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/description
                #
                #   @return [String]
                required :description, String

                # @!attribute file_id
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/file_id
                #
                #   @return [String]
                required :file_id, String

                # @!attribute [r] back_file_id
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/back_file_id
                #
                #   @return [String, nil]
                optional :back_file_id, String

                # @!parse
                #   # @return [String]
                #   attr_writer :back_file_id

                # @!attribute [r] expiration_date
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/expiration_date
                #
                #   @return [Date, nil]
                optional :expiration_date, Date

                # @!parse
                #   # @return [Date]
                #   attr_writer :expiration_date

                # @!parse
                #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other
                #   #
                #   # @param country [String]
                #   # @param description [String]
                #   # @param file_id [String]
                #   # @param back_file_id [String]
                #   # @param expiration_date [Date]
                #   #
                #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
              end

              # @see Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification#passport
              class Passport < Increase::Internal::Type::BaseModel
                # @!attribute country
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport/properties/country
                #
                #   @return [String]
                required :country, String

                # @!attribute expiration_date
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport/properties/expiration_date
                #
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute file_id
                #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport/properties/file_id
                #
                #   @return [String]
                required :file_id, String

                # @!parse
                #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport
                #   #
                #   # @param country [String]
                #   # @param expiration_date [Date]
                #   # @param file_id [String]
                #   #
                #   def initialize(country:, expiration_date:, file_id:, **) = super

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
              end
            end
          end
        end

        # @see Increase::Models::EntityCreateParams::Trust#grantor
        class Grantor < Increase::Internal::Type::BaseModel
          # @!attribute address
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address
          #
          #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Address]
          required :address, -> { Increase::Models::EntityCreateParams::Trust::Grantor::Address }

          # @!attribute date_of_birth
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/date_of_birth
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification
          #
          #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification]
          required :identification, -> { Increase::Models::EntityCreateParams::Trust::Grantor::Identification }

          # @!attribute name
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/name
          #
          #   @return [String]
          required :name, String

          # @!attribute [r] confirmed_no_us_tax_id
          #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/confirmed_no_us_tax_id
          #
          #   @return [Boolean, nil]
          optional :confirmed_no_us_tax_id, Increase::Internal::Type::Boolean

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :confirmed_no_us_tax_id

          # @!parse
          #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor
          #   #
          #   # @param address [Increase::Models::EntityCreateParams::Trust::Grantor::Address]
          #   # @param date_of_birth [Date]
          #   # @param identification [Increase::Models::EntityCreateParams::Trust::Grantor::Identification]
          #   # @param name [String]
          #   # @param confirmed_no_us_tax_id [Boolean]
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::EntityCreateParams::Trust::Grantor#address
          class Address < Increase::Internal::Type::BaseModel
            # @!attribute city
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/city
            #
            #   @return [String]
            required :city, String

            # @!attribute line1
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/line1
            #
            #   @return [String]
            required :line1, String

            # @!attribute state
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/state
            #
            #   @return [String]
            required :state, String

            # @!attribute zip
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/zip
            #
            #   @return [String]
            required :zip, String

            # @!attribute [r] line2
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/line2
            #
            #   @return [String, nil]
            optional :line2, String

            # @!parse
            #   # @return [String]
            #   attr_writer :line2

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address
            #   #
            #   # @param city [String]
            #   # @param line1 [String]
            #   # @param state [String]
            #   # @param zip [String]
            #   # @param line2 [String]
            #   #
            #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::EntityCreateParams::Trust::Grantor#identification
          class Identification < Increase::Internal::Type::BaseModel
            # @!attribute method_
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/method
            #
            #   @return [Symbol, Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method]
            required :method_,
                     enum: -> { Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method },
                     api_name: :method

            # @!attribute number
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/number
            #
            #   @return [String]
            required :number, String

            # @!attribute [r] drivers_license
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense, nil]
            optional :drivers_license,
                     -> { Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense }

            # @!parse
            #   # @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense]
            #   attr_writer :drivers_license

            # @!attribute [r] other
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other, nil]
            optional :other, -> { Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other }

            # @!parse
            #   # @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other]
            #   attr_writer :other

            # @!attribute [r] passport
            #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport
            #
            #   @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport, nil]
            optional :passport, -> { Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport }

            # @!parse
            #   # @return [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport]
            #   attr_writer :passport

            # @!parse
            #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification
            #   #
            #   # @param method_ [Symbol, Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method]
            #   # @param number [String]
            #   # @param drivers_license [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense]
            #   # @param other [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other]
            #   # @param passport [Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport]
            #   #
            #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/method
            #
            # @see Increase::Models::EntityCreateParams::Trust::Grantor::Identification#method_
            module Method
              extend Increase::Internal::Type::Enum

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

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::EntityCreateParams::Trust::Grantor::Identification#drivers_license
            class DriversLicense < Increase::Internal::Type::BaseModel
              # @!attribute expiration_date
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license/properties/expiration_date
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!attribute state
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license/properties/state
              #
              #   @return [String]
              required :state, String

              # @!attribute [r] back_file_id
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license/properties/back_file_id
              #
              #   @return [String, nil]
              optional :back_file_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :back_file_id

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license
              #   #
              #   # @param expiration_date [Date]
              #   # @param file_id [String]
              #   # @param state [String]
              #   # @param back_file_id [String]
              #   #
              #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::EntityCreateParams::Trust::Grantor::Identification#other
            class Other < Increase::Internal::Type::BaseModel
              # @!attribute country
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/country
              #
              #   @return [String]
              required :country, String

              # @!attribute description
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/description
              #
              #   @return [String]
              required :description, String

              # @!attribute file_id
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!attribute [r] back_file_id
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/back_file_id
              #
              #   @return [String, nil]
              optional :back_file_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :back_file_id

              # @!attribute [r] expiration_date
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/expiration_date
              #
              #   @return [Date, nil]
              optional :expiration_date, Date

              # @!parse
              #   # @return [Date]
              #   attr_writer :expiration_date

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other
              #   #
              #   # @param country [String]
              #   # @param description [String]
              #   # @param file_id [String]
              #   # @param back_file_id [String]
              #   # @param expiration_date [Date]
              #   #
              #   def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::EntityCreateParams::Trust::Grantor::Identification#passport
            class Passport < Increase::Internal::Type::BaseModel
              # @!attribute country
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport/properties/country
              #
              #   @return [String]
              required :country, String

              # @!attribute expiration_date
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport/properties/expiration_date
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!parse
              #   # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport
              #   #
              #   # @param country [String]
              #   # @param expiration_date [Date]
              #   # @param file_id [String]
              #   #
              #   def initialize(country:, expiration_date:, file_id:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
