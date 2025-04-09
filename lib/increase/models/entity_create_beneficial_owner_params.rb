# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#create_beneficial_owner
    class EntityCreateBeneficialOwnerParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute beneficial_owner
      #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner
      #
      #   @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner]
      required :beneficial_owner, -> { Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner }

      # @!parse
      #   # @param beneficial_owner [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(beneficial_owner:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class BeneficialOwner < Increase::Internal::Type::BaseModel
        # @!attribute individual
        #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual
        #
        #   @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual]
        required :individual,
                 -> { Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual }

        # @!attribute prongs
        #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/prongs
        #
        #   @return [Array<Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong>]
        required :prongs,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong] }

        # @!attribute [r] company_title
        #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/company_title
        #
        #   @return [String, nil]
        optional :company_title, String

        # @!parse
        #   # @return [String]
        #   attr_writer :company_title

        # @!parse
        #   # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner
        #   #
        #   # @param individual [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual]
        #   # @param prongs [Array<Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong>]
        #   # @param company_title [String]
        #   #
        #   def initialize(individual:, prongs:, company_title: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner#individual
        class Individual < Increase::Internal::Type::BaseModel
          # @!attribute address
          #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address
          #
          #   @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address]
          required :address,
                   -> { Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address }

          # @!attribute date_of_birth
          #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/date_of_birth
          #
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute identification
          #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification
          #
          #   @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification]
          required :identification,
                   -> { Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification }

          # @!attribute name
          #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/name
          #
          #   @return [String]
          required :name, String

          # @!attribute [r] confirmed_no_us_tax_id
          #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/confirmed_no_us_tax_id
          #
          #   @return [Boolean, nil]
          optional :confirmed_no_us_tax_id, Increase::Internal::Type::Boolean

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :confirmed_no_us_tax_id

          # @!parse
          #   # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual
          #   #
          #   # @param address [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address]
          #   # @param date_of_birth [Date]
          #   # @param identification [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification]
          #   # @param name [String]
          #   # @param confirmed_no_us_tax_id [Boolean]
          #   #
          #   def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual#address
          class Address < Increase::Internal::Type::BaseModel
            # @!attribute country
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/country
            #
            #   @return [String]
            required :country, String

            # @!attribute line1
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/line1
            #
            #   @return [String]
            required :line1, String

            # @!attribute [r] city
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/city
            #
            #   @return [String, nil]
            optional :city, String

            # @!parse
            #   # @return [String]
            #   attr_writer :city

            # @!attribute [r] line2
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/line2
            #
            #   @return [String, nil]
            optional :line2, String

            # @!parse
            #   # @return [String]
            #   attr_writer :line2

            # @!attribute [r] state
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/state
            #
            #   @return [String, nil]
            optional :state, String

            # @!parse
            #   # @return [String]
            #   attr_writer :state

            # @!attribute [r] zip
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/zip
            #
            #   @return [String, nil]
            optional :zip, String

            # @!parse
            #   # @return [String]
            #   attr_writer :zip

            # @!parse
            #   # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address
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

          # @see Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual#identification
          class Identification < Increase::Internal::Type::BaseModel
            # @!attribute method_
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/method
            #
            #   @return [Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method]
            required :method_,
                     enum: -> { Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method },
                     api_name: :method

            # @!attribute number
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/number
            #
            #   @return [String]
            required :number, String

            # @!attribute [r] drivers_license
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license
            #
            #   @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense, nil]
            optional :drivers_license,
                     -> { Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense }

            # @!parse
            #   # @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense]
            #   attr_writer :drivers_license

            # @!attribute [r] other
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other
            #
            #   @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other, nil]
            optional :other,
                     -> { Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other }

            # @!parse
            #   # @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other]
            #   attr_writer :other

            # @!attribute [r] passport
            #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport
            #
            #   @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport, nil]
            optional :passport,
                     -> { Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport }

            # @!parse
            #   # @return [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport]
            #   attr_writer :passport

            # @!parse
            #   # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification
            #   #
            #   # @param method_ [Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method]
            #   # @param number [String]
            #   # @param drivers_license [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense]
            #   # @param other [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other]
            #   # @param passport [Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport]
            #   #
            #   def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/method
            #
            # @see Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification#method_
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

            # @see Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification#drivers_license
            class DriversLicense < Increase::Internal::Type::BaseModel
              # @!attribute expiration_date
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license/properties/expiration_date
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!attribute state
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license/properties/state
              #
              #   @return [String]
              required :state, String

              # @!attribute [r] back_file_id
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license/properties/back_file_id
              #
              #   @return [String, nil]
              optional :back_file_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :back_file_id

              # @!parse
              #   # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license
              #   #
              #   # @param expiration_date [Date]
              #   # @param file_id [String]
              #   # @param state [String]
              #   # @param back_file_id [String]
              #   #
              #   def initialize(expiration_date:, file_id:, state:, back_file_id: nil, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
            end

            # @see Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification#other
            class Other < Increase::Internal::Type::BaseModel
              # @!attribute country
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/country
              #
              #   @return [String]
              required :country, String

              # @!attribute description
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/description
              #
              #   @return [String]
              required :description, String

              # @!attribute file_id
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!attribute [r] back_file_id
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/back_file_id
              #
              #   @return [String, nil]
              optional :back_file_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :back_file_id

              # @!attribute [r] expiration_date
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/expiration_date
              #
              #   @return [Date, nil]
              optional :expiration_date, Date

              # @!parse
              #   # @return [Date]
              #   attr_writer :expiration_date

              # @!parse
              #   # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other
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

            # @see Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification#passport
            class Passport < Increase::Internal::Type::BaseModel
              # @!attribute country
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport/properties/country
              #
              #   @return [String]
              required :country, String

              # @!attribute expiration_date
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport/properties/expiration_date
              #
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute file_id
              #   #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport/properties/file_id
              #
              #   @return [String]
              required :file_id, String

              # @!parse
              #   # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport
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

        # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/prongs/items
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
  end
end
