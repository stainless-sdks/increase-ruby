# typed: strong

module Increase
  module Models
    class EntityCreateBeneficialOwnerParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner) }
      attr_accessor :beneficial_owner

      sig do
        params(
          beneficial_owner: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(beneficial_owner:, request_options: {})
      end

      sig do
        override.returns(
          {
            beneficial_owner: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BeneficialOwner < Increase::BaseModel
        sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual) }
        attr_accessor :individual

        sig { returns(T::Array[Symbol]) }
        attr_accessor :prongs

        sig { returns(T.nilable(String)) }
        attr_reader :company_title

        sig { params(company_title: String).void }
        attr_writer :company_title

        sig do
          params(
            individual: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual,
            prongs: T::Array[Symbol],
            company_title: String
          ).void
        end
        def initialize(individual:, prongs:, company_title: nil)
        end

        sig do
          override.returns(
            {
              individual: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual, prongs: T::Array[Symbol], company_title: String
            }
          )
        end
        def to_hash
        end

        class Individual < Increase::BaseModel
          sig do
            returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address)
          end
          attr_accessor :address

          sig { returns(Date) }
          attr_accessor :date_of_birth

          sig do
            returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification)
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
              address: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address,
              date_of_birth: Date,
              identification: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification,
              name: String,
              confirmed_no_us_tax_id: T::Boolean
            ).void
          end
          def initialize(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil)
          end

          sig do
            override.returns(
              {
                address: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address, date_of_birth: Date, identification: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification, name: String, confirmed_no_us_tax_id: T::Boolean
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
              returns(T.nilable(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense))
            end
            attr_reader :drivers_license

            sig do
              params(
                drivers_license: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense
              ).void
            end
            attr_writer :drivers_license

            sig do
              returns(T.nilable(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other))
            end
            attr_reader :other

            sig do
              params(
                other: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other
              ).void
            end
            attr_writer :other

            sig do
              returns(T.nilable(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport))
            end
            attr_reader :passport

            sig do
              params(
                passport: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport
              ).void
            end
            attr_writer :passport

            sig do
              params(
                method_: Symbol,
                number: String,
                drivers_license: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense,
                other: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other,
                passport: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport
              ).void
            end
            def initialize(method_:, number:, drivers_license: nil, other: nil, passport: nil)
            end

            sig do
              override.returns(
                {
                  method_: Symbol,
                  number: String,
                  drivers_license: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense,
                  other: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other,
                  passport: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport
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
  end
end
