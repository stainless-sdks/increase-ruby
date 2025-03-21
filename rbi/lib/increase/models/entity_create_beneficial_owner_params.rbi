# typed: strong

module Increase
  module Models
    class EntityCreateBeneficialOwnerParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifying details of anyone controlling or owning 25% or more of the
      #   corporation.
      sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner) }
      def beneficial_owner
      end

      sig do
        params(
          _: T.any(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner, Increase::Util::AnyHash)
        )
          .returns(
            T.any(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner, Increase::Util::AnyHash)
          )
      end
      def beneficial_owner=(_)
      end

      sig do
        params(
          beneficial_owner: T.any(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner, Increase::Util::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(beneficial_owner:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              beneficial_owner: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class BeneficialOwner < Increase::BaseModel
        # Personal details for the beneficial owner.
        sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual) }
        def individual
        end

        sig do
          params(
            _: T.any(
              Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual,
              Increase::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual,
                Increase::Util::AnyHash
              )
            )
        end
        def individual=(_)
        end

        # Why this person is considered a beneficial owner of the entity. At least one
        #   option is required, if a person is both a control person and owner, submit an
        #   array containing both.
        sig { returns(T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::OrSymbol]) }
        def prongs
        end

        sig do
          params(_: T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::OrSymbol])
            .returns(T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::OrSymbol])
        end
        def prongs=(_)
        end

        # This person's role or title within the entity.
        sig { returns(T.nilable(String)) }
        def company_title
        end

        sig { params(_: String).returns(String) }
        def company_title=(_)
        end

        # The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        sig do
          params(
            individual: T.any(
              Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual,
              Increase::Util::AnyHash
            ),
            prongs: T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::OrSymbol],
            company_title: String
          )
            .returns(T.attached_class)
        end
        def self.new(individual:, prongs:, company_title: nil)
        end

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
        def to_hash
        end

        class Individual < Increase::BaseModel
          # The individual's physical address. Mail receiving locations like PO Boxes and
          #   PMB's are disallowed.
          sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address) }
          def address
          end

          sig do
            params(
              _: T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address,
                Increase::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address,
                  Increase::Util::AnyHash
                )
              )
          end
          def address=(_)
          end

          # The person's date of birth in YYYY-MM-DD format.
          sig { returns(Date) }
          def date_of_birth
          end

          sig { params(_: Date).returns(Date) }
          def date_of_birth=(_)
          end

          # A means of verifying the person's identity.
          sig { returns(Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification) }
          def identification
          end

          sig do
            params(
              _: T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification,
                Increase::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification,
                  Increase::Util::AnyHash
                )
              )
          end
          def identification=(_)
          end

          # The person's legal name.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # The identification method for an individual can only be a passport, driver's
          #   license, or other document if you've confirmed the individual does not have a US
          #   tax id (either a Social Security Number or Individual Taxpayer Identification
          #   Number).
          sig { returns(T.nilable(T::Boolean)) }
          def confirmed_no_us_tax_id
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def confirmed_no_us_tax_id=(_)
          end

          # Personal details for the beneficial owner.
          sig do
            params(
              address: T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Address,
                Increase::Util::AnyHash
              ),
              date_of_birth: Date,
              identification: T.any(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification,
                Increase::Util::AnyHash
              ),
              name: String,
              confirmed_no_us_tax_id: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(address:, date_of_birth:, identification:, name:, confirmed_no_us_tax_id: nil)
          end

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
          def to_hash
          end

          class Address < Increase::BaseModel
            # The city of the address.
            sig { returns(String) }
            def city
            end

            sig { params(_: String).returns(String) }
            def city=(_)
            end

            # The first line of the address. This is usually the street number and street.
            sig { returns(String) }
            def line1
            end

            sig { params(_: String).returns(String) }
            def line1=(_)
            end

            # The two-letter United States Postal Service (USPS) abbreviation for the state of
            #   the address.
            sig { returns(String) }
            def state
            end

            sig { params(_: String).returns(String) }
            def state=(_)
            end

            # The ZIP code of the address.
            sig { returns(String) }
            def zip
            end

            sig { params(_: String).returns(String) }
            def zip=(_)
            end

            # The second line of the address. This might be the floor or room number.
            sig { returns(T.nilable(String)) }
            def line2
            end

            sig { params(_: String).returns(String) }
            def line2=(_)
            end

            # The individual's physical address. Mail receiving locations like PO Boxes and
            #   PMB's are disallowed.
            sig do
              params(
                city: String,
                line1: String,
                state: String,
                zip: String,
                line2: String
              ).returns(T.attached_class)
            end
            def self.new(city:, line1:, state:, zip:, line2: nil)
            end

            sig { override.returns({city: String, line1: String, state: String, zip: String, line2: String}) }
            def to_hash
            end
          end

          class Identification < Increase::BaseModel
            # A method that can be used to verify the individual's identity.
            sig do
              returns(
                Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::OrSymbol
              )
            end
            def method_
            end

            sig do
              params(
                _: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::OrSymbol
              )
                .returns(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::OrSymbol
                )
            end
            def method_=(_)
            end

            # An identification number that can be used to verify the individual's identity,
            #   such as a social security number.
            sig { returns(String) }
            def number
            end

            sig { params(_: String).returns(String) }
            def number=(_)
            end

            # Information about the United States driver's license used for identification.
            #   Required if `method` is equal to `drivers_license`.
            sig do
              returns(
                T.nilable(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense
                )
              )
            end
            def drivers_license
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense,
                    Increase::Util::AnyHash
                  )
                )
            end
            def drivers_license=(_)
            end

            # Information about the identification document provided. Required if `method` is
            #   equal to `other`.
            sig do
              returns(
                T.nilable(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other
                )
              )
            end
            def other
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other,
                    Increase::Util::AnyHash
                  )
                )
            end
            def other=(_)
            end

            # Information about the passport used for identification. Required if `method` is
            #   equal to `passport`.
            sig do
              returns(
                T.nilable(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport
                )
              )
            end
            def passport
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport,
                    Increase::Util::AnyHash
                  )
                )
            end
            def passport=(_)
            end

            # A means of verifying the person's identity.
            sig do
              params(
                method_: Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::OrSymbol,
                number: String,
                drivers_license: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::DriversLicense,
                  Increase::Util::AnyHash
                ),
                other: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Other,
                  Increase::Util::AnyHash
                ),
                passport: T.any(
                  Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Passport,
                  Increase::Util::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(method_:, number:, drivers_license: nil, other: nil, passport: nil)
            end

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
            def to_hash
            end

            # A method that can be used to verify the individual's identity.
            module Method
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
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

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end

            class DriversLicense < Increase::BaseModel
              # The driver's license's expiration date in YYYY-MM-DD format.
              sig { returns(Date) }
              def expiration_date
              end

              sig { params(_: Date).returns(Date) }
              def expiration_date=(_)
              end

              # The identifier of the File containing the front of the driver's license.
              sig { returns(String) }
              def file_id
              end

              sig { params(_: String).returns(String) }
              def file_id=(_)
              end

              # The state that issued the provided driver's license.
              sig { returns(String) }
              def state
              end

              sig { params(_: String).returns(String) }
              def state=(_)
              end

              # The identifier of the File containing the back of the driver's license.
              sig { returns(T.nilable(String)) }
              def back_file_id
              end

              sig { params(_: String).returns(String) }
              def back_file_id=(_)
              end

              # Information about the United States driver's license used for identification.
              #   Required if `method` is equal to `drivers_license`.
              sig do
                params(expiration_date: Date, file_id: String, state: String, back_file_id: String)
                  .returns(T.attached_class)
              end
              def self.new(expiration_date:, file_id:, state:, back_file_id: nil)
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
              # The two-character ISO 3166-1 code representing the country that issued the
              #   document.
              sig { returns(String) }
              def country
              end

              sig { params(_: String).returns(String) }
              def country=(_)
              end

              # A description of the document submitted.
              sig { returns(String) }
              def description
              end

              sig { params(_: String).returns(String) }
              def description=(_)
              end

              # The identifier of the File containing the front of the document.
              sig { returns(String) }
              def file_id
              end

              sig { params(_: String).returns(String) }
              def file_id=(_)
              end

              # The identifier of the File containing the back of the document. Not every
              #   document has a reverse side.
              sig { returns(T.nilable(String)) }
              def back_file_id
              end

              sig { params(_: String).returns(String) }
              def back_file_id=(_)
              end

              # The document's expiration date in YYYY-MM-DD format.
              sig { returns(T.nilable(Date)) }
              def expiration_date
              end

              sig { params(_: Date).returns(Date) }
              def expiration_date=(_)
              end

              # Information about the identification document provided. Required if `method` is
              #   equal to `other`.
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
              def self.new(country:, description:, file_id:, back_file_id: nil, expiration_date: nil)
              end

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
              def to_hash
              end
            end

            class Passport < Increase::BaseModel
              # The country that issued the passport.
              sig { returns(String) }
              def country
              end

              sig { params(_: String).returns(String) }
              def country=(_)
              end

              # The passport's expiration date in YYYY-MM-DD format.
              sig { returns(Date) }
              def expiration_date
              end

              sig { params(_: Date).returns(Date) }
              def expiration_date=(_)
              end

              # The identifier of the File containing the passport.
              sig { returns(String) }
              def file_id
              end

              sig { params(_: String).returns(String) }
              def file_id=(_)
              end

              # Information about the passport used for identification. Required if `method` is
              #   equal to `passport`.
              sig do
                params(country: String, expiration_date: Date, file_id: String).returns(T.attached_class)
              end
              def self.new(country:, expiration_date:, file_id:)
              end

              sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
              def to_hash
              end
            end
          end
        end

        module Prong
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::TaggedSymbol) }

          # A person with 25% or greater direct or indirect ownership of the entity.
          OWNERSHIP =
            T.let(
              :ownership,
              Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::TaggedSymbol
            )

          # A person who manages, directs, or has significant control of the entity.
          CONTROL =
            T.let(:control, Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::TaggedSymbol)

          class << self
            sig do
              override
                .returns(
                  T::Array[Increase::Models::EntityCreateBeneficialOwnerParams::BeneficialOwner::Prong::TaggedSymbol]
                )
            end
            def values
            end
          end
        end
      end
    end
  end
end
