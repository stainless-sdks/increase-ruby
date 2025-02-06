# typed: strong

module Increase
  module Models
    class EntityCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :structure

      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Corporation)) }
      attr_reader :corporation

      sig { params(corporation: Increase::Models::EntityCreateParams::Corporation).void }
      attr_writer :corporation

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Increase::Models::EntityCreateParams::GovernmentAuthority)) }
      attr_reader :government_authority

      sig { params(government_authority: Increase::Models::EntityCreateParams::GovernmentAuthority).void }
      attr_writer :government_authority

      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Joint)) }
      attr_reader :joint

      sig { params(joint: Increase::Models::EntityCreateParams::Joint).void }
      attr_writer :joint

      sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson)) }
      attr_reader :natural_person

      sig { params(natural_person: Increase::Models::EntityCreateParams::NaturalPerson).void }
      attr_writer :natural_person

      sig { returns(T.nilable(T::Array[Increase::Models::EntityCreateParams::SupplementalDocument])) }
      attr_reader :supplemental_documents

      sig do
        params(supplemental_documents: T::Array[Increase::Models::EntityCreateParams::SupplementalDocument]).void
      end
      attr_writer :supplemental_documents

      sig { returns(T.nilable(Increase::Models::EntityCreateParams::ThirdPartyVerification)) }
      attr_reader :third_party_verification

      sig do
        params(third_party_verification: Increase::Models::EntityCreateParams::ThirdPartyVerification).void
      end
      attr_writer :third_party_verification

      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust)) }
      attr_reader :trust

      sig { params(trust: Increase::Models::EntityCreateParams::Trust).void }
      attr_writer :trust

      sig do
        params(
          structure: Symbol,
          corporation: Increase::Models::EntityCreateParams::Corporation,
          description: String,
          government_authority: Increase::Models::EntityCreateParams::GovernmentAuthority,
          joint: Increase::Models::EntityCreateParams::Joint,
          natural_person: Increase::Models::EntityCreateParams::NaturalPerson,
          supplemental_documents: T::Array[Increase::Models::EntityCreateParams::SupplementalDocument],
          third_party_verification: Increase::Models::EntityCreateParams::ThirdPartyVerification,
          trust: Increase::Models::EntityCreateParams::Trust,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
      )
      end

      sig do
        override.returns(
          {
            structure: Symbol,
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
      def to_hash
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

      class Corporation < Increase::BaseModel
        sig { returns(Increase::Models::EntityCreateParams::Corporation::Address) }
        attr_accessor :address

        sig { returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner]) }
        attr_accessor :beneficial_owners

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :tax_identifier

        sig { returns(T.nilable(String)) }
        attr_reader :incorporation_state

        sig { params(incorporation_state: String).void }
        attr_writer :incorporation_state

        sig { returns(T.nilable(String)) }
        attr_reader :industry_code

        sig { params(industry_code: String).void }
        attr_writer :industry_code

        sig { returns(T.nilable(String)) }
        attr_reader :website

        sig { params(website: String).void }
        attr_writer :website

        sig do
          params(
            address: Increase::Models::EntityCreateParams::Corporation::Address,
            beneficial_owners: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner],
            name: String,
            tax_identifier: String,
            incorporation_state: String,
            industry_code: String,
            website: String
          ).void
        end
        def initialize(
          address:,
          beneficial_owners:,
          name:,
          tax_identifier:,
          incorporation_state: nil,
          industry_code: nil,
          website: nil
        )
        end

        sig do
          override.returns(
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
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :line1

          sig { returns(String) }
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zip

          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
          def initialize(city:, line1:, state:, zip:, line2: nil)
          end

          sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
          def to_hash
          end
        end

        class BeneficialOwner < Increase::BaseModel
          sig { returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual) }
          attr_accessor :individual

          sig { returns(T::Array[Symbol]) }
          attr_accessor :prongs

          sig { returns(T.nilable(String)) }
          attr_reader :company_title

          sig { params(company_title: String).void }
          attr_writer :company_title

          sig do
            params(
              individual: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
              prongs: T::Array[Symbol],
              company_title: String
            ).void
          end
          def initialize(individual:, prongs:, company_title: nil)
          end

          sig do
            override.returns(
              {
                individual: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual, prongs: T::Array[Symbol], company_title: String
              }
            )
          end
          def to_hash
          end

          class Individual < Increase::BaseModel
            sig do
              returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address)
            end
            attr_accessor :address

            sig { returns(Date) }
            attr_accessor :date_of_birth

            sig do
              returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification)
            end
            attr_accessor :identification

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :confirmed_no_us_tax_id

            sig { params(confirmed_no_us_tax_id: T::Boolean).void }
            attr_writer :confirmed_no_us_tax_id

            sig do
              params(
                address: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
                date_of_birth: Date,
                identification: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
                name: String,
                confirmed_no_us_tax_id: T::Boolean
              ).void
            end
            def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil)
            end

            sig do
              override.returns(
                {
                  address: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address, date_of_birth: Date, identification: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification, name: String, confirmed_no_us_tax_id: T::Boolean
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

              sig { returns(String) }
              attr_accessor :state

              sig { returns(String) }
              attr_accessor :zip

              sig { returns(T.nilable(String)) }
              attr_reader :line2

              sig { params(line2: String).void }
              attr_writer :line2

              sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
              def initialize(city:, line1:, state:, zip:, line2: nil)
              end

              sig do
                override.returns({city: String, line1: String, state: String, zip: String, line2: String})
              end
              def to_hash
              end
            end

            class Identification < Increase::BaseModel
              sig { returns(Symbol) }
              attr_accessor :method_

              sig { returns(String) }
              attr_accessor :number

              sig do
                returns(T.nilable(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense))
              end
              attr_reader :drivers_license

              sig do
                params(
                  drivers_license: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense
                ).void
              end
              attr_writer :drivers_license

              sig do
                returns(T.nilable(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other))
              end
              attr_reader :other

              sig do
                params(
                  other: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other
                ).void
              end
              attr_writer :other

              sig do
                returns(T.nilable(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport))
              end
              attr_reader :passport

              sig do
                params(
                  passport: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport
                ).void
              end
              attr_writer :passport

              sig do
                params(
                  method_: Symbol,
                  number: String,
                  drivers_license: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
                  other: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
                  passport: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport
                ).void
              end
              def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil)
              end

              sig do
                override.returns(
                  {
                    method_: Symbol,
                    number: String,
                    drivers_license: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
                    other: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
                    passport: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport
                  }
                )
              end
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

              class DriversLicense < Increase::BaseModel
                sig { returns(Date) }
                attr_accessor :expiration_date

                sig { returns(String) }
                attr_accessor :file_id

                sig { returns(String) }
                attr_accessor :state

                sig { returns(T.nilable(String)) }
                attr_reader :back_file_id

                sig { params(back_file_id: String).void }
                attr_writer :back_file_id

                sig do
                  params(expiration_date: Date, file_id: String, state: String, back_file_id: String).void
                end
                def initialize(expiration_date:, file_id:, state:, back_file_id: nil)
                end

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
                def to_hash
                end
              end

              class Other < Increase::BaseModel
                sig { returns(String) }
                attr_accessor :country

                sig { returns(String) }
                attr_accessor :description

                sig { returns(String) }
                attr_accessor :file_id

                sig { returns(T.nilable(String)) }
                attr_reader :back_file_id

                sig { params(back_file_id: String).void }
                attr_writer :back_file_id

                sig { returns(T.nilable(Date)) }
                attr_reader :expiration_date

                sig { params(expiration_date: Date).void }
                attr_writer :expiration_date

                sig do
                  params(
                    country: String,
                    description: String,
                    file_id: String,
                    back_file_id: String,
                    expiration_date: Date
                  ).void
                end
                def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil)
                end

                sig do
                  override.returns(
                    {
                      country: String,
                      description: String,
                      file_id: String,
                      back_file_id: String,
                      expiration_date: Date
                    }
                  )
                end
                def to_hash
                end
              end

              class Passport < Increase::BaseModel
                sig { returns(String) }
                attr_accessor :country

                sig { returns(Date) }
                attr_accessor :expiration_date

                sig { returns(String) }
                attr_accessor :file_id

                sig { params(country: String, expiration_date: Date, file_id: String).void }
                def initialize(country:, expiration_date:, file_id:)
                end

                sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
                def to_hash
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
        sig { returns(Increase::Models::EntityCreateParams::GovernmentAuthority::Address) }
        attr_accessor :address

        sig { returns(T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson]) }
        attr_accessor :authorized_persons

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :tax_identifier

        sig { returns(T.nilable(String)) }
        attr_reader :website

        sig { params(website: String).void }
        attr_writer :website

        sig do
          params(
            address: Increase::Models::EntityCreateParams::GovernmentAuthority::Address,
            authorized_persons: T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson],
            category: Symbol,
            name: String,
            tax_identifier: String,
            website: String
          ).void
        end
        def initialize(address:, authorized_persons:, category:, name:, tax_identifier:, website: nil)
        end

        sig do
          override.returns(
            {
              address: Increase::Models::EntityCreateParams::GovernmentAuthority::Address,
              authorized_persons: T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson],
              category: Symbol,
              name: String,
              tax_identifier: String,
              website: String
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

          sig { returns(String) }
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zip

          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
          def initialize(city:, line1:, state:, zip:, line2: nil)
          end

          sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
          def to_hash
          end
        end

        class AuthorizedPerson < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :name

          sig { params(name: String).void }
          def initialize(name:)
          end

          sig { override.returns({name: String}) }
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
        sig { returns(T::Array[Increase::Models::EntityCreateParams::Joint::Individual]) }
        attr_accessor :individuals

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            individuals: T::Array[Increase::Models::EntityCreateParams::Joint::Individual],
            name: String
          ).void
        end
        def initialize(individuals:, name: nil)
        end

        sig do
          override.returns(
            {
              individuals: T::Array[Increase::Models::EntityCreateParams::Joint::Individual],
              name: String
            }
          )
        end
        def to_hash
        end

        class Individual < Increase::BaseModel
          sig { returns(Increase::Models::EntityCreateParams::Joint::Individual::Address) }
          attr_accessor :address

          sig { returns(Date) }
          attr_accessor :date_of_birth

          sig { returns(Increase::Models::EntityCreateParams::Joint::Individual::Identification) }
          attr_accessor :identification

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :confirmed_no_us_tax_id

          sig { params(confirmed_no_us_tax_id: T::Boolean).void }
          attr_writer :confirmed_no_us_tax_id

          sig do
            params(
              address: Increase::Models::EntityCreateParams::Joint::Individual::Address,
              date_of_birth: Date,
              identification: Increase::Models::EntityCreateParams::Joint::Individual::Identification,
              name: String,
              confirmed_no_us_tax_id: T::Boolean
            ).void
          end
          def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil)
          end

          sig do
            override.returns(
              {
                address: Increase::Models::EntityCreateParams::Joint::Individual::Address,
                date_of_birth: Date,
                identification: Increase::Models::EntityCreateParams::Joint::Individual::Identification,
                name: String,
                confirmed_no_us_tax_id: T::Boolean
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

            sig { returns(String) }
            attr_accessor :state

            sig { returns(String) }
            attr_accessor :zip

            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
            def initialize(city:, line1:, state:, zip:, line2: nil)
            end

            sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
            def to_hash
            end
          end

          class Identification < Increase::BaseModel
            sig { returns(Symbol) }
            attr_accessor :method_

            sig { returns(String) }
            attr_accessor :number

            sig do
              returns(T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense))
            end
            attr_reader :drivers_license

            sig do
              params(
                drivers_license: Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense
              ).void
            end
            attr_writer :drivers_license

            sig do
              returns(T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other))
            end
            attr_reader :other

            sig do
              params(other: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other).void
            end
            attr_writer :other

            sig do
              returns(T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport))
            end
            attr_reader :passport

            sig do
              params(passport: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport).void
            end
            attr_writer :passport

            sig do
              params(
                method_: Symbol,
                number: String,
                drivers_license: Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                other: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                passport: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport
              ).void
            end
            def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil)
            end

            sig do
              override.returns(
                {
                  method_: Symbol,
                  number: String,
                  drivers_license: Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                  other: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                  passport: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport
                }
              )
            end
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

            class DriversLicense < Increase::BaseModel
              sig { returns(Date) }
              attr_accessor :expiration_date

              sig { returns(String) }
              attr_accessor :file_id

              sig { returns(String) }
              attr_accessor :state

              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              sig { params(expiration_date: Date, file_id: String, state: String, back_file_id: String).void }
              def initialize(expiration_date:, file_id:, state:, back_file_id: nil)
              end

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
              def to_hash
              end
            end

            class Other < Increase::BaseModel
              sig { returns(String) }
              attr_accessor :country

              sig { returns(String) }
              attr_accessor :description

              sig { returns(String) }
              attr_accessor :file_id

              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              sig { returns(T.nilable(Date)) }
              attr_reader :expiration_date

              sig { params(expiration_date: Date).void }
              attr_writer :expiration_date

              sig do
                params(
                  country: String,
                  description: String,
                  file_id: String,
                  back_file_id: String,
                  expiration_date: Date
                ).void
              end
              def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil)
              end

              sig do
                override.returns(
                  {
                    country: String,
                    description: String,
                    file_id: String,
                    back_file_id: String,
                    expiration_date: Date
                  }
                )
              end
              def to_hash
              end
            end

            class Passport < Increase::BaseModel
              sig { returns(String) }
              attr_accessor :country

              sig { returns(Date) }
              attr_accessor :expiration_date

              sig { returns(String) }
              attr_accessor :file_id

              sig { params(country: String, expiration_date: Date, file_id: String).void }
              def initialize(country:, expiration_date:, file_id:)
              end

              sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
              def to_hash
              end
            end
          end
        end
      end

      class NaturalPerson < Increase::BaseModel
        sig { returns(Increase::Models::EntityCreateParams::NaturalPerson::Address) }
        attr_accessor :address

        sig { returns(Date) }
        attr_accessor :date_of_birth

        sig { returns(Increase::Models::EntityCreateParams::NaturalPerson::Identification) }
        attr_accessor :identification

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :confirmed_no_us_tax_id

        sig { params(confirmed_no_us_tax_id: T::Boolean).void }
        attr_writer :confirmed_no_us_tax_id

        sig do
          params(
            address: Increase::Models::EntityCreateParams::NaturalPerson::Address,
            date_of_birth: Date,
            identification: Increase::Models::EntityCreateParams::NaturalPerson::Identification,
            name: String,
            confirmed_no_us_tax_id: T::Boolean
          ).void
        end
        def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil)
        end

        sig do
          override.returns(
            {
              address: Increase::Models::EntityCreateParams::NaturalPerson::Address,
              date_of_birth: Date,
              identification: Increase::Models::EntityCreateParams::NaturalPerson::Identification,
              name: String,
              confirmed_no_us_tax_id: T::Boolean
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

          sig { returns(String) }
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zip

          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
          def initialize(city:, line1:, state:, zip:, line2: nil)
          end

          sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
          def to_hash
          end
        end

        class Identification < Increase::BaseModel
          sig { returns(Symbol) }
          attr_accessor :method_

          sig { returns(String) }
          attr_accessor :number

          sig do
            returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense))
          end
          attr_reader :drivers_license

          sig do
            params(
              drivers_license: Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense
            ).void
          end
          attr_writer :drivers_license

          sig do
            returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other))
          end
          attr_reader :other

          sig do
            params(other: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other).void
          end
          attr_writer :other

          sig do
            returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport))
          end
          attr_reader :passport

          sig do
            params(passport: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport).void
          end
          attr_writer :passport

          sig do
            params(
              method_: Symbol,
              number: String,
              drivers_license: Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
              other: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other,
              passport: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport
            ).void
          end
          def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil)
          end

          sig do
            override.returns(
              {
                method_: Symbol,
                number: String,
                drivers_license: Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
                other: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other,
                passport: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport
              }
            )
          end
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

          class DriversLicense < Increase::BaseModel
            sig { returns(Date) }
            attr_accessor :expiration_date

            sig { returns(String) }
            attr_accessor :file_id

            sig { returns(String) }
            attr_accessor :state

            sig { returns(T.nilable(String)) }
            attr_reader :back_file_id

            sig { params(back_file_id: String).void }
            attr_writer :back_file_id

            sig { params(expiration_date: Date, file_id: String, state: String, back_file_id: String).void }
            def initialize(expiration_date:, file_id:, state:, back_file_id: nil)
            end

            sig do
              override.returns({expiration_date: Date, file_id: String, state: String, back_file_id: String})
            end
            def to_hash
            end
          end

          class Other < Increase::BaseModel
            sig { returns(String) }
            attr_accessor :country

            sig { returns(String) }
            attr_accessor :description

            sig { returns(String) }
            attr_accessor :file_id

            sig { returns(T.nilable(String)) }
            attr_reader :back_file_id

            sig { params(back_file_id: String).void }
            attr_writer :back_file_id

            sig { returns(T.nilable(Date)) }
            attr_reader :expiration_date

            sig { params(expiration_date: Date).void }
            attr_writer :expiration_date

            sig do
              params(
                country: String,
                description: String,
                file_id: String,
                back_file_id: String,
                expiration_date: Date
              ).void
            end
            def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil)
            end

            sig do
              override.returns(
                {
                  country: String,
                  description: String,
                  file_id: String,
                  back_file_id: String,
                  expiration_date: Date
                }
              )
            end
            def to_hash
            end
          end

          class Passport < Increase::BaseModel
            sig { returns(String) }
            attr_accessor :country

            sig { returns(Date) }
            attr_accessor :expiration_date

            sig { returns(String) }
            attr_accessor :file_id

            sig { params(country: String, expiration_date: Date, file_id: String).void }
            def initialize(country:, expiration_date:, file_id:)
            end

            sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
            def to_hash
            end
          end
        end
      end

      class SupplementalDocument < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :file_id

        sig { params(file_id: String).void }
        def initialize(file_id:)
        end

        sig { override.returns({file_id: String}) }
        def to_hash
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
        sig { returns(Increase::Models::EntityCreateParams::Trust::Address) }
        attr_accessor :address

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[Increase::Models::EntityCreateParams::Trust::Trustee]) }
        attr_accessor :trustees

        sig { returns(T.nilable(String)) }
        attr_reader :formation_document_file_id

        sig { params(formation_document_file_id: String).void }
        attr_writer :formation_document_file_id

        sig { returns(T.nilable(String)) }
        attr_reader :formation_state

        sig { params(formation_state: String).void }
        attr_writer :formation_state

        sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor)) }
        attr_reader :grantor

        sig { params(grantor: Increase::Models::EntityCreateParams::Trust::Grantor).void }
        attr_writer :grantor

        sig { returns(T.nilable(String)) }
        attr_reader :tax_identifier

        sig { params(tax_identifier: String).void }
        attr_writer :tax_identifier

        sig do
          params(
            address: Increase::Models::EntityCreateParams::Trust::Address,
            category: Symbol,
            name: String,
            trustees: T::Array[Increase::Models::EntityCreateParams::Trust::Trustee],
            formation_document_file_id: String,
            formation_state: String,
            grantor: Increase::Models::EntityCreateParams::Trust::Grantor,
            tax_identifier: String
          ).void
        end
        def initialize(
          address:,
          category:,
          name:,
          trustees:,
          formation_document_file_id: nil,
          formation_state: nil,
          grantor: nil,
          tax_identifier: nil
        )
        end

        sig do
          override.returns(
            {
              address: Increase::Models::EntityCreateParams::Trust::Address,
              category: Symbol,
              name: String,
              trustees: T::Array[Increase::Models::EntityCreateParams::Trust::Trustee],
              formation_document_file_id: String,
              formation_state: String,
              grantor: Increase::Models::EntityCreateParams::Trust::Grantor,
              tax_identifier: String
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

          sig { returns(String) }
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zip

          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
          def initialize(city:, line1:, state:, zip:, line2: nil)
          end

          sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
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

        class Trustee < Increase::BaseModel
          sig { returns(Symbol) }
          attr_accessor :structure

          sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual)) }
          attr_reader :individual

          sig { params(individual: Increase::Models::EntityCreateParams::Trust::Trustee::Individual).void }
          attr_writer :individual

          sig do
            params(
              structure: Symbol,
              individual: Increase::Models::EntityCreateParams::Trust::Trustee::Individual
            ).void
          end
          def initialize(structure:, individual: nil)
          end

          sig do
            override.returns(
              {
                structure: Symbol,
                individual: Increase::Models::EntityCreateParams::Trust::Trustee::Individual
              }
            )
          end
          def to_hash
          end

          class Structure < Increase::Enum
            abstract!

            # The trustee is an individual.
            INDIVIDUAL = :individual

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Individual < Increase::BaseModel
            sig { returns(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address) }
            attr_accessor :address

            sig { returns(Date) }
            attr_accessor :date_of_birth

            sig { returns(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification) }
            attr_accessor :identification

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :confirmed_no_us_tax_id

            sig { params(confirmed_no_us_tax_id: T::Boolean).void }
            attr_writer :confirmed_no_us_tax_id

            sig do
              params(
                address: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address,
                date_of_birth: Date,
                identification: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
                name: String,
                confirmed_no_us_tax_id: T::Boolean
              ).void
            end
            def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil)
            end

            sig do
              override.returns(
                {
                  address: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address,
                  date_of_birth: Date,
                  identification: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
                  name: String,
                  confirmed_no_us_tax_id: T::Boolean
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

              sig { returns(String) }
              attr_accessor :state

              sig { returns(String) }
              attr_accessor :zip

              sig { returns(T.nilable(String)) }
              attr_reader :line2

              sig { params(line2: String).void }
              attr_writer :line2

              sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
              def initialize(city:, line1:, state:, zip:, line2: nil)
              end

              sig do
                override.returns({city: String, line1: String, state: String, zip: String, line2: String})
              end
              def to_hash
              end
            end

            class Identification < Increase::BaseModel
              sig { returns(Symbol) }
              attr_accessor :method_

              sig { returns(String) }
              attr_accessor :number

              sig do
                returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense))
              end
              attr_reader :drivers_license

              sig do
                params(
                  drivers_license: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense
                ).void
              end
              attr_writer :drivers_license

              sig do
                returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other))
              end
              attr_reader :other

              sig do
                params(other: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other).void
              end
              attr_writer :other

              sig do
                returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport))
              end
              attr_reader :passport

              sig do
                params(
                  passport: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport
                ).void
              end
              attr_writer :passport

              sig do
                params(
                  method_: Symbol,
                  number: String,
                  drivers_license: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
                  other: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
                  passport: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport
                ).void
              end
              def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil)
              end

              sig do
                override.returns(
                  {
                    method_: Symbol,
                    number: String,
                    drivers_license: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
                    other: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
                    passport: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport
                  }
                )
              end
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

              class DriversLicense < Increase::BaseModel
                sig { returns(Date) }
                attr_accessor :expiration_date

                sig { returns(String) }
                attr_accessor :file_id

                sig { returns(String) }
                attr_accessor :state

                sig { returns(T.nilable(String)) }
                attr_reader :back_file_id

                sig { params(back_file_id: String).void }
                attr_writer :back_file_id

                sig do
                  params(expiration_date: Date, file_id: String, state: String, back_file_id: String).void
                end
                def initialize(expiration_date:, file_id:, state:, back_file_id: nil)
                end

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
                def to_hash
                end
              end

              class Other < Increase::BaseModel
                sig { returns(String) }
                attr_accessor :country

                sig { returns(String) }
                attr_accessor :description

                sig { returns(String) }
                attr_accessor :file_id

                sig { returns(T.nilable(String)) }
                attr_reader :back_file_id

                sig { params(back_file_id: String).void }
                attr_writer :back_file_id

                sig { returns(T.nilable(Date)) }
                attr_reader :expiration_date

                sig { params(expiration_date: Date).void }
                attr_writer :expiration_date

                sig do
                  params(
                    country: String,
                    description: String,
                    file_id: String,
                    back_file_id: String,
                    expiration_date: Date
                  ).void
                end
                def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil)
                end

                sig do
                  override.returns(
                    {
                      country: String,
                      description: String,
                      file_id: String,
                      back_file_id: String,
                      expiration_date: Date
                    }
                  )
                end
                def to_hash
                end
              end

              class Passport < Increase::BaseModel
                sig { returns(String) }
                attr_accessor :country

                sig { returns(Date) }
                attr_accessor :expiration_date

                sig { returns(String) }
                attr_accessor :file_id

                sig { params(country: String, expiration_date: Date, file_id: String).void }
                def initialize(country:, expiration_date:, file_id:)
                end

                sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
                def to_hash
                end
              end
            end
          end
        end

        class Grantor < Increase::BaseModel
          sig { returns(Increase::Models::EntityCreateParams::Trust::Grantor::Address) }
          attr_accessor :address

          sig { returns(Date) }
          attr_accessor :date_of_birth

          sig { returns(Increase::Models::EntityCreateParams::Trust::Grantor::Identification) }
          attr_accessor :identification

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :confirmed_no_us_tax_id

          sig { params(confirmed_no_us_tax_id: T::Boolean).void }
          attr_writer :confirmed_no_us_tax_id

          sig do
            params(
              address: Increase::Models::EntityCreateParams::Trust::Grantor::Address,
              date_of_birth: Date,
              identification: Increase::Models::EntityCreateParams::Trust::Grantor::Identification,
              name: String,
              confirmed_no_us_tax_id: T::Boolean
            ).void
          end
          def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil)
          end

          sig do
            override.returns(
              {
                address: Increase::Models::EntityCreateParams::Trust::Grantor::Address,
                date_of_birth: Date,
                identification: Increase::Models::EntityCreateParams::Trust::Grantor::Identification,
                name: String,
                confirmed_no_us_tax_id: T::Boolean
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

            sig { returns(String) }
            attr_accessor :state

            sig { returns(String) }
            attr_accessor :zip

            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            sig { params(city: String, line1: String, state: String, zip: String, line2: String).void }
            def initialize(city:, line1:, state:, zip:, line2: nil)
            end

            sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
            def to_hash
            end
          end

          class Identification < Increase::BaseModel
            sig { returns(Symbol) }
            attr_accessor :method_

            sig { returns(String) }
            attr_accessor :number

            sig do
              returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense))
            end
            attr_reader :drivers_license

            sig do
              params(
                drivers_license: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense
              ).void
            end
            attr_writer :drivers_license

            sig do
              returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other))
            end
            attr_reader :other

            sig do
              params(other: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other).void
            end
            attr_writer :other

            sig do
              returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport))
            end
            attr_reader :passport

            sig do
              params(passport: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport).void
            end
            attr_writer :passport

            sig do
              params(
                method_: Symbol,
                number: String,
                drivers_license: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                other: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                passport: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport
              ).void
            end
            def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil)
            end

            sig do
              override.returns(
                {
                  method_: Symbol,
                  number: String,
                  drivers_license: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                  other: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                  passport: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport
                }
              )
            end
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

            class DriversLicense < Increase::BaseModel
              sig { returns(Date) }
              attr_accessor :expiration_date

              sig { returns(String) }
              attr_accessor :file_id

              sig { returns(String) }
              attr_accessor :state

              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              sig { params(expiration_date: Date, file_id: String, state: String, back_file_id: String).void }
              def initialize(expiration_date:, file_id:, state:, back_file_id: nil)
              end

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
              def to_hash
              end
            end

            class Other < Increase::BaseModel
              sig { returns(String) }
              attr_accessor :country

              sig { returns(String) }
              attr_accessor :description

              sig { returns(String) }
              attr_accessor :file_id

              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              sig { returns(T.nilable(Date)) }
              attr_reader :expiration_date

              sig { params(expiration_date: Date).void }
              attr_writer :expiration_date

              sig do
                params(
                  country: String,
                  description: String,
                  file_id: String,
                  back_file_id: String,
                  expiration_date: Date
                ).void
              end
              def initialize(country:, description:, file_id:, back_file_id: nil, expiration_date: nil)
              end

              sig do
                override.returns(
                  {
                    country: String,
                    description: String,
                    file_id: String,
                    back_file_id: String,
                    expiration_date: Date
                  }
                )
              end
              def to_hash
              end
            end

            class Passport < Increase::BaseModel
              sig { returns(String) }
              attr_accessor :country

              sig { returns(Date) }
              attr_accessor :expiration_date

              sig { returns(String) }
              attr_accessor :file_id

              sig { params(country: String, expiration_date: Date, file_id: String).void }
              def initialize(country:, expiration_date:, file_id:)
              end

              sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
