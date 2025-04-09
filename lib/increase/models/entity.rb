# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#create
    class Entity < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/entity/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute corporation
      #   #/components/schemas/entity/properties/corporation
      #
      #   @return [Increase::Models::Entity::Corporation, nil]
      required :corporation, -> { Increase::Models::Entity::Corporation }, nil?: true

      # @!attribute created_at
      #   #/components/schemas/entity/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   #/components/schemas/entity/properties/description
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute details_confirmed_at
      #   #/components/schemas/entity/properties/details_confirmed_at
      #
      #   @return [Time, nil]
      required :details_confirmed_at, Time, nil?: true

      # @!attribute government_authority
      #   #/components/schemas/entity/properties/government_authority
      #
      #   @return [Increase::Models::Entity::GovernmentAuthority, nil]
      required :government_authority, -> { Increase::Models::Entity::GovernmentAuthority }, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/entity/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute joint
      #   #/components/schemas/entity/properties/joint
      #
      #   @return [Increase::Models::Entity::Joint, nil]
      required :joint, -> { Increase::Models::Entity::Joint }, nil?: true

      # @!attribute natural_person
      #   #/components/schemas/entity/properties/natural_person
      #
      #   @return [Increase::Models::Entity::NaturalPerson, nil]
      required :natural_person, -> { Increase::Models::Entity::NaturalPerson }, nil?: true

      # @!attribute status
      #   #/components/schemas/entity/properties/status
      #
      #   @return [Symbol, Increase::Models::Entity::Status]
      required :status, enum: -> { Increase::Models::Entity::Status }

      # @!attribute structure
      #   #/components/schemas/entity/properties/structure
      #
      #   @return [Symbol, Increase::Models::Entity::Structure]
      required :structure, enum: -> { Increase::Models::Entity::Structure }

      # @!attribute supplemental_documents
      #   #/components/schemas/entity/properties/supplemental_documents
      #
      #   @return [Array<Increase::Models::EntitySupplementalDocument>]
      required :supplemental_documents,
               -> { Increase::Internal::Type::ArrayOf[Increase::Models::EntitySupplementalDocument] }

      # @!attribute third_party_verification
      #   #/components/schemas/entity/properties/third_party_verification
      #
      #   @return [Increase::Models::Entity::ThirdPartyVerification, nil]
      required :third_party_verification, -> { Increase::Models::Entity::ThirdPartyVerification }, nil?: true

      # @!attribute trust
      #   #/components/schemas/entity/properties/trust
      #
      #   @return [Increase::Models::Entity::Trust, nil]
      required :trust, -> { Increase::Models::Entity::Trust }, nil?: true

      # @!attribute type
      #   #/components/schemas/entity/properties/type
      #
      #   @return [Symbol, Increase::Models::Entity::Type]
      required :type, enum: -> { Increase::Models::Entity::Type }

      # @!parse
      #   # #/components/schemas/entity
      #   #
      #   # @param id [String]
      #   # @param corporation [Increase::Models::Entity::Corporation, nil]
      #   # @param created_at [Time]
      #   # @param description [String, nil]
      #   # @param details_confirmed_at [Time, nil]
      #   # @param government_authority [Increase::Models::Entity::GovernmentAuthority, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param joint [Increase::Models::Entity::Joint, nil]
      #   # @param natural_person [Increase::Models::Entity::NaturalPerson, nil]
      #   # @param status [Symbol, Increase::Models::Entity::Status]
      #   # @param structure [Symbol, Increase::Models::Entity::Structure]
      #   # @param supplemental_documents [Array<Increase::Models::EntitySupplementalDocument>]
      #   # @param third_party_verification [Increase::Models::Entity::ThirdPartyVerification, nil]
      #   # @param trust [Increase::Models::Entity::Trust, nil]
      #   # @param type [Symbol, Increase::Models::Entity::Type]
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::Entity#corporation
      class Corporation < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/address
        #
        #   @return [Increase::Models::Entity::Corporation::Address]
        required :address, -> { Increase::Models::Entity::Corporation::Address }

        # @!attribute beneficial_owners
        #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners
        #
        #   @return [Array<Increase::Models::Entity::Corporation::BeneficialOwner>]
        required :beneficial_owners,
                 -> { Increase::Internal::Type::ArrayOf[Increase::Models::Entity::Corporation::BeneficialOwner] }

        # @!attribute incorporation_state
        #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/incorporation_state
        #
        #   @return [String, nil]
        required :incorporation_state, String, nil?: true

        # @!attribute industry_code
        #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/industry_code
        #
        #   @return [String, nil]
        required :industry_code, String, nil?: true

        # @!attribute name
        #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/name
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/tax_identifier
        #
        #   @return [String, nil]
        required :tax_identifier, String, nil?: true

        # @!attribute website
        #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/website
        #
        #   @return [String, nil]
        required :website, String, nil?: true

        # @!parse
        #   # #/components/schemas/entity/properties/corporation
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

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::Entity::Corporation#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/line2
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute state
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # #/components/schemas/entity/properties/corporation/anyOf/0/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        class BeneficialOwner < Increase::Internal::Type::BaseModel
          # @!attribute beneficial_owner_id
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/beneficial_owner_id
          #
          #   @return [String]
          required :beneficial_owner_id, String

          # @!attribute company_title
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/company_title
          #
          #   @return [String, nil]
          required :company_title, String, nil?: true

          # @!attribute individual
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual
          #
          #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual]
          required :individual, -> { Increase::Models::Entity::Corporation::BeneficialOwner::Individual }

          # @!attribute prong
          #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/prong
          #
          #   @return [Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Prong]
          required :prong, enum: -> { Increase::Models::Entity::Corporation::BeneficialOwner::Prong }

          # @!parse
          #   # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items
          #   #
          #   # @param beneficial_owner_id [String]
          #   # @param company_title [String, nil]
          #   # @param individual [Increase::Models::Entity::Corporation::BeneficialOwner::Individual]
          #   # @param prong [Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Prong]
          #   #
          #   def initialize(beneficial_owner_id:, company_title:, individual:, prong:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::Entity::Corporation::BeneficialOwner#individual
          class Individual < Increase::Internal::Type::BaseModel
            # @!attribute address
            #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address
            #
            #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address]
            required :address, -> { Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address }

            # @!attribute date_of_birth
            #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute identification
            #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification
            #
            #   @return [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification]
            required :identification,
                     -> { Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification }

            # @!attribute name
            #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/name
            #
            #   @return [String]
            required :name, String

            # @!parse
            #   # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual
            #   #
            #   # @param address [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address]
            #   # @param date_of_birth [Date]
            #   # @param identification [Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification]
            #   # @param name [String]
            #   #
            #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::Entity::Corporation::BeneficialOwner::Individual#address
            class Address < Increase::Internal::Type::BaseModel
              # @!attribute city
              #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/city
              #
              #   @return [String, nil]
              required :city, String, nil?: true

              # @!attribute country
              #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/country
              #
              #   @return [String]
              required :country, String

              # @!attribute line1
              #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/line1
              #
              #   @return [String]
              required :line1, String

              # @!attribute line2
              #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/line2
              #
              #   @return [String, nil]
              required :line2, String, nil?: true

              # @!attribute state
              #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/state
              #
              #   @return [String, nil]
              required :state, String, nil?: true

              # @!attribute zip
              #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address/properties/zip
              #
              #   @return [String, nil]
              required :zip, String, nil?: true

              # @!parse
              #   # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/address
              #   #
              #   # @param city [String, nil]
              #   # @param country [String]
              #   # @param line1 [String]
              #   # @param line2 [String, nil]
              #   # @param state [String, nil]
              #   # @param zip [String, nil]
              #   #
              #   def initialize(city:, country:, line1:, line2:, state:, zip:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::Entity::Corporation::BeneficialOwner::Individual#identification
            class Identification < Increase::Internal::Type::BaseModel
              # @!attribute method_
              #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification/properties/method
              #
              #   @return [Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method]
              required :method_,
                       enum: -> { Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method },
                       api_name: :method

              # @!attribute number_last4
              #   #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification/properties/number_last4
              #
              #   @return [String]
              required :number_last4, String

              # @!parse
              #   # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification
              #   #
              #   # @param method_ [Symbol, Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification::Method]
              #   # @param number_last4 [String]
              #   #
              #   def initialize(method_:, number_last4:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/individual/properties/identification/properties/method
              #
              # @see Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification#method_
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
            end
          end

          # #/components/schemas/entity/properties/corporation/anyOf/0/properties/beneficial_owners/items/properties/prong
          #
          # @see Increase::Models::Entity::Corporation::BeneficialOwner#prong
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

      # @see Increase::Models::Entity#government_authority
      class GovernmentAuthority < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address
        #
        #   @return [Increase::Models::Entity::GovernmentAuthority::Address]
        required :address, -> { Increase::Models::Entity::GovernmentAuthority::Address }

        # @!attribute authorized_persons
        #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/authorized_persons
        #
        #   @return [Array<Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson>]
        required :authorized_persons,
                 -> { Increase::Internal::Type::ArrayOf[Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson] }

        # @!attribute category
        #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::Entity::GovernmentAuthority::Category]
        required :category, enum: -> { Increase::Models::Entity::GovernmentAuthority::Category }

        # @!attribute name
        #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/name
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/tax_identifier
        #
        #   @return [String, nil]
        required :tax_identifier, String, nil?: true

        # @!attribute website
        #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/website
        #
        #   @return [String, nil]
        required :website, String, nil?: true

        # @!parse
        #   # #/components/schemas/entity/properties/government_authority
        #   #
        #   # @param address [Increase::Models::Entity::GovernmentAuthority::Address]
        #   # @param authorized_persons [Array<Increase::Models::Entity::GovernmentAuthority::AuthorizedPerson>]
        #   # @param category [Symbol, Increase::Models::Entity::GovernmentAuthority::Category]
        #   # @param name [String]
        #   # @param tax_identifier [String, nil]
        #   # @param website [String, nil]
        #   #
        #   def initialize(address:, authorized_persons:, category:, name:, tax_identifier:, website:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::Entity::GovernmentAuthority#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/line2
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute state
          #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        class AuthorizedPerson < Increase::Internal::Type::BaseModel
          # @!attribute authorized_person_id
          #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/authorized_persons/items/properties/authorized_person_id
          #
          #   @return [String]
          required :authorized_person_id, String

          # @!attribute name
          #   #/components/schemas/entity/properties/government_authority/anyOf/0/properties/authorized_persons/items/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/authorized_persons/items
          #   #
          #   # @param authorized_person_id [String]
          #   # @param name [String]
          #   #
          #   def initialize(authorized_person_id:, name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/entity/properties/government_authority/anyOf/0/properties/category
        #
        # @see Increase::Models::Entity::GovernmentAuthority#category
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

      # @see Increase::Models::Entity#joint
      class Joint < Increase::Internal::Type::BaseModel
        # @!attribute individuals
        #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals
        #
        #   @return [Array<Increase::Models::Entity::Joint::Individual>]
        required :individuals,
                 -> { Increase::Internal::Type::ArrayOf[Increase::Models::Entity::Joint::Individual] }

        # @!attribute name
        #   #/components/schemas/entity/properties/joint/anyOf/0/properties/name
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # #/components/schemas/entity/properties/joint
        #   #
        #   # @param individuals [Array<Increase::Models::Entity::Joint::Individual>]
        #   # @param name [String]
        #   #
        #   def initialize(individuals:, name:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        class Individual < Increase::Internal::Type::BaseModel
          # @!attribute address
          #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address
          #
          #   @return [Increase::Models::Entity::Joint::Individual::Address]
          required :address, -> { Increase::Models::Entity::Joint::Individual::Address }

          # @!attribute date_of_birth
          #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/date_of_birth
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification
          #
          #   @return [Increase::Models::Entity::Joint::Individual::Identification]
          required :identification, -> { Increase::Models::Entity::Joint::Individual::Identification }

          # @!attribute name
          #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items
          #   #
          #   # @param address [Increase::Models::Entity::Joint::Individual::Address]
          #   # @param date_of_birth [Date]
          #   # @param identification [Increase::Models::Entity::Joint::Individual::Identification]
          #   # @param name [String]
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::Entity::Joint::Individual#address
          class Address < Increase::Internal::Type::BaseModel
            # @!attribute city
            #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/city
            #
            #   @return [String]
            required :city, String

            # @!attribute line1
            #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/line1
            #
            #   @return [String]
            required :line1, String

            # @!attribute line2
            #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/line2
            #
            #   @return [String, nil]
            required :line2, String, nil?: true

            # @!attribute state
            #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/state
            #
            #   @return [String]
            required :state, String

            # @!attribute zip
            #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address/properties/zip
            #
            #   @return [String]
            required :zip, String

            # @!parse
            #   # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/address
            #   #
            #   # @param city [String]
            #   # @param line1 [String]
            #   # @param line2 [String, nil]
            #   # @param state [String]
            #   # @param zip [String]
            #   #
            #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::Entity::Joint::Individual#identification
          class Identification < Increase::Internal::Type::BaseModel
            # @!attribute method_
            #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification/properties/method
            #
            #   @return [Symbol, Increase::Models::Entity::Joint::Individual::Identification::Method]
            required :method_,
                     enum: -> { Increase::Models::Entity::Joint::Individual::Identification::Method },
                     api_name: :method

            # @!attribute number_last4
            #   #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification/properties/number_last4
            #
            #   @return [String]
            required :number_last4, String

            # @!parse
            #   # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification
            #   #
            #   # @param method_ [Symbol, Increase::Models::Entity::Joint::Individual::Identification::Method]
            #   # @param number_last4 [String]
            #   #
            #   def initialize(method_:, number_last4:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/entity/properties/joint/anyOf/0/properties/individuals/items/properties/identification/properties/method
            #
            # @see Increase::Models::Entity::Joint::Individual::Identification#method_
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
          end
        end
      end

      # @see Increase::Models::Entity#natural_person
      class NaturalPerson < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address
        #
        #   @return [Increase::Models::Entity::NaturalPerson::Address]
        required :address, -> { Increase::Models::Entity::NaturalPerson::Address }

        # @!attribute date_of_birth
        #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/date_of_birth
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute identification
        #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification
        #
        #   @return [Increase::Models::Entity::NaturalPerson::Identification]
        required :identification, -> { Increase::Models::Entity::NaturalPerson::Identification }

        # @!attribute name
        #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/name
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # #/components/schemas/entity/properties/natural_person
        #   #
        #   # @param address [Increase::Models::Entity::NaturalPerson::Address]
        #   # @param date_of_birth [Date]
        #   # @param identification [Increase::Models::Entity::NaturalPerson::Identification]
        #   # @param name [String]
        #   #
        #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::Entity::NaturalPerson#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/line2
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute state
          #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Entity::NaturalPerson#identification
        class Identification < Increase::Internal::Type::BaseModel
          # @!attribute method_
          #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification/properties/method
          #
          #   @return [Symbol, Increase::Models::Entity::NaturalPerson::Identification::Method]
          required :method_,
                   enum: -> { Increase::Models::Entity::NaturalPerson::Identification::Method },
                   api_name: :method

          # @!attribute number_last4
          #   #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification/properties/number_last4
          #
          #   @return [String]
          required :number_last4, String

          # @!parse
          #   # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification
          #   #
          #   # @param method_ [Symbol, Increase::Models::Entity::NaturalPerson::Identification::Method]
          #   # @param number_last4 [String]
          #   #
          #   def initialize(method_:, number_last4:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/entity/properties/natural_person/anyOf/0/properties/identification/properties/method
          #
          # @see Increase::Models::Entity::NaturalPerson::Identification#method_
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
        end
      end

      # #/components/schemas/entity/properties/status
      #
      # @see Increase::Models::Entity#status
      module Status
        extend Increase::Internal::Type::Enum

        # The entity is active.
        ACTIVE = :active

        # The entity is archived, and can no longer be used to create accounts.
        ARCHIVED = :archived

        # The entity is temporarily disabled and cannot be used for financial activity.
        DISABLED = :disabled

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/entity/properties/structure
      #
      # @see Increase::Models::Entity#structure
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

      # @see Increase::Models::Entity#third_party_verification
      class ThirdPartyVerification < Increase::Internal::Type::BaseModel
        # @!attribute reference
        #   #/components/schemas/entity/properties/third_party_verification/anyOf/0/properties/reference
        #
        #   @return [String]
        required :reference, String

        # @!attribute vendor
        #   #/components/schemas/entity/properties/third_party_verification/anyOf/0/properties/vendor
        #
        #   @return [Symbol, Increase::Models::Entity::ThirdPartyVerification::Vendor]
        required :vendor, enum: -> { Increase::Models::Entity::ThirdPartyVerification::Vendor }

        # @!parse
        #   # #/components/schemas/entity/properties/third_party_verification
        #   #
        #   # @param reference [String]
        #   # @param vendor [Symbol, Increase::Models::Entity::ThirdPartyVerification::Vendor]
        #   #
        #   def initialize(reference:, vendor:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/entity/properties/third_party_verification/anyOf/0/properties/vendor
        #
        # @see Increase::Models::Entity::ThirdPartyVerification#vendor
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

      # @see Increase::Models::Entity#trust
      class Trust < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/entity/properties/trust/anyOf/0/properties/address
        #
        #   @return [Increase::Models::Entity::Trust::Address]
        required :address, -> { Increase::Models::Entity::Trust::Address }

        # @!attribute category
        #   #/components/schemas/entity/properties/trust/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::Entity::Trust::Category]
        required :category, enum: -> { Increase::Models::Entity::Trust::Category }

        # @!attribute formation_document_file_id
        #   #/components/schemas/entity/properties/trust/anyOf/0/properties/formation_document_file_id
        #
        #   @return [String, nil]
        required :formation_document_file_id, String, nil?: true

        # @!attribute formation_state
        #   #/components/schemas/entity/properties/trust/anyOf/0/properties/formation_state
        #
        #   @return [String, nil]
        required :formation_state, String, nil?: true

        # @!attribute grantor
        #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor
        #
        #   @return [Increase::Models::Entity::Trust::Grantor, nil]
        required :grantor, -> { Increase::Models::Entity::Trust::Grantor }, nil?: true

        # @!attribute name
        #   #/components/schemas/entity/properties/trust/anyOf/0/properties/name
        #
        #   @return [String]
        required :name, String

        # @!attribute tax_identifier
        #   #/components/schemas/entity/properties/trust/anyOf/0/properties/tax_identifier
        #
        #   @return [String, nil]
        required :tax_identifier, String, nil?: true

        # @!attribute trustees
        #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees
        #
        #   @return [Array<Increase::Models::Entity::Trust::Trustee>]
        required :trustees, -> { Increase::Internal::Type::ArrayOf[Increase::Models::Entity::Trust::Trustee] }

        # @!parse
        #   # #/components/schemas/entity/properties/trust
        #   #
        #   # @param address [Increase::Models::Entity::Trust::Address]
        #   # @param category [Symbol, Increase::Models::Entity::Trust::Category]
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

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::Entity::Trust#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/line2
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute state
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # #/components/schemas/entity/properties/trust/anyOf/0/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/entity/properties/trust/anyOf/0/properties/category
        #
        # @see Increase::Models::Entity::Trust#category
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

        # @see Increase::Models::Entity::Trust#grantor
        class Grantor < Increase::Internal::Type::BaseModel
          # @!attribute address
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address
          #
          #   @return [Increase::Models::Entity::Trust::Grantor::Address]
          required :address, -> { Increase::Models::Entity::Trust::Grantor::Address }

          # @!attribute date_of_birth
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/date_of_birth
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification
          #
          #   @return [Increase::Models::Entity::Trust::Grantor::Identification]
          required :identification, -> { Increase::Models::Entity::Trust::Grantor::Identification }

          # @!attribute name
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor
          #   #
          #   # @param address [Increase::Models::Entity::Trust::Grantor::Address]
          #   # @param date_of_birth [Date]
          #   # @param identification [Increase::Models::Entity::Trust::Grantor::Identification]
          #   # @param name [String]
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::Entity::Trust::Grantor#address
          class Address < Increase::Internal::Type::BaseModel
            # @!attribute city
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/city
            #
            #   @return [String]
            required :city, String

            # @!attribute line1
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/line1
            #
            #   @return [String]
            required :line1, String

            # @!attribute line2
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/line2
            #
            #   @return [String, nil]
            required :line2, String, nil?: true

            # @!attribute state
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/state
            #
            #   @return [String]
            required :state, String

            # @!attribute zip
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address/properties/zip
            #
            #   @return [String]
            required :zip, String

            # @!parse
            #   # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/address
            #   #
            #   # @param city [String]
            #   # @param line1 [String]
            #   # @param line2 [String, nil]
            #   # @param state [String]
            #   # @param zip [String]
            #   #
            #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::Entity::Trust::Grantor#identification
          class Identification < Increase::Internal::Type::BaseModel
            # @!attribute method_
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification/properties/method
            #
            #   @return [Symbol, Increase::Models::Entity::Trust::Grantor::Identification::Method]
            required :method_,
                     enum: -> { Increase::Models::Entity::Trust::Grantor::Identification::Method },
                     api_name: :method

            # @!attribute number_last4
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification/properties/number_last4
            #
            #   @return [String]
            required :number_last4, String

            # @!parse
            #   # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification
            #   #
            #   # @param method_ [Symbol, Increase::Models::Entity::Trust::Grantor::Identification::Method]
            #   # @param number_last4 [String]
            #   #
            #   def initialize(method_:, number_last4:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/entity/properties/trust/anyOf/0/properties/grantor/anyOf/0/properties/identification/properties/method
            #
            # @see Increase::Models::Entity::Trust::Grantor::Identification#method_
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
          end
        end

        class Trustee < Increase::Internal::Type::BaseModel
          # @!attribute individual
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual
          #
          #   @return [Increase::Models::Entity::Trust::Trustee::Individual, nil]
          required :individual, -> { Increase::Models::Entity::Trust::Trustee::Individual }, nil?: true

          # @!attribute structure
          #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/structure
          #
          #   @return [Symbol, Increase::Models::Entity::Trust::Trustee::Structure]
          required :structure, enum: -> { Increase::Models::Entity::Trust::Trustee::Structure }

          # @!parse
          #   # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items
          #   #
          #   # @param individual [Increase::Models::Entity::Trust::Trustee::Individual, nil]
          #   # @param structure [Symbol, Increase::Models::Entity::Trust::Trustee::Structure]
          #   #
          #   def initialize(individual:, structure:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::Entity::Trust::Trustee#individual
          class Individual < Increase::Internal::Type::BaseModel
            # @!attribute address
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address
            #
            #   @return [Increase::Models::Entity::Trust::Trustee::Individual::Address]
            required :address, -> { Increase::Models::Entity::Trust::Trustee::Individual::Address }

            # @!attribute date_of_birth
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute identification
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification
            #
            #   @return [Increase::Models::Entity::Trust::Trustee::Individual::Identification]
            required :identification, -> { Increase::Models::Entity::Trust::Trustee::Individual::Identification }

            # @!attribute name
            #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/name
            #
            #   @return [String]
            required :name, String

            # @!parse
            #   # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual
            #   #
            #   # @param address [Increase::Models::Entity::Trust::Trustee::Individual::Address]
            #   # @param date_of_birth [Date]
            #   # @param identification [Increase::Models::Entity::Trust::Trustee::Individual::Identification]
            #   # @param name [String]
            #   #
            #   def initialize(address:, date_of_birth:, identification:, name:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::Entity::Trust::Trustee::Individual#address
            class Address < Increase::Internal::Type::BaseModel
              # @!attribute city
              #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/city
              #
              #   @return [String]
              required :city, String

              # @!attribute line1
              #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/line1
              #
              #   @return [String]
              required :line1, String

              # @!attribute line2
              #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/line2
              #
              #   @return [String, nil]
              required :line2, String, nil?: true

              # @!attribute state
              #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/state
              #
              #   @return [String]
              required :state, String

              # @!attribute zip
              #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address/properties/zip
              #
              #   @return [String]
              required :zip, String

              # @!parse
              #   # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/address
              #   #
              #   # @param city [String]
              #   # @param line1 [String]
              #   # @param line2 [String, nil]
              #   # @param state [String]
              #   # @param zip [String]
              #   #
              #   def initialize(city:, line1:, line2:, state:, zip:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::Entity::Trust::Trustee::Individual#identification
            class Identification < Increase::Internal::Type::BaseModel
              # @!attribute method_
              #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification/properties/method
              #
              #   @return [Symbol, Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method]
              required :method_,
                       enum: -> { Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method },
                       api_name: :method

              # @!attribute number_last4
              #   #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification/properties/number_last4
              #
              #   @return [String]
              required :number_last4, String

              # @!parse
              #   # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification
              #   #
              #   # @param method_ [Symbol, Increase::Models::Entity::Trust::Trustee::Individual::Identification::Method]
              #   # @param number_last4 [String]
              #   #
              #   def initialize(method_:, number_last4:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/individual/anyOf/0/properties/identification/properties/method
              #
              # @see Increase::Models::Entity::Trust::Trustee::Individual::Identification#method_
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
            end
          end

          # #/components/schemas/entity/properties/trust/anyOf/0/properties/trustees/items/properties/structure
          #
          # @see Increase::Models::Entity::Trust::Trustee#structure
          module Structure
            extend Increase::Internal::Type::Enum

            # The trustee is an individual.
            INDIVIDUAL = :individual

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end

      # #/components/schemas/entity/properties/type
      #
      # @see Increase::Models::Entity#type
      module Type
        extend Increase::Internal::Type::Enum

        ENTITY = :entity

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
