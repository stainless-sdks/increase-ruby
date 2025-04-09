# typed: strong

module Increase
  module Models
    class EntityCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_entity_parameters/properties/structure
      sig { returns(Increase::Models::EntityCreateParams::Structure::OrSymbol) }
      attr_accessor :structure

      # #/components/schemas/create_an_entity_parameters/properties/corporation
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Corporation)) }
      attr_reader :corporation

      sig do
        params(corporation: T.any(Increase::Models::EntityCreateParams::Corporation, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :corporation

      # #/components/schemas/create_an_entity_parameters/properties/description
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # #/components/schemas/create_an_entity_parameters/properties/government_authority
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::GovernmentAuthority)) }
      attr_reader :government_authority

      sig do
        params(
          government_authority: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :government_authority

      # #/components/schemas/create_an_entity_parameters/properties/joint
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Joint)) }
      attr_reader :joint

      sig { params(joint: T.any(Increase::Models::EntityCreateParams::Joint, Increase::Internal::AnyHash)).void }
      attr_writer :joint

      # #/components/schemas/create_an_entity_parameters/properties/natural_person
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson)) }
      attr_reader :natural_person

      sig do
        params(
          natural_person: T.any(Increase::Models::EntityCreateParams::NaturalPerson, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :natural_person

      # #/components/schemas/create_an_entity_parameters/properties/supplemental_documents
      sig { returns(T.nilable(T::Array[Increase::Models::EntityCreateParams::SupplementalDocument])) }
      attr_reader :supplemental_documents

      sig do
        params(
          supplemental_documents: T::Array[T.any(Increase::Models::EntityCreateParams::SupplementalDocument, Increase::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :supplemental_documents

      # #/components/schemas/create_an_entity_parameters/properties/third_party_verification
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::ThirdPartyVerification)) }
      attr_reader :third_party_verification

      sig do
        params(
          third_party_verification: T.any(Increase::Models::EntityCreateParams::ThirdPartyVerification, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :third_party_verification

      # #/components/schemas/create_an_entity_parameters/properties/trust
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust)) }
      attr_reader :trust

      sig { params(trust: T.any(Increase::Models::EntityCreateParams::Trust, Increase::Internal::AnyHash)).void }
      attr_writer :trust

      sig do
        params(
          structure: Increase::Models::EntityCreateParams::Structure::OrSymbol,
          corporation: T.any(Increase::Models::EntityCreateParams::Corporation, Increase::Internal::AnyHash),
          description: String,
          government_authority: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority, Increase::Internal::AnyHash),
          joint: T.any(Increase::Models::EntityCreateParams::Joint, Increase::Internal::AnyHash),
          natural_person: T.any(Increase::Models::EntityCreateParams::NaturalPerson, Increase::Internal::AnyHash),
          supplemental_documents: T::Array[T.any(Increase::Models::EntityCreateParams::SupplementalDocument, Increase::Internal::AnyHash)],
          third_party_verification: T.any(Increase::Models::EntityCreateParams::ThirdPartyVerification, Increase::Internal::AnyHash),
          trust: T.any(Increase::Models::EntityCreateParams::Trust, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        structure:,
        corporation: nil,
        description: nil,
        government_authority: nil,
        joint: nil,
        natural_person: nil,
        supplemental_documents: nil,
        third_party_verification: nil,
        trust: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              structure: Increase::Models::EntityCreateParams::Structure::OrSymbol,
              corporation: Increase::Models::EntityCreateParams::Corporation,
              description: String,
              government_authority: Increase::Models::EntityCreateParams::GovernmentAuthority,
              joint: Increase::Models::EntityCreateParams::Joint,
              natural_person: Increase::Models::EntityCreateParams::NaturalPerson,
              supplemental_documents: T::Array[Increase::Models::EntityCreateParams::SupplementalDocument],
              third_party_verification: Increase::Models::EntityCreateParams::ThirdPartyVerification,
              trust: Increase::Models::EntityCreateParams::Trust,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # #/components/schemas/create_an_entity_parameters/properties/structure
      module Structure
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Structure) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::EntityCreateParams::Structure::TaggedSymbol) }

        # A corporation.
        CORPORATION = T.let(:corporation, Increase::Models::EntityCreateParams::Structure::TaggedSymbol)

        # An individual person.
        NATURAL_PERSON = T.let(:natural_person, Increase::Models::EntityCreateParams::Structure::TaggedSymbol)

        # Multiple individual people.
        JOINT = T.let(:joint, Increase::Models::EntityCreateParams::Structure::TaggedSymbol)

        # A trust.
        TRUST = T.let(:trust, Increase::Models::EntityCreateParams::Structure::TaggedSymbol)

        # A government authority.
        GOVERNMENT_AUTHORITY =
          T.let(:government_authority, Increase::Models::EntityCreateParams::Structure::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::EntityCreateParams::Structure::TaggedSymbol]) }
        def self.values; end
      end

      class Corporation < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address
        sig { returns(Increase::Models::EntityCreateParams::Corporation::Address) }
        attr_reader :address

        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::Corporation::Address, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :address

        # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners
        sig { returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner]) }
        attr_accessor :beneficial_owners

        # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/tax_identifier
        sig { returns(String) }
        attr_accessor :tax_identifier

        # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/incorporation_state
        sig { returns(T.nilable(String)) }
        attr_reader :incorporation_state

        sig { params(incorporation_state: String).void }
        attr_writer :incorporation_state

        # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/industry_code
        sig { returns(T.nilable(String)) }
        attr_reader :industry_code

        sig { params(industry_code: String).void }
        attr_writer :industry_code

        # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/website
        sig { returns(T.nilable(String)) }
        attr_reader :website

        sig { params(website: String).void }
        attr_writer :website

        # #/components/schemas/create_an_entity_parameters/properties/corporation
        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::Corporation::Address, Increase::Internal::AnyHash),
            beneficial_owners: T::Array[T.any(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner, Increase::Internal::AnyHash)],
            name: String,
            tax_identifier: String,
            incorporation_state: String,
            industry_code: String,
            website: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          address:,
          beneficial_owners:,
          name:,
          tax_identifier:,
          incorporation_state: nil,
          industry_code: nil,
          website: nil
        ); end
        sig do
          override
            .returns(
              {
                address: Increase::Models::EntityCreateParams::Corporation::Address,
                beneficial_owners: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner],
                name: String,
                tax_identifier: String,
                incorporation_state: String,
                industry_code: String,
                website: String
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/zip
          sig { returns(String) }
          attr_accessor :zip

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/address
          sig do
            params(
              city: String,
              line1: String,
              state: String,
              zip: String,
              line2: String
            ).returns(T.attached_class)
          end
          def self.new(city:, line1:, state:, zip:, line2: nil); end

          sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
          def to_hash; end
        end

        class BeneficialOwner < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual
          sig { returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual) }
          attr_reader :individual

          sig do
            params(
              individual: T.any(
                Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :individual

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/prongs
          sig { returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::OrSymbol]) }
          attr_accessor :prongs

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/company_title
          sig { returns(T.nilable(String)) }
          attr_reader :company_title

          sig { params(company_title: String).void }
          attr_writer :company_title

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items
          sig do
            params(
              individual: T.any(
                Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
                Increase::Internal::AnyHash
              ),
              prongs: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::OrSymbol],
              company_title: String
            )
              .returns(T.attached_class)
          end
          def self.new(individual:, prongs:, company_title: nil); end

          sig do
            override
              .returns(
                {
                  individual: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
                  prongs: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::OrSymbol],
                  company_title: String
                }
              )
          end
          def to_hash; end

          class Individual < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address
            sig { returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address) }
            attr_reader :address

            sig do
              params(
                address: T.any(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :address

            # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/date_of_birth
            sig { returns(Date) }
            attr_accessor :date_of_birth

            # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification
            sig { returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification) }
            attr_reader :identification

            sig do
              params(
                identification: T.any(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :identification

            # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/name
            sig { returns(String) }
            attr_accessor :name

            # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/confirmed_no_us_tax_id
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :confirmed_no_us_tax_id

            sig { params(confirmed_no_us_tax_id: T::Boolean).void }
            attr_writer :confirmed_no_us_tax_id

            # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual
            sig do
              params(
                address: T.any(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
                  Increase::Internal::AnyHash
                ),
                date_of_birth: Date,
                identification: T.any(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
                  Increase::Internal::AnyHash
                ),
                name: String,
                confirmed_no_us_tax_id: T::Boolean
              )
                .returns(T.attached_class)
            end
            def self.new(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil); end

            sig do
              override
                .returns(
                  {
                    address: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
                    date_of_birth: Date,
                    identification: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
                    name: String,
                    confirmed_no_us_tax_id: T::Boolean
                  }
                )
            end
            def to_hash; end

            class Address < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/country
              sig { returns(String) }
              attr_accessor :country

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/line1
              sig { returns(String) }
              attr_accessor :line1

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/city
              sig { returns(T.nilable(String)) }
              attr_reader :city

              sig { params(city: String).void }
              attr_writer :city

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/line2
              sig { returns(T.nilable(String)) }
              attr_reader :line2

              sig { params(line2: String).void }
              attr_writer :line2

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/state
              sig { returns(T.nilable(String)) }
              attr_reader :state

              sig { params(state: String).void }
              attr_writer :state

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address/properties/zip
              sig { returns(T.nilable(String)) }
              attr_reader :zip

              sig { params(zip: String).void }
              attr_writer :zip

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/address
              sig do
                params(
                  country: String,
                  line1: String,
                  city: String,
                  line2: String,
                  state: String,
                  zip: String
                )
                  .returns(T.attached_class)
              end
              def self.new(country:, line1:, city: nil, line2: nil, state: nil, zip: nil); end

              sig do
                override.returns(
                  {
                    country: String,
                    line1: String,
                    city: String,
                    line2: String,
                    state: String,
                    zip: String
                  }
                )
              end
              def to_hash; end
            end

            class Identification < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/method
              sig do
                returns(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol
                )
              end
              attr_accessor :method_

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/number
              sig { returns(String) }
              attr_accessor :number

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license
              sig do
                returns(
                  T.nilable(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense
                  )
                )
              end
              attr_reader :drivers_license

              sig do
                params(
                  drivers_license: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
                    Increase::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :drivers_license

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other
              sig do
                returns(
                  T.nilable(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other
                  )
                )
              end
              attr_reader :other

              sig do
                params(
                  other: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
                    Increase::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :other

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport
              sig do
                returns(
                  T.nilable(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport
                  )
                )
              end
              attr_reader :passport

              sig do
                params(
                  passport: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport,
                    Increase::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :passport

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification
              sig do
                params(
                  method_: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol,
                  number: String,
                  drivers_license: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
                    Increase::Internal::AnyHash
                  ),
                  other: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
                    Increase::Internal::AnyHash
                  ),
                  passport: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport,
                    Increase::Internal::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(method_:, number:, drivers_license: nil, other: nil, passport: nil); end

              sig do
                override
                  .returns(
                    {
                      method_: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol,
                      number: String,
                      drivers_license: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
                      other: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
                      passport: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport
                    }
                  )
              end
              def to_hash; end

              # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/method
              module Method
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                    )
                  end

                # A social security number.
                SOCIAL_SECURITY_NUMBER =
                  T.let(
                    :social_security_number,
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                # An individual taxpayer identification number (ITIN).
                INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                  T.let(
                    :individual_taxpayer_identification_number,
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                # A passport number.
                PASSPORT =
                  T.let(
                    :passport,
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                # A driver's license number.
                DRIVERS_LICENSE =
                  T.let(
                    :drivers_license,
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                # Another identifying document.
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end

              class DriversLicense < Increase::Internal::Type::BaseModel
                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license/properties/expiration_date
                sig { returns(Date) }
                attr_accessor :expiration_date

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license/properties/file_id
                sig { returns(String) }
                attr_accessor :file_id

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license/properties/state
                sig { returns(String) }
                attr_accessor :state

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license/properties/back_file_id
                sig { returns(T.nilable(String)) }
                attr_reader :back_file_id

                sig { params(back_file_id: String).void }
                attr_writer :back_file_id

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/drivers_license
                sig do
                  params(expiration_date: Date, file_id: String, state: String, back_file_id: String)
                    .returns(T.attached_class)
                end
                def self.new(expiration_date:, file_id:, state:, back_file_id: nil); end

                sig do
                  override.returns(
                    {
                      expiration_date: Date,
                      file_id: String,
                      state: String,
                      back_file_id: String
                    }
                  )
                end
                def to_hash; end
              end

              class Other < Increase::Internal::Type::BaseModel
                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/country
                sig { returns(String) }
                attr_accessor :country

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/description
                sig { returns(String) }
                attr_accessor :description

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/file_id
                sig { returns(String) }
                attr_accessor :file_id

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/back_file_id
                sig { returns(T.nilable(String)) }
                attr_reader :back_file_id

                sig { params(back_file_id: String).void }
                attr_writer :back_file_id

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other/properties/expiration_date
                sig { returns(T.nilable(Date)) }
                attr_reader :expiration_date

                sig { params(expiration_date: Date).void }
                attr_writer :expiration_date

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/other
                sig do
                  params(
                    country: String,
                    description: String,
                    file_id: String,
                    back_file_id: String,
                    expiration_date: Date
                  )
                    .returns(T.attached_class)
                end
                def self.new(country:, description:, file_id:, back_file_id: nil, expiration_date: nil); end

                sig do
                  override
                    .returns(
                      {
                        country: String,
                        description: String,
                        file_id: String,
                        back_file_id: String,
                        expiration_date: Date
                      }
                    )
                end
                def to_hash; end
              end

              class Passport < Increase::Internal::Type::BaseModel
                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport/properties/country
                sig { returns(String) }
                attr_accessor :country

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport/properties/expiration_date
                sig { returns(Date) }
                attr_accessor :expiration_date

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport/properties/file_id
                sig { returns(String) }
                attr_accessor :file_id

                # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/individual/properties/identification/properties/passport
                sig do
                  params(country: String, expiration_date: Date, file_id: String).returns(T.attached_class)
                end
                def self.new(country:, expiration_date:, file_id:); end

                sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
                def to_hash; end
              end
            end
          end

          # #/components/schemas/create_an_entity_parameters/properties/corporation/properties/beneficial_owners/items/properties/prongs/items
          module Prong
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::TaggedSymbol
                )
              end

            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP =
              T.let(:ownership, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::TaggedSymbol)

            # A person who manages, directs, or has significant control of the entity.
            CONTROL =
              T.let(:control, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end

      class GovernmentAuthority < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address
        sig { returns(Increase::Models::EntityCreateParams::GovernmentAuthority::Address) }
        attr_reader :address

        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority::Address, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :address

        # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/authorized_persons
        sig { returns(T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson]) }
        attr_accessor :authorized_persons

        # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/category
        sig { returns(Increase::Models::EntityCreateParams::GovernmentAuthority::Category::OrSymbol) }
        attr_accessor :category

        # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/tax_identifier
        sig { returns(String) }
        attr_accessor :tax_identifier

        # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/website
        sig { returns(T.nilable(String)) }
        attr_reader :website

        sig { params(website: String).void }
        attr_writer :website

        # #/components/schemas/create_an_entity_parameters/properties/government_authority
        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority::Address, Increase::Internal::AnyHash),
            authorized_persons: T::Array[
              T.any(
                Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson,
                Increase::Internal::AnyHash
              )
            ],
            category: Increase::Models::EntityCreateParams::GovernmentAuthority::Category::OrSymbol,
            name: String,
            tax_identifier: String,
            website: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, authorized_persons:, category:, name:, tax_identifier:, website: nil); end

        sig do
          override
            .returns(
              {
                address: Increase::Models::EntityCreateParams::GovernmentAuthority::Address,
                authorized_persons: T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson],
                category: Increase::Models::EntityCreateParams::GovernmentAuthority::Category::OrSymbol,
                name: String,
                tax_identifier: String,
                website: String
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/zip
          sig { returns(String) }
          attr_accessor :zip

          # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/address
          sig do
            params(
              city: String,
              line1: String,
              state: String,
              zip: String,
              line2: String
            ).returns(T.attached_class)
          end
          def self.new(city:, line1:, state:, zip:, line2: nil); end

          sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
          def to_hash; end
        end

        class AuthorizedPerson < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/authorized_persons/items/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/authorized_persons/items
          sig { params(name: String).returns(T.attached_class) }
          def self.new(name:); end

          sig { override.returns({name: String}) }
          def to_hash; end
        end

        # #/components/schemas/create_an_entity_parameters/properties/government_authority/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::GovernmentAuthority::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::EntityCreateParams::GovernmentAuthority::Category::TaggedSymbol) }

          # The Public Entity is a Municipality.
          MUNICIPALITY =
            T.let(:municipality, Increase::Models::EntityCreateParams::GovernmentAuthority::Category::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::Category::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class Joint < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals
        sig { returns(T::Array[Increase::Models::EntityCreateParams::Joint::Individual]) }
        attr_accessor :individuals

        # #/components/schemas/create_an_entity_parameters/properties/joint/properties/name
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # #/components/schemas/create_an_entity_parameters/properties/joint
        sig do
          params(
            individuals: T::Array[T.any(Increase::Models::EntityCreateParams::Joint::Individual, Increase::Internal::AnyHash)],
            name: String
          )
            .returns(T.attached_class)
        end
        def self.new(individuals:, name: nil); end

        sig do
          override
            .returns({individuals: T::Array[Increase::Models::EntityCreateParams::Joint::Individual], name: String})
        end
        def to_hash; end

        class Individual < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address
          sig { returns(Increase::Models::EntityCreateParams::Joint::Individual::Address) }
          attr_reader :address

          sig do
            params(
              address: T.any(Increase::Models::EntityCreateParams::Joint::Individual::Address, Increase::Internal::AnyHash)
            )
              .void
          end
          attr_writer :address

          # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/date_of_birth
          sig { returns(Date) }
          attr_accessor :date_of_birth

          # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification
          sig { returns(Increase::Models::EntityCreateParams::Joint::Individual::Identification) }
          attr_reader :identification

          sig do
            params(
              identification: T.any(
                Increase::Models::EntityCreateParams::Joint::Individual::Identification,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :identification

          # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/confirmed_no_us_tax_id
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :confirmed_no_us_tax_id

          sig { params(confirmed_no_us_tax_id: T::Boolean).void }
          attr_writer :confirmed_no_us_tax_id

          # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items
          sig do
            params(
              address: T.any(Increase::Models::EntityCreateParams::Joint::Individual::Address, Increase::Internal::AnyHash),
              date_of_birth: Date,
              identification: T.any(
                Increase::Models::EntityCreateParams::Joint::Individual::Identification,
                Increase::Internal::AnyHash
              ),
              name: String,
              confirmed_no_us_tax_id: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil); end

          sig do
            override
              .returns(
                {
                  address: Increase::Models::EntityCreateParams::Joint::Individual::Address,
                  date_of_birth: Date,
                  identification: Increase::Models::EntityCreateParams::Joint::Individual::Identification,
                  name: String,
                  confirmed_no_us_tax_id: T::Boolean
                }
              )
          end
          def to_hash; end

          class Address < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/city
            sig { returns(String) }
            attr_accessor :city

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/line1
            sig { returns(String) }
            attr_accessor :line1

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/state
            sig { returns(String) }
            attr_accessor :state

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/zip
            sig { returns(String) }
            attr_accessor :zip

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address/properties/line2
            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/address
            sig do
              params(
                city: String,
                line1: String,
                state: String,
                zip: String,
                line2: String
              ).returns(T.attached_class)
            end
            def self.new(city:, line1:, state:, zip:, line2: nil); end

            sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
            def to_hash; end
          end

          class Identification < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/method
            sig { returns(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::OrSymbol) }
            attr_accessor :method_

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/number
            sig { returns(String) }
            attr_accessor :number

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license
            sig do
              returns(
                T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense)
              )
            end
            attr_reader :drivers_license

            sig do
              params(
                drivers_license: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :drivers_license

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other)) }
            attr_reader :other

            sig do
              params(
                other: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :other

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport)) }
            attr_reader :passport

            sig do
              params(
                passport: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :passport

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification
            sig do
              params(
                method_: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::OrSymbol,
                number: String,
                drivers_license: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                  Increase::Internal::AnyHash
                ),
                other: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                  Increase::Internal::AnyHash
                ),
                passport: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport,
                  Increase::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(method_:, number:, drivers_license: nil, other: nil, passport: nil); end

            sig do
              override
                .returns(
                  {
                    method_: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::OrSymbol,
                    number: String,
                    drivers_license: Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                    other: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                    passport: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport
                  }
                )
            end
            def to_hash; end

            # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/method
            module Method
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::TaggedSymbol
                  )
                end

              # A social security number.
              SOCIAL_SECURITY_NUMBER =
                T.let(
                  :social_security_number,
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::TaggedSymbol
                )

              # An individual taxpayer identification number (ITIN).
              INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                T.let(
                  :individual_taxpayer_identification_number,
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::TaggedSymbol
                )

              # A passport number.
              PASSPORT =
                T.let(
                  :passport,
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::TaggedSymbol
                )

              # A driver's license number.
              DRIVERS_LICENSE =
                T.let(
                  :drivers_license,
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::TaggedSymbol
                )

              # Another identifying document.
              OTHER =
                T.let(
                  :other,
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class DriversLicense < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license/properties/expiration_date
              sig { returns(Date) }
              attr_accessor :expiration_date

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license/properties/state
              sig { returns(String) }
              attr_accessor :state

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license/properties/back_file_id
              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/drivers_license
              sig do
                params(expiration_date: Date, file_id: String, state: String, back_file_id: String)
                  .returns(T.attached_class)
              end
              def self.new(expiration_date:, file_id:, state:, back_file_id: nil); end

              sig do
                override.returns(
                  {
                    expiration_date: Date,
                    file_id: String,
                    state: String,
                    back_file_id: String
                  }
                )
              end
              def to_hash; end
            end

            class Other < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/country
              sig { returns(String) }
              attr_accessor :country

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/description
              sig { returns(String) }
              attr_accessor :description

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/back_file_id
              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other/properties/expiration_date
              sig { returns(T.nilable(Date)) }
              attr_reader :expiration_date

              sig { params(expiration_date: Date).void }
              attr_writer :expiration_date

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/other
              sig do
                params(
                  country: String,
                  description: String,
                  file_id: String,
                  back_file_id: String,
                  expiration_date: Date
                )
                  .returns(T.attached_class)
              end
              def self.new(country:, description:, file_id:, back_file_id: nil, expiration_date: nil); end

              sig do
                override
                  .returns(
                    {
                      country: String,
                      description: String,
                      file_id: String,
                      back_file_id: String,
                      expiration_date: Date
                    }
                  )
              end
              def to_hash; end
            end

            class Passport < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport/properties/country
              sig { returns(String) }
              attr_accessor :country

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport/properties/expiration_date
              sig { returns(Date) }
              attr_accessor :expiration_date

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_an_entity_parameters/properties/joint/properties/individuals/items/properties/identification/properties/passport
              sig do
                params(country: String, expiration_date: Date, file_id: String).returns(T.attached_class)
              end
              def self.new(country:, expiration_date:, file_id:); end

              sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
              def to_hash; end
            end
          end
        end
      end

      class NaturalPerson < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address
        sig { returns(Increase::Models::EntityCreateParams::NaturalPerson::Address) }
        attr_reader :address

        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Address, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :address

        # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/date_of_birth
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification
        sig { returns(Increase::Models::EntityCreateParams::NaturalPerson::Identification) }
        attr_reader :identification

        sig do
          params(
            identification: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Identification, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :identification

        # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/confirmed_no_us_tax_id
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :confirmed_no_us_tax_id

        sig { params(confirmed_no_us_tax_id: T::Boolean).void }
        attr_writer :confirmed_no_us_tax_id

        # #/components/schemas/create_an_entity_parameters/properties/natural_person
        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Address, Increase::Internal::AnyHash),
            date_of_birth: Date,
            identification: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Identification, Increase::Internal::AnyHash),
            name: String,
            confirmed_no_us_tax_id: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil); end

        sig do
          override
            .returns(
              {
                address: Increase::Models::EntityCreateParams::NaturalPerson::Address,
                date_of_birth: Date,
                identification: Increase::Models::EntityCreateParams::NaturalPerson::Identification,
                name: String,
                confirmed_no_us_tax_id: T::Boolean
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/zip
          sig { returns(String) }
          attr_accessor :zip

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/address
          sig do
            params(
              city: String,
              line1: String,
              state: String,
              zip: String,
              line2: String
            ).returns(T.attached_class)
          end
          def self.new(city:, line1:, state:, zip:, line2: nil); end

          sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
          def to_hash; end
        end

        class Identification < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/method
          sig { returns(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::OrSymbol) }
          attr_accessor :method_

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/number
          sig { returns(String) }
          attr_accessor :number

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license
          sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense)) }
          attr_reader :drivers_license

          sig do
            params(
              drivers_license: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :drivers_license

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other
          sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other)) }
          attr_reader :other

          sig do
            params(
              other: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :other

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport
          sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport)) }
          attr_reader :passport

          sig do
            params(
              passport: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :passport

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification
          sig do
            params(
              method_: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::OrSymbol,
              number: String,
              drivers_license: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
                Increase::Internal::AnyHash
              ),
              other: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other,
                Increase::Internal::AnyHash
              ),
              passport: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport,
                Increase::Internal::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(method_:, number:, drivers_license: nil, other: nil, passport: nil); end

          sig do
            override
              .returns(
                {
                  method_: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::OrSymbol,
                  number: String,
                  drivers_license: Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
                  other: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other,
                  passport: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport
                }
              )
          end
          def to_hash; end

          # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/method
          module Method
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol
                )
              end

            # A social security number.
            SOCIAL_SECURITY_NUMBER =
              T.let(
                :social_security_number,
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol
              )

            # An individual taxpayer identification number (ITIN).
            INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
              T.let(
                :individual_taxpayer_identification_number,
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol
              )

            # A passport number.
            PASSPORT =
              T.let(
                :passport,
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol
              )

            # A driver's license number.
            DRIVERS_LICENSE =
              T.let(
                :drivers_license,
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol
              )

            # Another identifying document.
            OTHER =
              T.let(:other, Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol]
                )
            end
            def self.values; end
          end

          class DriversLicense < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license/properties/expiration_date
            sig { returns(Date) }
            attr_accessor :expiration_date

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license/properties/file_id
            sig { returns(String) }
            attr_accessor :file_id

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license/properties/state
            sig { returns(String) }
            attr_accessor :state

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license/properties/back_file_id
            sig { returns(T.nilable(String)) }
            attr_reader :back_file_id

            sig { params(back_file_id: String).void }
            attr_writer :back_file_id

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/drivers_license
            sig do
              params(expiration_date: Date, file_id: String, state: String, back_file_id: String)
                .returns(T.attached_class)
            end
            def self.new(expiration_date:, file_id:, state:, back_file_id: nil); end

            sig do
              override.returns({expiration_date: Date, file_id: String, state: String, back_file_id: String})
            end
            def to_hash; end
          end

          class Other < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/country
            sig { returns(String) }
            attr_accessor :country

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/description
            sig { returns(String) }
            attr_accessor :description

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/file_id
            sig { returns(String) }
            attr_accessor :file_id

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/back_file_id
            sig { returns(T.nilable(String)) }
            attr_reader :back_file_id

            sig { params(back_file_id: String).void }
            attr_writer :back_file_id

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other/properties/expiration_date
            sig { returns(T.nilable(Date)) }
            attr_reader :expiration_date

            sig { params(expiration_date: Date).void }
            attr_writer :expiration_date

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/other
            sig do
              params(
                country: String,
                description: String,
                file_id: String,
                back_file_id: String,
                expiration_date: Date
              )
                .returns(T.attached_class)
            end
            def self.new(country:, description:, file_id:, back_file_id: nil, expiration_date: nil); end

            sig do
              override
                .returns(
                  {
                    country: String,
                    description: String,
                    file_id: String,
                    back_file_id: String,
                    expiration_date: Date
                  }
                )
            end
            def to_hash; end
          end

          class Passport < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport/properties/country
            sig { returns(String) }
            attr_accessor :country

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport/properties/expiration_date
            sig { returns(Date) }
            attr_accessor :expiration_date

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport/properties/file_id
            sig { returns(String) }
            attr_accessor :file_id

            # #/components/schemas/create_an_entity_parameters/properties/natural_person/properties/identification/properties/passport
            sig { params(country: String, expiration_date: Date, file_id: String).returns(T.attached_class) }
            def self.new(country:, expiration_date:, file_id:); end

            sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
            def to_hash; end
          end
        end
      end

      class SupplementalDocument < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_entity_parameters/properties/supplemental_documents/items/properties/file_id
        sig { returns(String) }
        attr_accessor :file_id

        # #/components/schemas/create_an_entity_parameters/properties/supplemental_documents/items
        sig { params(file_id: String).returns(T.attached_class) }
        def self.new(file_id:); end

        sig { override.returns({file_id: String}) }
        def to_hash; end
      end

      class ThirdPartyVerification < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_entity_parameters/properties/third_party_verification/properties/reference
        sig { returns(String) }
        attr_accessor :reference

        # #/components/schemas/create_an_entity_parameters/properties/third_party_verification/properties/vendor
        sig { returns(Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::OrSymbol) }
        attr_accessor :vendor

        # #/components/schemas/create_an_entity_parameters/properties/third_party_verification
        sig do
          params(
            reference: String,
            vendor: Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(reference:, vendor:); end

        sig do
          override
            .returns(
              {reference: String, vendor: Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::OrSymbol}
            )
        end
        def to_hash; end

        # #/components/schemas/create_an_entity_parameters/properties/third_party_verification/properties/vendor
        module Vendor
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::TaggedSymbol) }

          # Alloy. See https://alloy.com for more information.
          ALLOY = T.let(:alloy, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::TaggedSymbol)

          # Middesk. See https://middesk.com for more information.
          MIDDESK =
            T.let(:middesk, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class Trust < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/address
        sig { returns(Increase::Models::EntityCreateParams::Trust::Address) }
        attr_reader :address

        sig do
          params(address: T.any(Increase::Models::EntityCreateParams::Trust::Address, Increase::Internal::AnyHash))
            .void
        end
        attr_writer :address

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/category
        sig { returns(Increase::Models::EntityCreateParams::Trust::Category::OrSymbol) }
        attr_accessor :category

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/name
        sig { returns(String) }
        attr_accessor :name

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees
        sig { returns(T::Array[Increase::Models::EntityCreateParams::Trust::Trustee]) }
        attr_accessor :trustees

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/formation_document_file_id
        sig { returns(T.nilable(String)) }
        attr_reader :formation_document_file_id

        sig { params(formation_document_file_id: String).void }
        attr_writer :formation_document_file_id

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/formation_state
        sig { returns(T.nilable(String)) }
        attr_reader :formation_state

        sig { params(formation_state: String).void }
        attr_writer :formation_state

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor
        sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor)) }
        attr_reader :grantor

        sig do
          params(grantor: T.any(Increase::Models::EntityCreateParams::Trust::Grantor, Increase::Internal::AnyHash))
            .void
        end
        attr_writer :grantor

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/tax_identifier
        sig { returns(T.nilable(String)) }
        attr_reader :tax_identifier

        sig { params(tax_identifier: String).void }
        attr_writer :tax_identifier

        # #/components/schemas/create_an_entity_parameters/properties/trust
        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::Trust::Address, Increase::Internal::AnyHash),
            category: Increase::Models::EntityCreateParams::Trust::Category::OrSymbol,
            name: String,
            trustees: T::Array[T.any(Increase::Models::EntityCreateParams::Trust::Trustee, Increase::Internal::AnyHash)],
            formation_document_file_id: String,
            formation_state: String,
            grantor: T.any(Increase::Models::EntityCreateParams::Trust::Grantor, Increase::Internal::AnyHash),
            tax_identifier: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          address:,
          category:,
          name:,
          trustees:,
          formation_document_file_id: nil,
          formation_state: nil,
          grantor: nil,
          tax_identifier: nil
        ); end
        sig do
          override
            .returns(
              {
                address: Increase::Models::EntityCreateParams::Trust::Address,
                category: Increase::Models::EntityCreateParams::Trust::Category::OrSymbol,
                name: String,
                trustees: T::Array[Increase::Models::EntityCreateParams::Trust::Trustee],
                formation_document_file_id: String,
                formation_state: String,
                grantor: Increase::Models::EntityCreateParams::Trust::Grantor,
                tax_identifier: String
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/zip
          sig { returns(String) }
          attr_accessor :zip

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/address
          sig do
            params(
              city: String,
              line1: String,
              state: String,
              zip: String,
              line2: String
            ).returns(T.attached_class)
          end
          def self.new(city:, line1:, state:, zip:, line2: nil); end

          sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
          def to_hash; end
        end

        # #/components/schemas/create_an_entity_parameters/properties/trust/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Trust::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::EntityCreateParams::Trust::Category::TaggedSymbol) }

          # The trust is revocable by the grantor.
          REVOCABLE = T.let(:revocable, Increase::Models::EntityCreateParams::Trust::Category::TaggedSymbol)

          # The trust cannot be revoked.
          IRREVOCABLE = T.let(:irrevocable, Increase::Models::EntityCreateParams::Trust::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::EntityCreateParams::Trust::Category::TaggedSymbol]) }
          def self.values; end
        end

        class Trustee < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/structure
          sig { returns(Increase::Models::EntityCreateParams::Trust::Trustee::Structure::OrSymbol) }
          attr_accessor :structure

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual
          sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual)) }
          attr_reader :individual

          sig do
            params(
              individual: T.any(Increase::Models::EntityCreateParams::Trust::Trustee::Individual, Increase::Internal::AnyHash)
            )
              .void
          end
          attr_writer :individual

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items
          sig do
            params(
              structure: Increase::Models::EntityCreateParams::Trust::Trustee::Structure::OrSymbol,
              individual: T.any(Increase::Models::EntityCreateParams::Trust::Trustee::Individual, Increase::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(structure:, individual: nil); end

          sig do
            override
              .returns(
                {
                  structure: Increase::Models::EntityCreateParams::Trust::Trustee::Structure::OrSymbol,
                  individual: Increase::Models::EntityCreateParams::Trust::Trustee::Individual
                }
              )
          end
          def to_hash; end

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/structure
          module Structure
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Structure) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::EntityCreateParams::Trust::Trustee::Structure::TaggedSymbol) }

            # The trustee is an individual.
            INDIVIDUAL =
              T.let(:individual, Increase::Models::EntityCreateParams::Trust::Trustee::Structure::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::EntityCreateParams::Trust::Trustee::Structure::TaggedSymbol]) }
            def self.values; end
          end

          class Individual < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address
            sig { returns(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address) }
            attr_reader :address

            sig do
              params(
                address: T.any(
                  Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :address

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/date_of_birth
            sig { returns(Date) }
            attr_accessor :date_of_birth

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification
            sig { returns(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification) }
            attr_reader :identification

            sig do
              params(
                identification: T.any(
                  Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :identification

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/name
            sig { returns(String) }
            attr_accessor :name

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/confirmed_no_us_tax_id
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :confirmed_no_us_tax_id

            sig { params(confirmed_no_us_tax_id: T::Boolean).void }
            attr_writer :confirmed_no_us_tax_id

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual
            sig do
              params(
                address: T.any(
                  Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address,
                  Increase::Internal::AnyHash
                ),
                date_of_birth: Date,
                identification: T.any(
                  Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
                  Increase::Internal::AnyHash
                ),
                name: String,
                confirmed_no_us_tax_id: T::Boolean
              )
                .returns(T.attached_class)
            end
            def self.new(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil); end

            sig do
              override
                .returns(
                  {
                    address: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address,
                    date_of_birth: Date,
                    identification: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
                    name: String,
                    confirmed_no_us_tax_id: T::Boolean
                  }
                )
            end
            def to_hash; end

            class Address < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/city
              sig { returns(String) }
              attr_accessor :city

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/line1
              sig { returns(String) }
              attr_accessor :line1

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/state
              sig { returns(String) }
              attr_accessor :state

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/zip
              sig { returns(String) }
              attr_accessor :zip

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address/properties/line2
              sig { returns(T.nilable(String)) }
              attr_reader :line2

              sig { params(line2: String).void }
              attr_writer :line2

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/address
              sig do
                params(
                  city: String,
                  line1: String,
                  state: String,
                  zip: String,
                  line2: String
                ).returns(T.attached_class)
              end
              def self.new(city:, line1:, state:, zip:, line2: nil); end

              sig do
                override.returns({city: String, line1: String, state: String, zip: String, line2: String})
              end
              def to_hash; end
            end

            class Identification < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/method
              sig do
                returns(
                  Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::OrSymbol
                )
              end
              attr_accessor :method_

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/number
              sig { returns(String) }
              attr_accessor :number

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license
              sig do
                returns(
                  T.nilable(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense
                  )
                )
              end
              attr_reader :drivers_license

              sig do
                params(
                  drivers_license: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
                    Increase::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :drivers_license

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other
              sig do
                returns(
                  T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other)
                )
              end
              attr_reader :other

              sig do
                params(
                  other: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
                    Increase::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :other

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport
              sig do
                returns(
                  T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport)
                )
              end
              attr_reader :passport

              sig do
                params(
                  passport: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport,
                    Increase::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :passport

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification
              sig do
                params(
                  method_: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::OrSymbol,
                  number: String,
                  drivers_license: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
                    Increase::Internal::AnyHash
                  ),
                  other: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
                    Increase::Internal::AnyHash
                  ),
                  passport: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport,
                    Increase::Internal::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(method_:, number:, drivers_license: nil, other: nil, passport: nil); end

              sig do
                override
                  .returns(
                    {
                      method_: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::OrSymbol,
                      number: String,
                      drivers_license: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
                      other: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
                      passport: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport
                    }
                  )
              end
              def to_hash; end

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/method
              module Method
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                    )
                  end

                # A social security number.
                SOCIAL_SECURITY_NUMBER =
                  T.let(
                    :social_security_number,
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                # An individual taxpayer identification number (ITIN).
                INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                  T.let(
                    :individual_taxpayer_identification_number,
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                # A passport number.
                PASSPORT =
                  T.let(
                    :passport,
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                # A driver's license number.
                DRIVERS_LICENSE =
                  T.let(
                    :drivers_license,
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                # Another identifying document.
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::TaggedSymbol]
                    )
                end
                def self.values; end
              end

              class DriversLicense < Increase::Internal::Type::BaseModel
                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license/properties/expiration_date
                sig { returns(Date) }
                attr_accessor :expiration_date

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license/properties/file_id
                sig { returns(String) }
                attr_accessor :file_id

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license/properties/state
                sig { returns(String) }
                attr_accessor :state

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license/properties/back_file_id
                sig { returns(T.nilable(String)) }
                attr_reader :back_file_id

                sig { params(back_file_id: String).void }
                attr_writer :back_file_id

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/drivers_license
                sig do
                  params(expiration_date: Date, file_id: String, state: String, back_file_id: String)
                    .returns(T.attached_class)
                end
                def self.new(expiration_date:, file_id:, state:, back_file_id: nil); end

                sig do
                  override.returns(
                    {
                      expiration_date: Date,
                      file_id: String,
                      state: String,
                      back_file_id: String
                    }
                  )
                end
                def to_hash; end
              end

              class Other < Increase::Internal::Type::BaseModel
                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/country
                sig { returns(String) }
                attr_accessor :country

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/description
                sig { returns(String) }
                attr_accessor :description

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/file_id
                sig { returns(String) }
                attr_accessor :file_id

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/back_file_id
                sig { returns(T.nilable(String)) }
                attr_reader :back_file_id

                sig { params(back_file_id: String).void }
                attr_writer :back_file_id

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other/properties/expiration_date
                sig { returns(T.nilable(Date)) }
                attr_reader :expiration_date

                sig { params(expiration_date: Date).void }
                attr_writer :expiration_date

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/other
                sig do
                  params(
                    country: String,
                    description: String,
                    file_id: String,
                    back_file_id: String,
                    expiration_date: Date
                  )
                    .returns(T.attached_class)
                end
                def self.new(country:, description:, file_id:, back_file_id: nil, expiration_date: nil); end

                sig do
                  override
                    .returns(
                      {
                        country: String,
                        description: String,
                        file_id: String,
                        back_file_id: String,
                        expiration_date: Date
                      }
                    )
                end
                def to_hash; end
              end

              class Passport < Increase::Internal::Type::BaseModel
                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport/properties/country
                sig { returns(String) }
                attr_accessor :country

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport/properties/expiration_date
                sig { returns(Date) }
                attr_accessor :expiration_date

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport/properties/file_id
                sig { returns(String) }
                attr_accessor :file_id

                # #/components/schemas/create_an_entity_parameters/properties/trust/properties/trustees/items/properties/individual/properties/identification/properties/passport
                sig do
                  params(country: String, expiration_date: Date, file_id: String).returns(T.attached_class)
                end
                def self.new(country:, expiration_date:, file_id:); end

                sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
                def to_hash; end
              end
            end
          end
        end

        class Grantor < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address
          sig { returns(Increase::Models::EntityCreateParams::Trust::Grantor::Address) }
          attr_reader :address

          sig do
            params(
              address: T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Address, Increase::Internal::AnyHash)
            )
              .void
          end
          attr_writer :address

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/date_of_birth
          sig { returns(Date) }
          attr_accessor :date_of_birth

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification
          sig { returns(Increase::Models::EntityCreateParams::Trust::Grantor::Identification) }
          attr_reader :identification

          sig do
            params(
              identification: T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Identification, Increase::Internal::AnyHash)
            )
              .void
          end
          attr_writer :identification

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/confirmed_no_us_tax_id
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :confirmed_no_us_tax_id

          sig { params(confirmed_no_us_tax_id: T::Boolean).void }
          attr_writer :confirmed_no_us_tax_id

          # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor
          sig do
            params(
              address: T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Address, Increase::Internal::AnyHash),
              date_of_birth: Date,
              identification: T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Identification, Increase::Internal::AnyHash),
              name: String,
              confirmed_no_us_tax_id: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil); end

          sig do
            override
              .returns(
                {
                  address: Increase::Models::EntityCreateParams::Trust::Grantor::Address,
                  date_of_birth: Date,
                  identification: Increase::Models::EntityCreateParams::Trust::Grantor::Identification,
                  name: String,
                  confirmed_no_us_tax_id: T::Boolean
                }
              )
          end
          def to_hash; end

          class Address < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/city
            sig { returns(String) }
            attr_accessor :city

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/line1
            sig { returns(String) }
            attr_accessor :line1

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/state
            sig { returns(String) }
            attr_accessor :state

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/zip
            sig { returns(String) }
            attr_accessor :zip

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address/properties/line2
            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/address
            sig do
              params(
                city: String,
                line1: String,
                state: String,
                zip: String,
                line2: String
              ).returns(T.attached_class)
            end
            def self.new(city:, line1:, state:, zip:, line2: nil); end

            sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
            def to_hash; end
          end

          class Identification < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/method
            sig { returns(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::OrSymbol) }
            attr_accessor :method_

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/number
            sig { returns(String) }
            attr_accessor :number

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense)) }
            attr_reader :drivers_license

            sig do
              params(
                drivers_license: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :drivers_license

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other)) }
            attr_reader :other

            sig do
              params(
                other: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :other

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport)) }
            attr_reader :passport

            sig do
              params(
                passport: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :passport

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification
            sig do
              params(
                method_: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::OrSymbol,
                number: String,
                drivers_license: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                  Increase::Internal::AnyHash
                ),
                other: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                  Increase::Internal::AnyHash
                ),
                passport: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport,
                  Increase::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(method_:, number:, drivers_license: nil, other: nil, passport: nil); end

            sig do
              override
                .returns(
                  {
                    method_: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::OrSymbol,
                    number: String,
                    drivers_license: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                    other: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                    passport: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport
                  }
                )
            end
            def to_hash; end

            # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/method
            module Method
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol
                  )
                end

              # A social security number.
              SOCIAL_SECURITY_NUMBER =
                T.let(
                  :social_security_number,
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol
                )

              # An individual taxpayer identification number (ITIN).
              INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                T.let(
                  :individual_taxpayer_identification_number,
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol
                )

              # A passport number.
              PASSPORT =
                T.let(
                  :passport,
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol
                )

              # A driver's license number.
              DRIVERS_LICENSE =
                T.let(
                  :drivers_license,
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol
                )

              # Another identifying document.
              OTHER =
                T.let(:other, Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class DriversLicense < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license/properties/expiration_date
              sig { returns(Date) }
              attr_accessor :expiration_date

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license/properties/state
              sig { returns(String) }
              attr_accessor :state

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license/properties/back_file_id
              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/drivers_license
              sig do
                params(expiration_date: Date, file_id: String, state: String, back_file_id: String)
                  .returns(T.attached_class)
              end
              def self.new(expiration_date:, file_id:, state:, back_file_id: nil); end

              sig do
                override.returns(
                  {
                    expiration_date: Date,
                    file_id: String,
                    state: String,
                    back_file_id: String
                  }
                )
              end
              def to_hash; end
            end

            class Other < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/country
              sig { returns(String) }
              attr_accessor :country

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/description
              sig { returns(String) }
              attr_accessor :description

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/back_file_id
              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other/properties/expiration_date
              sig { returns(T.nilable(Date)) }
              attr_reader :expiration_date

              sig { params(expiration_date: Date).void }
              attr_writer :expiration_date

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/other
              sig do
                params(
                  country: String,
                  description: String,
                  file_id: String,
                  back_file_id: String,
                  expiration_date: Date
                )
                  .returns(T.attached_class)
              end
              def self.new(country:, description:, file_id:, back_file_id: nil, expiration_date: nil); end

              sig do
                override
                  .returns(
                    {
                      country: String,
                      description: String,
                      file_id: String,
                      back_file_id: String,
                      expiration_date: Date
                    }
                  )
              end
              def to_hash; end
            end

            class Passport < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport/properties/country
              sig { returns(String) }
              attr_accessor :country

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport/properties/expiration_date
              sig { returns(Date) }
              attr_accessor :expiration_date

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_an_entity_parameters/properties/trust/properties/grantor/properties/identification/properties/passport
              sig do
                params(country: String, expiration_date: Date, file_id: String).returns(T.attached_class)
              end
              def self.new(country:, expiration_date:, file_id:); end

              sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
              def to_hash; end
            end
          end
        end
      end
    end
  end
end
