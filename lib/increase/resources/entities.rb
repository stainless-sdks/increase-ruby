# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      def initialize(client:)
        @client = client
      end

      # Create an Entity
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Structure] :structure The type of Entity to create.
      # @option params [Corporation, nil] :corporation Details of the corporation entity to create. Required if `structure` is equal to
      #   `corporation`.
      # @option params [String, nil] :description The description you choose to give the entity.
      # @option params [GovernmentAuthority, nil] :government_authority Details of the Government Authority entity to create. Required if `structure` is
      #   equal to `Government Authority`.
      # @option params [Joint, nil] :joint Details of the joint entity to create. Required if `structure` is equal to
      #   `joint`.
      # @option params [NaturalPerson, nil] :natural_person Details of the natural person entity to create. Required if `structure` is equal
      #   to `natural_person`. Natural people entities should be submitted with
      #   `social_security_number` or `individual_taxpayer_identification_number`
      #   identification methods.
      # @option params [Array<SupplementalDocument>, nil] :supplemental_documents Additional documentation associated with the entity.
      # @option params [Trust, nil] :trust Details of the trust entity to create. Required if `structure` is equal to
      #   `trust`.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Retrieve an Entity
      #
      # @param entity_id [String] The identifier of the Entity to retrieve.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def retrieve(entity_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/entities/#{entity_id}"
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # List Entities
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status, nil] :status
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Entity>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/entities"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Archive an Entity
      #
      # @param entity_id [String] The identifier of the Entity to archive. Any accounts associated with an entity
      #   must be closed before the entity can be archived.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def archive(entity_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/archive"
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Archive a beneficial owner for a corporate Entity
      #
      # @param entity_id [String] The identifier of the Entity associated with the Beneficial Owner that is being
      #   archived.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
      #   corporation.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def archive_beneficial_owner(entity_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/archive_beneficial_owner"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Depending on your program, you may be required to re-confirm an Entity's details
      #   on a recurring basis. After making any required updates, call this endpoint to
      #   record that your user confirmed their details.
      #
      # @param entity_id [String] The identifier of the Entity to confirm the details of.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [DateTime, nil] :confirmed_at When your user confirmed the Entity's details. If not provided, the current time
      #   will be used.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def confirm(entity_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/confirm"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Create a beneficial owner for a corporate Entity
      #
      # @param entity_id [String] The identifier of the Entity to associate with the new Beneficial Owner.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [BeneficialOwner] :beneficial_owner The identifying details of anyone controlling or owning 25% or more of the
      #   corporation.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def create_beneficial_owner(entity_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/create_beneficial_owner"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Update a Natural Person or Corporation's address
      #
      # @param entity_id [String] The identifier of the Entity whose address is being updated.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Address] :address The entity's physical address. Mail receiving locations like PO Boxes and PMB's
      #   are disallowed.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def update_address(entity_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/update_address"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Update the address for a beneficial owner belonging to a corporate Entity
      #
      # @param entity_id [String] The identifier of the Entity associated with the Beneficial Owner whose address
      #   is being updated.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Address] :address The individual's physical address. Mail receiving locations like PO Boxes and
      #   PMB's are disallowed.
      # @option params [String] :beneficial_owner_id The identifying details of anyone controlling or owning 25% or more of the
      #   corporation.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def update_beneficial_owner_address(entity_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/update_beneficial_owner_address"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # Update the industry code for a corporate Entity
      #
      # @param entity_id [String] The identifier of the Entity to update. This endpoint only accepts `corporation`
      #   entities.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :industry_code The North American Industry Classification System (NAICS) code for the
      #   corporation's primary line of business. This is a number, like `5132` for
      #   `Software Publishers`. A full list of classification codes is available
      #   [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Entity]
      def update_industry_code(entity_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/entities/#{entity_id}/update_industry_code"
        req[:body] = params
        req[:model] = Increase::Models::Entity
        @client.request(req, opts)
      end

      # The type of Entity to create.
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

      class Corporation < BaseModel
        # @!attribute [rw] address
        #   The entity's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
        #   @return [Corporation::Address]
        required :address, -> { Corporation::Address }

        # @!attribute [rw] beneficial_owners
        #   The identifying details of anyone controlling or owning 25% or more of the corporation.
        #   @return [Array<Corporation::BeneficialOwner>]
        required :beneficial_owners, Increase::ArrayOf.new(-> { Corporation::BeneficialOwner })

        # @!attribute [rw] name_
        #   The legal name of the corporation.
        #   @return [String]
        required :name_, String

        # @!attribute [rw] tax_identifier
        #   The Employer Identification Number (EIN) for the corporation.
        #   @return [String]
        required :tax_identifier, String

        # @!attribute [rw] incorporation_state
        #   The two-letter United States Postal Service (USPS) abbreviation for the corporation's state of incorporation.
        #   @return [String]
        optional :incorporation_state, String

        # @!attribute [rw] industry_code
        #   The North American Industry Classification System (NAICS) code for the corporation's primary line of business. This is a number, like `5132` for `Software Publishers`. A full list of classification codes is available [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
        #   @return [String]
        optional :industry_code, String

        # @!attribute [rw] website
        #   The website of the corporation.
        #   @return [String]
        optional :website, String

        class Address < BaseModel
          # @!attribute [rw] city
          #   The city of the address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address. This is usually the street number and street.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] zip
          #   The ZIP code of the address.
          #   @return [String]
          required :zip, String

          # @!attribute [rw] line2
          #   The second line of the address. This might be the floor or room number.
          #   @return [String]
          optional :line2, String
        end

        class BeneficialOwner < BaseModel
          # @!attribute [rw] individual
          #   Personal details for the beneficial owner.
          #   @return [Corporation::BeneficialOwner::Individual]
          required :individual, -> { Corporation::BeneficialOwner::Individual }

          # @!attribute [rw] prongs
          #   Why this person is considered a beneficial owner of the entity. At least one option is required, if a person is both a control person and owner, submit an array containing both.
          #   @return [Array<Symbol, Corporation::BeneficialOwner::Prong>]
          required :prongs, Increase::ArrayOf.new(enum: -> { Corporation::BeneficialOwner::Prong })

          # @!attribute [rw] company_title
          #   This person's role or title within the entity.
          #   @return [String]
          optional :company_title, String

          class Individual < BaseModel
            # @!attribute [rw] address
            #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
            #   @return [Corporation::BeneficialOwner::Individual::Address]
            required :address, -> { Corporation::BeneficialOwner::Individual::Address }

            # @!attribute [rw] date_of_birth
            #   The person's date of birth in YYYY-MM-DD format.
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute [rw] identification
            #   A means of verifying the person's identity.
            #   @return [Corporation::BeneficialOwner::Individual::Identification]
            required :identification, -> { Corporation::BeneficialOwner::Individual::Identification }

            # @!attribute [rw] name_
            #   The person's legal name.
            #   @return [String]
            required :name_, String

            # @!attribute [rw] confirmed_no_us_tax_id
            #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
            #   @return [Boolean]
            optional :confirmed_no_us_tax_id, Increase::BooleanModel

            class Address < BaseModel
              # @!attribute [rw] city
              #   The city of the address.
              #   @return [String]
              required :city, String

              # @!attribute [rw] line1
              #   The first line of the address. This is usually the street number and street.
              #   @return [String]
              required :line1, String

              # @!attribute [rw] state
              #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
              #   @return [String]
              required :state, String

              # @!attribute [rw] zip
              #   The ZIP code of the address.
              #   @return [String]
              required :zip, String

              # @!attribute [rw] line2
              #   The second line of the address. This might be the floor or room number.
              #   @return [String]
              optional :line2, String
            end

            class Identification < BaseModel
              # @!attribute [rw] method_
              #   A method that can be used to verify the individual's identity.
              #   @return [Symbol, Corporation::BeneficialOwner::Individual::Identification::Method]
              required :method_, enum: -> { Corporation::BeneficialOwner::Individual::Identification::Method }

              # @!attribute [rw] number
              #   An identification number that can be used to verify the individual's identity, such as a social security number.
              #   @return [String]
              required :number, String

              # @!attribute [rw] drivers_license
              #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
              #   @return [Corporation::BeneficialOwner::Individual::Identification::DriversLicense]
              optional :drivers_license,
                       lambda {
                         Corporation::BeneficialOwner::Individual::Identification::DriversLicense
                       }

              # @!attribute [rw] other
              #   Information about the identification document provided. Required if `method` is equal to `other`.
              #   @return [Corporation::BeneficialOwner::Individual::Identification::Other]
              optional :other, -> { Corporation::BeneficialOwner::Individual::Identification::Other }

              # @!attribute [rw] passport
              #   Information about the passport used for identification. Required if `method` is equal to `passport`.
              #   @return [Corporation::BeneficialOwner::Individual::Identification::Passport]
              optional :passport, -> { Corporation::BeneficialOwner::Individual::Identification::Passport }

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

              class DriversLicense < BaseModel
                # @!attribute [rw] expiration_date
                #   The driver's license's expiration date in YYYY-MM-DD format.
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute [rw] file_id
                #   The identifier of the File containing the front of the driver's license.
                #   @return [String]
                required :file_id, String

                # @!attribute [rw] state
                #   The state that issued the provided driver's license.
                #   @return [String]
                required :state, String

                # @!attribute [rw] back_file_id
                #   The identifier of the File containing the back of the driver's license.
                #   @return [String]
                optional :back_file_id, String
              end

              class Other < BaseModel
                # @!attribute [rw] country
                #   The two-character ISO 3166-1 code representing the country that issued the document.
                #   @return [String]
                required :country, String

                # @!attribute [rw] description
                #   A description of the document submitted.
                #   @return [String]
                required :description, String

                # @!attribute [rw] file_id
                #   The identifier of the File containing the front of the document.
                #   @return [String]
                required :file_id, String

                # @!attribute [rw] back_file_id
                #   The identifier of the File containing the back of the document. Not every document has a reverse side.
                #   @return [String]
                optional :back_file_id, String

                # @!attribute [rw] expiration_date
                #   The document's expiration date in YYYY-MM-DD format.
                #   @return [Date]
                optional :expiration_date, Date
              end

              class Passport < BaseModel
                # @!attribute [rw] country
                #   The country that issued the passport.
                #   @return [String]
                required :country, String

                # @!attribute [rw] expiration_date
                #   The passport's expiration date in YYYY-MM-DD format.
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute [rw] file_id
                #   The identifier of the File containing the passport.
                #   @return [String]
                required :file_id, String
              end
            end
          end

          class Prong < Increase::Enum
            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP = :ownership

            # A person who manages, directs, or has significant control of the entity.
            CONTROL = :control
          end
        end
      end

      class GovernmentAuthority < BaseModel
        # @!attribute [rw] address
        #   The entity's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
        #   @return [GovernmentAuthority::Address]
        required :address, -> { GovernmentAuthority::Address }

        # @!attribute [rw] authorized_persons
        #   The identifying details of authorized officials acting on the entity's behalf.
        #   @return [Array<GovernmentAuthority::AuthorizedPerson>]
        required :authorized_persons, Increase::ArrayOf.new(-> { GovernmentAuthority::AuthorizedPerson })

        # @!attribute [rw] category
        #   The category of the government authority.
        #   @return [Symbol, GovernmentAuthority::Category]
        required :category, enum: -> { GovernmentAuthority::Category }

        # @!attribute [rw] name_
        #   The legal name of the government authority.
        #   @return [String]
        required :name_, String

        # @!attribute [rw] tax_identifier
        #   The Employer Identification Number (EIN) for the government authority.
        #   @return [String]
        required :tax_identifier, String

        # @!attribute [rw] website
        #   The website of the government authority.
        #   @return [String]
        optional :website, String

        class Address < BaseModel
          # @!attribute [rw] city
          #   The city of the address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address. This is usually the street number and street.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] zip
          #   The ZIP code of the address.
          #   @return [String]
          required :zip, String

          # @!attribute [rw] line2
          #   The second line of the address. This might be the floor or room number.
          #   @return [String]
          optional :line2, String
        end

        class AuthorizedPerson < BaseModel
          # @!attribute [rw] name_
          #   The person's legal name.
          #   @return [String]
          required :name_, String
        end

        # The category of the government authority.
        class Category < Increase::Enum
          # The Public Entity is a Municipality.
          MUNICIPALITY = :municipality
        end
      end

      class Joint < BaseModel
        # @!attribute [rw] individuals
        #   The two individuals that share control of the entity.
        #   @return [Array<Joint::Individual>]
        required :individuals, Increase::ArrayOf.new(-> { Joint::Individual })

        # @!attribute [rw] name_
        #   The name of the joint entity.
        #   @return [String]
        optional :name_, String

        class Individual < BaseModel
          # @!attribute [rw] address
          #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
          #   @return [Joint::Individual::Address]
          required :address, -> { Joint::Individual::Address }

          # @!attribute [rw] date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute [rw] identification
          #   A means of verifying the person's identity.
          #   @return [Joint::Individual::Identification]
          required :identification, -> { Joint::Individual::Identification }

          # @!attribute [rw] name_
          #   The person's legal name.
          #   @return [String]
          required :name_, String

          # @!attribute [rw] confirmed_no_us_tax_id
          #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
          #   @return [Boolean]
          optional :confirmed_no_us_tax_id, Increase::BooleanModel

          class Address < BaseModel
            # @!attribute [rw] city
            #   The city of the address.
            #   @return [String]
            required :city, String

            # @!attribute [rw] line1
            #   The first line of the address. This is usually the street number and street.
            #   @return [String]
            required :line1, String

            # @!attribute [rw] state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
            #   @return [String]
            required :state, String

            # @!attribute [rw] zip
            #   The ZIP code of the address.
            #   @return [String]
            required :zip, String

            # @!attribute [rw] line2
            #   The second line of the address. This might be the floor or room number.
            #   @return [String]
            optional :line2, String
          end

          class Identification < BaseModel
            # @!attribute [rw] method_
            #   A method that can be used to verify the individual's identity.
            #   @return [Symbol, Joint::Individual::Identification::Method]
            required :method_, enum: -> { Joint::Individual::Identification::Method }

            # @!attribute [rw] number
            #   An identification number that can be used to verify the individual's identity, such as a social security number.
            #   @return [String]
            required :number, String

            # @!attribute [rw] drivers_license
            #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
            #   @return [Joint::Individual::Identification::DriversLicense]
            optional :drivers_license, -> { Joint::Individual::Identification::DriversLicense }

            # @!attribute [rw] other
            #   Information about the identification document provided. Required if `method` is equal to `other`.
            #   @return [Joint::Individual::Identification::Other]
            optional :other, -> { Joint::Individual::Identification::Other }

            # @!attribute [rw] passport
            #   Information about the passport used for identification. Required if `method` is equal to `passport`.
            #   @return [Joint::Individual::Identification::Passport]
            optional :passport, -> { Joint::Individual::Identification::Passport }

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

            class DriversLicense < BaseModel
              # @!attribute [rw] expiration_date
              #   The driver's license's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute [rw] file_id
              #   The identifier of the File containing the front of the driver's license.
              #   @return [String]
              required :file_id, String

              # @!attribute [rw] state
              #   The state that issued the provided driver's license.
              #   @return [String]
              required :state, String

              # @!attribute [rw] back_file_id
              #   The identifier of the File containing the back of the driver's license.
              #   @return [String]
              optional :back_file_id, String
            end

            class Other < BaseModel
              # @!attribute [rw] country
              #   The two-character ISO 3166-1 code representing the country that issued the document.
              #   @return [String]
              required :country, String

              # @!attribute [rw] description
              #   A description of the document submitted.
              #   @return [String]
              required :description, String

              # @!attribute [rw] file_id
              #   The identifier of the File containing the front of the document.
              #   @return [String]
              required :file_id, String

              # @!attribute [rw] back_file_id
              #   The identifier of the File containing the back of the document. Not every document has a reverse side.
              #   @return [String]
              optional :back_file_id, String

              # @!attribute [rw] expiration_date
              #   The document's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              optional :expiration_date, Date
            end

            class Passport < BaseModel
              # @!attribute [rw] country
              #   The country that issued the passport.
              #   @return [String]
              required :country, String

              # @!attribute [rw] expiration_date
              #   The passport's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute [rw] file_id
              #   The identifier of the File containing the passport.
              #   @return [String]
              required :file_id, String
            end
          end
        end
      end

      class NaturalPerson < BaseModel
        # @!attribute [rw] address
        #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
        #   @return [NaturalPerson::Address]
        required :address, -> { NaturalPerson::Address }

        # @!attribute [rw] date_of_birth
        #   The person's date of birth in YYYY-MM-DD format.
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute [rw] identification
        #   A means of verifying the person's identity.
        #   @return [NaturalPerson::Identification]
        required :identification, -> { NaturalPerson::Identification }

        # @!attribute [rw] name_
        #   The person's legal name.
        #   @return [String]
        required :name_, String

        # @!attribute [rw] confirmed_no_us_tax_id
        #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
        #   @return [Boolean]
        optional :confirmed_no_us_tax_id, Increase::BooleanModel

        class Address < BaseModel
          # @!attribute [rw] city
          #   The city of the address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address. This is usually the street number and street.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] zip
          #   The ZIP code of the address.
          #   @return [String]
          required :zip, String

          # @!attribute [rw] line2
          #   The second line of the address. This might be the floor or room number.
          #   @return [String]
          optional :line2, String
        end

        class Identification < BaseModel
          # @!attribute [rw] method_
          #   A method that can be used to verify the individual's identity.
          #   @return [Symbol, NaturalPerson::Identification::Method]
          required :method_, enum: -> { NaturalPerson::Identification::Method }

          # @!attribute [rw] number
          #   An identification number that can be used to verify the individual's identity, such as a social security number.
          #   @return [String]
          required :number, String

          # @!attribute [rw] drivers_license
          #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
          #   @return [NaturalPerson::Identification::DriversLicense]
          optional :drivers_license, -> { NaturalPerson::Identification::DriversLicense }

          # @!attribute [rw] other
          #   Information about the identification document provided. Required if `method` is equal to `other`.
          #   @return [NaturalPerson::Identification::Other]
          optional :other, -> { NaturalPerson::Identification::Other }

          # @!attribute [rw] passport
          #   Information about the passport used for identification. Required if `method` is equal to `passport`.
          #   @return [NaturalPerson::Identification::Passport]
          optional :passport, -> { NaturalPerson::Identification::Passport }

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

          class DriversLicense < BaseModel
            # @!attribute [rw] expiration_date
            #   The driver's license's expiration date in YYYY-MM-DD format.
            #   @return [Date]
            required :expiration_date, Date

            # @!attribute [rw] file_id
            #   The identifier of the File containing the front of the driver's license.
            #   @return [String]
            required :file_id, String

            # @!attribute [rw] state
            #   The state that issued the provided driver's license.
            #   @return [String]
            required :state, String

            # @!attribute [rw] back_file_id
            #   The identifier of the File containing the back of the driver's license.
            #   @return [String]
            optional :back_file_id, String
          end

          class Other < BaseModel
            # @!attribute [rw] country
            #   The two-character ISO 3166-1 code representing the country that issued the document.
            #   @return [String]
            required :country, String

            # @!attribute [rw] description
            #   A description of the document submitted.
            #   @return [String]
            required :description, String

            # @!attribute [rw] file_id
            #   The identifier of the File containing the front of the document.
            #   @return [String]
            required :file_id, String

            # @!attribute [rw] back_file_id
            #   The identifier of the File containing the back of the document. Not every document has a reverse side.
            #   @return [String]
            optional :back_file_id, String

            # @!attribute [rw] expiration_date
            #   The document's expiration date in YYYY-MM-DD format.
            #   @return [Date]
            optional :expiration_date, Date
          end

          class Passport < BaseModel
            # @!attribute [rw] country
            #   The country that issued the passport.
            #   @return [String]
            required :country, String

            # @!attribute [rw] expiration_date
            #   The passport's expiration date in YYYY-MM-DD format.
            #   @return [Date]
            required :expiration_date, Date

            # @!attribute [rw] file_id
            #   The identifier of the File containing the passport.
            #   @return [String]
            required :file_id, String
          end
        end
      end

      class SupplementalDocument < BaseModel
        # @!attribute [rw] file_id
        #   The identifier of the File containing the document.
        #   @return [String]
        required :file_id, String
      end

      class Trust < BaseModel
        # @!attribute [rw] address
        #   The trust's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
        #   @return [Trust::Address]
        required :address, -> { Trust::Address }

        # @!attribute [rw] category
        #   Whether the trust is `revocable` or `irrevocable`. Irrevocable trusts require their own Employer Identification Number. Revocable trusts require information about the individual `grantor` who created the trust.
        #   @return [Symbol, Trust::Category]
        required :category, enum: -> { Trust::Category }

        # @!attribute [rw] name_
        #   The legal name of the trust.
        #   @return [String]
        required :name_, String

        # @!attribute [rw] trustees
        #   The trustees of the trust.
        #   @return [Array<Trust::Trustee>]
        required :trustees, Increase::ArrayOf.new(-> { Trust::Trustee })

        # @!attribute [rw] formation_document_file_id
        #   The identifier of the File containing the formation document of the trust.
        #   @return [String]
        optional :formation_document_file_id, String

        # @!attribute [rw] formation_state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state in which the trust was formed.
        #   @return [String]
        optional :formation_state, String

        # @!attribute [rw] grantor
        #   The grantor of the trust. Required if `category` is equal to `revocable`.
        #   @return [Trust::Grantor]
        optional :grantor, -> { Trust::Grantor }

        # @!attribute [rw] tax_identifier
        #   The Employer Identification Number (EIN) for the trust. Required if `category` is equal to `irrevocable`.
        #   @return [String]
        optional :tax_identifier, String

        class Address < BaseModel
          # @!attribute [rw] city
          #   The city of the address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the address. This is usually the street number and street.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] state
          #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] zip
          #   The ZIP code of the address.
          #   @return [String]
          required :zip, String

          # @!attribute [rw] line2
          #   The second line of the address. This might be the floor or room number.
          #   @return [String]
          optional :line2, String
        end

        # Whether the trust is `revocable` or `irrevocable`. Irrevocable trusts require their own Employer Identification Number. Revocable trusts require information about the individual `grantor` who created the trust.
        class Category < Increase::Enum
          # The trust is revocable by the grantor.
          REVOCABLE = :revocable

          # The trust cannot be revoked.
          IRREVOCABLE = :irrevocable
        end

        class Trustee < BaseModel
          # @!attribute [rw] structure
          #   The structure of the trustee.
          #   @return [Symbol, Trust::Trustee::Structure]
          required :structure, enum: -> { Trust::Trustee::Structure }

          # @!attribute [rw] individual
          #   Details of the individual trustee. Required when the trustee `structure` is equal to `individual`.
          #   @return [Trust::Trustee::Individual]
          optional :individual, -> { Trust::Trustee::Individual }

          # The structure of the trustee.
          class Structure < Increase::Enum
            # The trustee is an individual.
            INDIVIDUAL = :individual
          end

          class Individual < BaseModel
            # @!attribute [rw] address
            #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
            #   @return [Trust::Trustee::Individual::Address]
            required :address, -> { Trust::Trustee::Individual::Address }

            # @!attribute [rw] date_of_birth
            #   The person's date of birth in YYYY-MM-DD format.
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute [rw] identification
            #   A means of verifying the person's identity.
            #   @return [Trust::Trustee::Individual::Identification]
            required :identification, -> { Trust::Trustee::Individual::Identification }

            # @!attribute [rw] name_
            #   The person's legal name.
            #   @return [String]
            required :name_, String

            # @!attribute [rw] confirmed_no_us_tax_id
            #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
            #   @return [Boolean]
            optional :confirmed_no_us_tax_id, Increase::BooleanModel

            class Address < BaseModel
              # @!attribute [rw] city
              #   The city of the address.
              #   @return [String]
              required :city, String

              # @!attribute [rw] line1
              #   The first line of the address. This is usually the street number and street.
              #   @return [String]
              required :line1, String

              # @!attribute [rw] state
              #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
              #   @return [String]
              required :state, String

              # @!attribute [rw] zip
              #   The ZIP code of the address.
              #   @return [String]
              required :zip, String

              # @!attribute [rw] line2
              #   The second line of the address. This might be the floor or room number.
              #   @return [String]
              optional :line2, String
            end

            class Identification < BaseModel
              # @!attribute [rw] method_
              #   A method that can be used to verify the individual's identity.
              #   @return [Symbol, Trust::Trustee::Individual::Identification::Method]
              required :method_, enum: -> { Trust::Trustee::Individual::Identification::Method }

              # @!attribute [rw] number
              #   An identification number that can be used to verify the individual's identity, such as a social security number.
              #   @return [String]
              required :number, String

              # @!attribute [rw] drivers_license
              #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
              #   @return [Trust::Trustee::Individual::Identification::DriversLicense]
              optional :drivers_license, -> { Trust::Trustee::Individual::Identification::DriversLicense }

              # @!attribute [rw] other
              #   Information about the identification document provided. Required if `method` is equal to `other`.
              #   @return [Trust::Trustee::Individual::Identification::Other]
              optional :other, -> { Trust::Trustee::Individual::Identification::Other }

              # @!attribute [rw] passport
              #   Information about the passport used for identification. Required if `method` is equal to `passport`.
              #   @return [Trust::Trustee::Individual::Identification::Passport]
              optional :passport, -> { Trust::Trustee::Individual::Identification::Passport }

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

              class DriversLicense < BaseModel
                # @!attribute [rw] expiration_date
                #   The driver's license's expiration date in YYYY-MM-DD format.
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute [rw] file_id
                #   The identifier of the File containing the front of the driver's license.
                #   @return [String]
                required :file_id, String

                # @!attribute [rw] state
                #   The state that issued the provided driver's license.
                #   @return [String]
                required :state, String

                # @!attribute [rw] back_file_id
                #   The identifier of the File containing the back of the driver's license.
                #   @return [String]
                optional :back_file_id, String
              end

              class Other < BaseModel
                # @!attribute [rw] country
                #   The two-character ISO 3166-1 code representing the country that issued the document.
                #   @return [String]
                required :country, String

                # @!attribute [rw] description
                #   A description of the document submitted.
                #   @return [String]
                required :description, String

                # @!attribute [rw] file_id
                #   The identifier of the File containing the front of the document.
                #   @return [String]
                required :file_id, String

                # @!attribute [rw] back_file_id
                #   The identifier of the File containing the back of the document. Not every document has a reverse side.
                #   @return [String]
                optional :back_file_id, String

                # @!attribute [rw] expiration_date
                #   The document's expiration date in YYYY-MM-DD format.
                #   @return [Date]
                optional :expiration_date, Date
              end

              class Passport < BaseModel
                # @!attribute [rw] country
                #   The country that issued the passport.
                #   @return [String]
                required :country, String

                # @!attribute [rw] expiration_date
                #   The passport's expiration date in YYYY-MM-DD format.
                #   @return [Date]
                required :expiration_date, Date

                # @!attribute [rw] file_id
                #   The identifier of the File containing the passport.
                #   @return [String]
                required :file_id, String
              end
            end
          end
        end

        class Grantor < BaseModel
          # @!attribute [rw] address
          #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
          #   @return [Trust::Grantor::Address]
          required :address, -> { Trust::Grantor::Address }

          # @!attribute [rw] date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute [rw] identification
          #   A means of verifying the person's identity.
          #   @return [Trust::Grantor::Identification]
          required :identification, -> { Trust::Grantor::Identification }

          # @!attribute [rw] name_
          #   The person's legal name.
          #   @return [String]
          required :name_, String

          # @!attribute [rw] confirmed_no_us_tax_id
          #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
          #   @return [Boolean]
          optional :confirmed_no_us_tax_id, Increase::BooleanModel

          class Address < BaseModel
            # @!attribute [rw] city
            #   The city of the address.
            #   @return [String]
            required :city, String

            # @!attribute [rw] line1
            #   The first line of the address. This is usually the street number and street.
            #   @return [String]
            required :line1, String

            # @!attribute [rw] state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
            #   @return [String]
            required :state, String

            # @!attribute [rw] zip
            #   The ZIP code of the address.
            #   @return [String]
            required :zip, String

            # @!attribute [rw] line2
            #   The second line of the address. This might be the floor or room number.
            #   @return [String]
            optional :line2, String
          end

          class Identification < BaseModel
            # @!attribute [rw] method_
            #   A method that can be used to verify the individual's identity.
            #   @return [Symbol, Trust::Grantor::Identification::Method]
            required :method_, enum: -> { Trust::Grantor::Identification::Method }

            # @!attribute [rw] number
            #   An identification number that can be used to verify the individual's identity, such as a social security number.
            #   @return [String]
            required :number, String

            # @!attribute [rw] drivers_license
            #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
            #   @return [Trust::Grantor::Identification::DriversLicense]
            optional :drivers_license, -> { Trust::Grantor::Identification::DriversLicense }

            # @!attribute [rw] other
            #   Information about the identification document provided. Required if `method` is equal to `other`.
            #   @return [Trust::Grantor::Identification::Other]
            optional :other, -> { Trust::Grantor::Identification::Other }

            # @!attribute [rw] passport
            #   Information about the passport used for identification. Required if `method` is equal to `passport`.
            #   @return [Trust::Grantor::Identification::Passport]
            optional :passport, -> { Trust::Grantor::Identification::Passport }

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

            class DriversLicense < BaseModel
              # @!attribute [rw] expiration_date
              #   The driver's license's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute [rw] file_id
              #   The identifier of the File containing the front of the driver's license.
              #   @return [String]
              required :file_id, String

              # @!attribute [rw] state
              #   The state that issued the provided driver's license.
              #   @return [String]
              required :state, String

              # @!attribute [rw] back_file_id
              #   The identifier of the File containing the back of the driver's license.
              #   @return [String]
              optional :back_file_id, String
            end

            class Other < BaseModel
              # @!attribute [rw] country
              #   The two-character ISO 3166-1 code representing the country that issued the document.
              #   @return [String]
              required :country, String

              # @!attribute [rw] description
              #   A description of the document submitted.
              #   @return [String]
              required :description, String

              # @!attribute [rw] file_id
              #   The identifier of the File containing the front of the document.
              #   @return [String]
              required :file_id, String

              # @!attribute [rw] back_file_id
              #   The identifier of the File containing the back of the document. Not every document has a reverse side.
              #   @return [String]
              optional :back_file_id, String

              # @!attribute [rw] expiration_date
              #   The document's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              optional :expiration_date, Date
            end

            class Passport < BaseModel
              # @!attribute [rw] country
              #   The country that issued the passport.
              #   @return [String]
              required :country, String

              # @!attribute [rw] expiration_date
              #   The passport's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute [rw] file_id
              #   The identifier of the File containing the passport.
              #   @return [String]
              required :file_id, String
            end
          end
        end
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end

      class Status < BaseModel
        # @!attribute [rw] in_
        #   Filter Entities for those with the specified status or statuses. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Status::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Status::In })

        class In < Increase::Enum
          # The entity is active.
          ACTIVE = :active

          # The entity is archived, and can no longer be used to create accounts.
          ARCHIVED = :archived

          # The entity is temporarily disabled and cannot be used for financial activity.
          DISABLED = :disabled
        end
      end

      class BeneficialOwner < BaseModel
        # @!attribute [rw] individual
        #   Personal details for the beneficial owner.
        #   @return [BeneficialOwner::Individual]
        required :individual, -> { BeneficialOwner::Individual }

        # @!attribute [rw] prongs
        #   Why this person is considered a beneficial owner of the entity. At least one option is required, if a person is both a control person and owner, submit an array containing both.
        #   @return [Array<Symbol, BeneficialOwner::Prong>]
        required :prongs, Increase::ArrayOf.new(enum: -> { BeneficialOwner::Prong })

        # @!attribute [rw] company_title
        #   This person's role or title within the entity.
        #   @return [String]
        optional :company_title, String

        class Individual < BaseModel
          # @!attribute [rw] address
          #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
          #   @return [BeneficialOwner::Individual::Address]
          required :address, -> { BeneficialOwner::Individual::Address }

          # @!attribute [rw] date_of_birth
          #   The person's date of birth in YYYY-MM-DD format.
          #   @return [Date]
          required :date_of_birth, Date

          # @!attribute [rw] identification
          #   A means of verifying the person's identity.
          #   @return [BeneficialOwner::Individual::Identification]
          required :identification, -> { BeneficialOwner::Individual::Identification }

          # @!attribute [rw] name_
          #   The person's legal name.
          #   @return [String]
          required :name_, String

          # @!attribute [rw] confirmed_no_us_tax_id
          #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
          #   @return [Boolean]
          optional :confirmed_no_us_tax_id, Increase::BooleanModel

          class Address < BaseModel
            # @!attribute [rw] city
            #   The city of the address.
            #   @return [String]
            required :city, String

            # @!attribute [rw] line1
            #   The first line of the address. This is usually the street number and street.
            #   @return [String]
            required :line1, String

            # @!attribute [rw] state
            #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
            #   @return [String]
            required :state, String

            # @!attribute [rw] zip
            #   The ZIP code of the address.
            #   @return [String]
            required :zip, String

            # @!attribute [rw] line2
            #   The second line of the address. This might be the floor or room number.
            #   @return [String]
            optional :line2, String
          end

          class Identification < BaseModel
            # @!attribute [rw] method_
            #   A method that can be used to verify the individual's identity.
            #   @return [Symbol, BeneficialOwner::Individual::Identification::Method]
            required :method_, enum: -> { BeneficialOwner::Individual::Identification::Method }

            # @!attribute [rw] number
            #   An identification number that can be used to verify the individual's identity, such as a social security number.
            #   @return [String]
            required :number, String

            # @!attribute [rw] drivers_license
            #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
            #   @return [BeneficialOwner::Individual::Identification::DriversLicense]
            optional :drivers_license, -> { BeneficialOwner::Individual::Identification::DriversLicense }

            # @!attribute [rw] other
            #   Information about the identification document provided. Required if `method` is equal to `other`.
            #   @return [BeneficialOwner::Individual::Identification::Other]
            optional :other, -> { BeneficialOwner::Individual::Identification::Other }

            # @!attribute [rw] passport
            #   Information about the passport used for identification. Required if `method` is equal to `passport`.
            #   @return [BeneficialOwner::Individual::Identification::Passport]
            optional :passport, -> { BeneficialOwner::Individual::Identification::Passport }

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

            class DriversLicense < BaseModel
              # @!attribute [rw] expiration_date
              #   The driver's license's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute [rw] file_id
              #   The identifier of the File containing the front of the driver's license.
              #   @return [String]
              required :file_id, String

              # @!attribute [rw] state
              #   The state that issued the provided driver's license.
              #   @return [String]
              required :state, String

              # @!attribute [rw] back_file_id
              #   The identifier of the File containing the back of the driver's license.
              #   @return [String]
              optional :back_file_id, String
            end

            class Other < BaseModel
              # @!attribute [rw] country
              #   The two-character ISO 3166-1 code representing the country that issued the document.
              #   @return [String]
              required :country, String

              # @!attribute [rw] description
              #   A description of the document submitted.
              #   @return [String]
              required :description, String

              # @!attribute [rw] file_id
              #   The identifier of the File containing the front of the document.
              #   @return [String]
              required :file_id, String

              # @!attribute [rw] back_file_id
              #   The identifier of the File containing the back of the document. Not every document has a reverse side.
              #   @return [String]
              optional :back_file_id, String

              # @!attribute [rw] expiration_date
              #   The document's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              optional :expiration_date, Date
            end

            class Passport < BaseModel
              # @!attribute [rw] country
              #   The country that issued the passport.
              #   @return [String]
              required :country, String

              # @!attribute [rw] expiration_date
              #   The passport's expiration date in YYYY-MM-DD format.
              #   @return [Date]
              required :expiration_date, Date

              # @!attribute [rw] file_id
              #   The identifier of the File containing the passport.
              #   @return [String]
              required :file_id, String
            end
          end
        end

        class Prong < Increase::Enum
          # A person with 25% or greater direct or indirect ownership of the entity.
          OWNERSHIP = :ownership

          # A person who manages, directs, or has significant control of the entity.
          CONTROL = :control
        end
      end

      class Address < BaseModel
        # @!attribute [rw] city
        #   The city of the address.
        #   @return [String]
        required :city, String

        # @!attribute [rw] line1
        #   The first line of the address. This is usually the street number and street.
        #   @return [String]
        required :line1, String

        # @!attribute [rw] state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
        #   @return [String]
        required :state, String

        # @!attribute [rw] zip
        #   The ZIP code of the address.
        #   @return [String]
        required :zip, String

        # @!attribute [rw] line2
        #   The second line of the address. This might be the floor or room number.
        #   @return [String]
        optional :line2, String
      end

      class Address < BaseModel
        # @!attribute [rw] city
        #   The city of the address.
        #   @return [String]
        required :city, String

        # @!attribute [rw] line1
        #   The first line of the address. This is usually the street number and street.
        #   @return [String]
        required :line1, String

        # @!attribute [rw] state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
        #   @return [String]
        required :state, String

        # @!attribute [rw] zip
        #   The ZIP code of the address.
        #   @return [String]
        required :zip, String

        # @!attribute [rw] line2
        #   The second line of the address. This might be the floor or room number.
        #   @return [String]
        optional :line2, String
      end
    end
  end
end
