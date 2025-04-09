# typed: strong

module Increase
  module Models
    class EntityCreateBeneficialOwnerParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner
      sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner) }
      attr_reader :beneficial_owner

      sig do
        params(
          beneficial_owner: T.any(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :beneficial_owner

      sig do
        params(
          beneficial_owner: T.any(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(beneficial_owner:, request_options: {}); end

      sig do
        override
          .returns(
            {
              beneficial_owner: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class BeneficialOwner < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual
        sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual) }
        attr_reader :individual

        sig do
          params(
            individual: T.any(
              Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual,
              Increase::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :individual

        # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/prongs
        sig { returns(T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::OrSymbol]) }
        attr_accessor :prongs

        # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/company_title
        sig { returns(T.nilable(String)) }
        attr_reader :company_title

        sig { params(company_title: String).void }
        attr_writer :company_title

        # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner
        sig do
          params(
            individual: T.any(
              Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual,
              Increase::Internal::AnyHash
            ),
            prongs: T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::OrSymbol],
            company_title: String
          )
            .returns(T.attached_class)
        end
        def self.new(individual:, prongs:, company_title: nil); end

        sig do
          override
            .returns(
              {
                individual: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual,
                prongs: T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::OrSymbol],
                company_title: String
              }
            )
        end
        def to_hash; end

        class Individual < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address
          sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address) }
          attr_reader :address

          sig do
            params(
              address: T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :address

          # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/date_of_birth
          sig { returns(Date) }
          attr_accessor :date_of_birth

          # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification
          sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification) }
          attr_reader :identification

          sig do
            params(
              identification: T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :identification

          # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/confirmed_no_us_tax_id
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :confirmed_no_us_tax_id

          sig { params(confirmed_no_us_tax_id: T::Boolean).void }
          attr_writer :confirmed_no_us_tax_id

          # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual
          sig do
            params(
              address: T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address,
                Increase::Internal::AnyHash
              ),
              date_of_birth: Date,
              identification: T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification,
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
                  address: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address,
                  date_of_birth: Date,
                  identification: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification,
                  name: String,
                  confirmed_no_us_tax_id: T::Boolean
                }
              )
          end
          def to_hash; end

          class Address < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/country
            sig { returns(String) }
            attr_accessor :country

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/line1
            sig { returns(String) }
            attr_accessor :line1

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/city
            sig { returns(T.nilable(String)) }
            attr_reader :city

            sig { params(city: String).void }
            attr_writer :city

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/line2
            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/state
            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address/properties/zip
            sig { returns(T.nilable(String)) }
            attr_reader :zip

            sig { params(zip: String).void }
            attr_writer :zip

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/address
            sig do
              params(country: String, line1: String, city: String, line2: String, state: String, zip: String)
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
            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/method
            sig do
              returns(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::OrSymbol
              )
            end
            attr_accessor :method_

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/number
            sig { returns(String) }
            attr_accessor :number

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license
            sig do
              returns(
                T.nilable(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense
                )
              )
            end
            attr_reader :drivers_license

            sig do
              params(
                drivers_license: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :drivers_license

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other
            sig do
              returns(
                T.nilable(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other
                )
              )
            end
            attr_reader :other

            sig do
              params(
                other: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :other

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport
            sig do
              returns(
                T.nilable(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport
                )
              )
            end
            attr_reader :passport

            sig do
              params(
                passport: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :passport

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification
            sig do
              params(
                method_: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::OrSymbol,
                number: String,
                drivers_license: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense,
                  Increase::Internal::AnyHash
                ),
                other: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other,
                  Increase::Internal::AnyHash
                ),
                passport: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport,
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
                    method_: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::OrSymbol,
                    number: String,
                    drivers_license: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense,
                    other: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other,
                    passport: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport
                  }
                )
            end
            def to_hash; end

            # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/method
            module Method
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                  )
                end

              # A social security number.
              SOCIAL_SECURITY_NUMBER =
                T.let(
                  :social_security_number,
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                )

              # An individual taxpayer identification number (ITIN).
              INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =
                T.let(
                  :individual_taxpayer_identification_number,
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                )

              # A passport number.
              PASSPORT =
                T.let(
                  :passport,
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                )

              # A driver's license number.
              DRIVERS_LICENSE =
                T.let(
                  :drivers_license,
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                )

              # Another identifying document.
              OTHER =
                T.let(
                  :other,
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class DriversLicense < Increase::Internal::Type::BaseModel
              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license/properties/expiration_date
              sig { returns(Date) }
              attr_accessor :expiration_date

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license/properties/state
              sig { returns(String) }
              attr_accessor :state

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license/properties/back_file_id
              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/drivers_license
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
              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/country
              sig { returns(String) }
              attr_accessor :country

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/description
              sig { returns(String) }
              attr_accessor :description

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/back_file_id
              sig { returns(T.nilable(String)) }
              attr_reader :back_file_id

              sig { params(back_file_id: String).void }
              attr_writer :back_file_id

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other/properties/expiration_date
              sig { returns(T.nilable(Date)) }
              attr_reader :expiration_date

              sig { params(expiration_date: Date).void }
              attr_writer :expiration_date

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/other
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
              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport/properties/country
              sig { returns(String) }
              attr_accessor :country

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport/properties/expiration_date
              sig { returns(Date) }
              attr_accessor :expiration_date

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport/properties/file_id
              sig { returns(String) }
              attr_accessor :file_id

              # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/individual/properties/identification/properties/passport
              sig do
                params(country: String, expiration_date: Date, file_id: String).returns(T.attached_class)
              end
              def self.new(country:, expiration_date:, file_id:); end

              sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
              def to_hash; end
            end
          end
        end

        # #/components/schemas/create_a_beneficial_owner_for_a_corporate_entity_parameters/properties/beneficial_owner/properties/prongs/items
        module Prong
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::TaggedSymbol
              )
            end

          # A person with 25% or greater direct or indirect ownership of the entity.
          OWNERSHIP =
            T.let(
              :ownership,
              Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::TaggedSymbol
            )

          # A person who manages, directs, or has significant control of the entity.
          CONTROL =
            T.let(:control, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::TaggedSymbol)

          sig do
            override
              .returns(
                T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end
    end
  end
end
