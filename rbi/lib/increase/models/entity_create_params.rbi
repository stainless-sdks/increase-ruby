# typed: strong

module Increase
  module Models
    class EntityCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The type of Entity to create.
      sig { returns(Increase::Models::EntityCreateParams::Structure::OrSymbol) }
      def structure
      end

      sig do
        params(_: Increase::Models::EntityCreateParams::Structure::OrSymbol)
          .returns(Increase::Models::EntityCreateParams::Structure::OrSymbol)
      end
      def structure=(_)
      end

      # Details of the corporation entity to create. Required if `structure` is equal to
      #   `corporation`.
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Corporation)) }
      def corporation
      end

      sig do
        params(_: T.any(Increase::Models::EntityCreateParams::Corporation, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::EntityCreateParams::Corporation, Increase::Util::AnyHash))
      end
      def corporation=(_)
      end

      # The description you choose to give the entity.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # Details of the Government Authority entity to create. Required if `structure` is
      #   equal to `Government Authority`.
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::GovernmentAuthority)) }
      def government_authority
      end

      sig do
        params(_: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::EntityCreateParams::GovernmentAuthority, Increase::Util::AnyHash))
      end
      def government_authority=(_)
      end

      # Details of the joint entity to create. Required if `structure` is equal to
      #   `joint`.
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Joint)) }
      def joint
      end

      sig do
        params(_: T.any(Increase::Models::EntityCreateParams::Joint, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::EntityCreateParams::Joint, Increase::Util::AnyHash))
      end
      def joint=(_)
      end

      # Details of the natural person entity to create. Required if `structure` is equal
      #   to `natural_person`. Natural people entities should be submitted with
      #   `social_security_number` or `individual_taxpayer_identification_number`
      #   identification methods.
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson)) }
      def natural_person
      end

      sig do
        params(_: T.any(Increase::Models::EntityCreateParams::NaturalPerson, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::EntityCreateParams::NaturalPerson, Increase::Util::AnyHash))
      end
      def natural_person=(_)
      end

      # Additional documentation associated with the entity.
      sig { returns(T.nilable(T::Array[Increase::Models::EntityCreateParams::SupplementalDocument])) }
      def supplemental_documents
      end

      sig do
        params(_: T::Array[Increase::Models::EntityCreateParams::SupplementalDocument])
          .returns(T::Array[Increase::Models::EntityCreateParams::SupplementalDocument])
      end
      def supplemental_documents=(_)
      end

      # A reference to data stored in a third-party verification service. Your
      #   integration may or may not use this field.
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::ThirdPartyVerification)) }
      def third_party_verification
      end

      sig do
        params(_: T.any(Increase::Models::EntityCreateParams::ThirdPartyVerification, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::EntityCreateParams::ThirdPartyVerification, Increase::Util::AnyHash))
      end
      def third_party_verification=(_)
      end

      # Details of the trust entity to create. Required if `structure` is equal to
      #   `trust`.
      sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust)) }
      def trust
      end

      sig do
        params(_: T.any(Increase::Models::EntityCreateParams::Trust, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::EntityCreateParams::Trust, Increase::Util::AnyHash))
      end
      def trust=(_)
      end

      sig do
        params(
          structure: Increase::Models::EntityCreateParams::Structure::OrSymbol,
          corporation: T.any(Increase::Models::EntityCreateParams::Corporation, Increase::Util::AnyHash),
          description: String,
          government_authority: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority, Increase::Util::AnyHash),
          joint: T.any(Increase::Models::EntityCreateParams::Joint, Increase::Util::AnyHash),
          natural_person: T.any(Increase::Models::EntityCreateParams::NaturalPerson, Increase::Util::AnyHash),
          supplemental_documents: T::Array[Increase::Models::EntityCreateParams::SupplementalDocument],
          third_party_verification: T.any(Increase::Models::EntityCreateParams::ThirdPartyVerification, Increase::Util::AnyHash),
          trust: T.any(Increase::Models::EntityCreateParams::Trust, Increase::Util::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      # The type of Entity to create.
      module Structure
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Structure) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::EntityCreateParams::Structure::TaggedSymbol) }

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

        class << self
          sig { override.returns(T::Array[Increase::Models::EntityCreateParams::Structure::TaggedSymbol]) }
          def values
          end
        end
      end

      class Corporation < Increase::BaseModel
        # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
        #   are disallowed.
        sig { returns(Increase::Models::EntityCreateParams::Corporation::Address) }
        def address
        end

        sig do
          params(_: T.any(Increase::Models::EntityCreateParams::Corporation::Address, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::EntityCreateParams::Corporation::Address, Increase::Util::AnyHash))
        end
        def address=(_)
        end

        # The identifying details of anyone controlling or owning 25% or more of the
        #   corporation.
        sig { returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner]) }
        def beneficial_owners
        end

        sig do
          params(_: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner])
            .returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner])
        end
        def beneficial_owners=(_)
        end

        # The legal name of the corporation.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The Employer Identification Number (EIN) for the corporation.
        sig { returns(String) }
        def tax_identifier
        end

        sig { params(_: String).returns(String) }
        def tax_identifier=(_)
        end

        # The two-letter United States Postal Service (USPS) abbreviation for the
        #   corporation's state of incorporation.
        sig { returns(T.nilable(String)) }
        def incorporation_state
        end

        sig { params(_: String).returns(String) }
        def incorporation_state=(_)
        end

        # The North American Industry Classification System (NAICS) code for the
        #   corporation's primary line of business. This is a number, like `5132` for
        #   `Software Publishers`. A full list of classification codes is available
        #   [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
        sig { returns(T.nilable(String)) }
        def industry_code
        end

        sig { params(_: String).returns(String) }
        def industry_code=(_)
        end

        # The website of the corporation.
        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: String).returns(String) }
        def website=(_)
        end

        # Details of the corporation entity to create. Required if `structure` is equal to
        #   `corporation`.
        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::Corporation::Address, Increase::Util::AnyHash),
            beneficial_owners: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner],
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
        )
        end

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

          # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
          #   are disallowed.
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

        class BeneficialOwner < Increase::BaseModel
          # Personal details for the beneficial owner.
          sig { returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual) }
          def individual
          end

          sig do
            params(
              _: T.any(
                Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
                Increase::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
                  Increase::Util::AnyHash
                )
              )
          end
          def individual=(_)
          end

          # Why this person is considered a beneficial owner of the entity. At least one
          #   option is required, if a person is both a control person and owner, submit an
          #   array containing both.
          sig { returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::OrSymbol]) }
          def prongs
          end

          sig do
            params(_: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::OrSymbol])
              .returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::OrSymbol])
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

          sig do
            params(
              individual: T.any(
                Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
                Increase::Util::AnyHash
              ),
              prongs: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::OrSymbol],
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
                  individual: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual,
                  prongs: T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::OrSymbol],
                  company_title: String
                }
              )
          end
          def to_hash
          end

          class Individual < Increase::BaseModel
            # The individual's physical address. Mail receiving locations like PO Boxes and
            #   PMB's are disallowed.
            sig { returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address) }
            def address
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
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
            sig { returns(Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification) }
            def identification
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
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
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
                  Increase::Util::AnyHash
                ),
                date_of_birth: Date,
                identification: T.any(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
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
                    address: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Address,
                    date_of_birth: Date,
                    identification: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification,
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

              sig do
                override.returns({city: String, line1: String, state: String, zip: String, line2: String})
              end
              def to_hash
              end
            end

            class Identification < Increase::BaseModel
              # A method that can be used to verify the individual's identity.
              sig do
                returns(
                  Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol
                )
              end
              def method_
              end

              sig do
                params(
                  _: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol
                )
                  .returns(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol
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
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense
                  )
                )
              end
              def drivers_license
              end

              sig do
                params(
                  _: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
                    Increase::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
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
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other
                  )
                )
              end
              def other
              end

              sig do
                params(
                  _: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
                    Increase::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
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
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport
                  )
                )
              end
              def passport
              end

              sig do
                params(
                  _: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport,
                    Increase::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport,
                      Increase::Util::AnyHash
                    )
                  )
              end
              def passport=(_)
              end

              # A means of verifying the person's identity.
              sig do
                params(
                  method_: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol,
                  number: String,
                  drivers_license: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
                    Increase::Util::AnyHash
                  ),
                  other: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
                    Increase::Util::AnyHash
                  ),
                  passport: T.any(
                    Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport,
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
                      method_: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::OrSymbol,
                      number: String,
                      drivers_license: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::DriversLicense,
                      other: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Other,
                      passport: Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Passport
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
                    T.all(Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
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

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Individual::Identification::Method::TaggedSymbol
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
              T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::TaggedSymbol) }

            # A person with 25% or greater direct or indirect ownership of the entity.
            OWNERSHIP =
              T.let(:ownership, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::TaggedSymbol)

            # A person who manages, directs, or has significant control of the entity.
            CONTROL =
              T.let(:control, Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(T::Array[Increase::Models::EntityCreateParams::Corporation::BeneficialOwner::Prong::TaggedSymbol])
              end
              def values
              end
            end
          end
        end
      end

      class GovernmentAuthority < Increase::BaseModel
        # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
        #   are disallowed.
        sig { returns(Increase::Models::EntityCreateParams::GovernmentAuthority::Address) }
        def address
        end

        sig do
          params(
            _: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority::Address, Increase::Util::AnyHash)
          )
            .returns(
              T.any(Increase::Models::EntityCreateParams::GovernmentAuthority::Address, Increase::Util::AnyHash)
            )
        end
        def address=(_)
        end

        # The identifying details of authorized officials acting on the entity's behalf.
        sig { returns(T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson]) }
        def authorized_persons
        end

        sig do
          params(_: T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson])
            .returns(T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson])
        end
        def authorized_persons=(_)
        end

        # The category of the government authority.
        sig { returns(Increase::Models::EntityCreateParams::GovernmentAuthority::Category::OrSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::EntityCreateParams::GovernmentAuthority::Category::OrSymbol)
            .returns(Increase::Models::EntityCreateParams::GovernmentAuthority::Category::OrSymbol)
        end
        def category=(_)
        end

        # The legal name of the government authority.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The Employer Identification Number (EIN) for the government authority.
        sig { returns(String) }
        def tax_identifier
        end

        sig { params(_: String).returns(String) }
        def tax_identifier=(_)
        end

        # The website of the government authority.
        sig { returns(T.nilable(String)) }
        def website
        end

        sig { params(_: String).returns(String) }
        def website=(_)
        end

        # Details of the Government Authority entity to create. Required if `structure` is
        #   equal to `Government Authority`.
        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::GovernmentAuthority::Address, Increase::Util::AnyHash),
            authorized_persons: T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::AuthorizedPerson],
            category: Increase::Models::EntityCreateParams::GovernmentAuthority::Category::OrSymbol,
            name: String,
            tax_identifier: String,
            website: String
          )
            .returns(T.attached_class)
        end
        def self.new(address:, authorized_persons:, category:, name:, tax_identifier:, website: nil)
        end

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

          # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
          #   are disallowed.
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

        class AuthorizedPerson < Increase::BaseModel
          # The person's legal name.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(name: String).returns(T.attached_class) }
          def self.new(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        # The category of the government authority.
        module Category
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::GovernmentAuthority::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::EntityCreateParams::GovernmentAuthority::Category::TaggedSymbol) }

          # The Public Entity is a Municipality.
          MUNICIPALITY =
            T.let(:municipality, Increase::Models::EntityCreateParams::GovernmentAuthority::Category::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[Increase::Models::EntityCreateParams::GovernmentAuthority::Category::TaggedSymbol])
            end
            def values
            end
          end
        end
      end

      class Joint < Increase::BaseModel
        # The two individuals that share control of the entity.
        sig { returns(T::Array[Increase::Models::EntityCreateParams::Joint::Individual]) }
        def individuals
        end

        sig do
          params(_: T::Array[Increase::Models::EntityCreateParams::Joint::Individual])
            .returns(T::Array[Increase::Models::EntityCreateParams::Joint::Individual])
        end
        def individuals=(_)
        end

        # The name of the joint entity.
        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # Details of the joint entity to create. Required if `structure` is equal to
        #   `joint`.
        sig do
          params(individuals: T::Array[Increase::Models::EntityCreateParams::Joint::Individual], name: String)
            .returns(T.attached_class)
        end
        def self.new(individuals:, name: nil)
        end

        sig do
          override
            .returns({individuals: T::Array[Increase::Models::EntityCreateParams::Joint::Individual], name: String})
        end
        def to_hash
        end

        class Individual < Increase::BaseModel
          # The individual's physical address. Mail receiving locations like PO Boxes and
          #   PMB's are disallowed.
          sig { returns(Increase::Models::EntityCreateParams::Joint::Individual::Address) }
          def address
          end

          sig do
            params(
              _: T.any(Increase::Models::EntityCreateParams::Joint::Individual::Address, Increase::Util::AnyHash)
            )
              .returns(T.any(Increase::Models::EntityCreateParams::Joint::Individual::Address, Increase::Util::AnyHash))
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
          sig { returns(Increase::Models::EntityCreateParams::Joint::Individual::Identification) }
          def identification
          end

          sig do
            params(
              _: T.any(Increase::Models::EntityCreateParams::Joint::Individual::Identification, Increase::Util::AnyHash)
            )
              .returns(
                T.any(Increase::Models::EntityCreateParams::Joint::Individual::Identification, Increase::Util::AnyHash)
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

          sig do
            params(
              address: T.any(Increase::Models::EntityCreateParams::Joint::Individual::Address, Increase::Util::AnyHash),
              date_of_birth: Date,
              identification: T.any(Increase::Models::EntityCreateParams::Joint::Individual::Identification, Increase::Util::AnyHash),
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
            sig { returns(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::OrSymbol) }
            def method_
            end

            sig do
              params(_: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::OrSymbol)
                .returns(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::OrSymbol)
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
                T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense)
              )
            end
            def drivers_license
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                    Increase::Util::AnyHash
                  )
                )
            end
            def drivers_license=(_)
            end

            # Information about the identification document provided. Required if `method` is
            #   equal to `other`.
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other)) }
            def other
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                    Increase::Util::AnyHash
                  )
                )
            end
            def other=(_)
            end

            # Information about the passport used for identification. Required if `method` is
            #   equal to `passport`.
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport)) }
            def passport
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport,
                    Increase::Util::AnyHash
                  )
                )
            end
            def passport=(_)
            end

            # A means of verifying the person's identity.
            sig do
              params(
                method_: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::OrSymbol,
                number: String,
                drivers_license: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                  Increase::Util::AnyHash
                ),
                other: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                  Increase::Util::AnyHash
                ),
                passport: T.any(
                  Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport,
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
                    method_: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::OrSymbol,
                    number: String,
                    drivers_license: Increase::Models::EntityCreateParams::Joint::Individual::Identification::DriversLicense,
                    other: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Other,
                    passport: Increase::Models::EntityCreateParams::Joint::Individual::Identification::Passport
                  }
                )
            end
            def to_hash
            end

            # A method that can be used to verify the individual's identity.
            module Method
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
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

              class << self
                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::EntityCreateParams::Joint::Individual::Identification::Method::TaggedSymbol]
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
      end

      class NaturalPerson < Increase::BaseModel
        # The individual's physical address. Mail receiving locations like PO Boxes and
        #   PMB's are disallowed.
        sig { returns(Increase::Models::EntityCreateParams::NaturalPerson::Address) }
        def address
        end

        sig do
          params(_: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Address, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::EntityCreateParams::NaturalPerson::Address, Increase::Util::AnyHash))
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
        sig { returns(Increase::Models::EntityCreateParams::NaturalPerson::Identification) }
        def identification
        end

        sig do
          params(
            _: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Identification, Increase::Util::AnyHash)
          )
            .returns(
              T.any(Increase::Models::EntityCreateParams::NaturalPerson::Identification, Increase::Util::AnyHash)
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

        # Details of the natural person entity to create. Required if `structure` is equal
        #   to `natural_person`. Natural people entities should be submitted with
        #   `social_security_number` or `individual_taxpayer_identification_number`
        #   identification methods.
        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Address, Increase::Util::AnyHash),
            date_of_birth: Date,
            identification: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Identification, Increase::Util::AnyHash),
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
          sig { returns(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::OrSymbol) }
          def method_
          end

          sig do
            params(_: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::OrSymbol)
              .returns(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::OrSymbol)
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
          sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense)) }
          def drivers_license
          end

          sig do
            params(
              _: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
                Increase::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
                  Increase::Util::AnyHash
                )
              )
          end
          def drivers_license=(_)
          end

          # Information about the identification document provided. Required if `method` is
          #   equal to `other`.
          sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other)) }
          def other
          end

          sig do
            params(
              _: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other, Increase::Util::AnyHash)
            )
              .returns(
                T.any(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other, Increase::Util::AnyHash)
              )
          end
          def other=(_)
          end

          # Information about the passport used for identification. Required if `method` is
          #   equal to `passport`.
          sig { returns(T.nilable(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport)) }
          def passport
          end

          sig do
            params(
              _: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport,
                Increase::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport,
                  Increase::Util::AnyHash
                )
              )
          end
          def passport=(_)
          end

          # A means of verifying the person's identity.
          sig do
            params(
              method_: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::OrSymbol,
              number: String,
              drivers_license: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
                Increase::Util::AnyHash
              ),
              other: T.any(Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other, Increase::Util::AnyHash),
              passport: T.any(
                Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport,
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
                  method_: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::OrSymbol,
                  number: String,
                  drivers_license: Increase::Models::EntityCreateParams::NaturalPerson::Identification::DriversLicense,
                  other: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Other,
                  passport: Increase::Models::EntityCreateParams::NaturalPerson::Identification::Passport
                }
              )
          end
          def to_hash
          end

          # A method that can be used to verify the individual's identity.
          module Method
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol) }

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

            class << self
              sig do
                override
                  .returns(
                    T::Array[Increase::Models::EntityCreateParams::NaturalPerson::Identification::Method::TaggedSymbol]
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
              override.returns({expiration_date: Date, file_id: String, state: String, back_file_id: String})
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
            sig { params(country: String, expiration_date: Date, file_id: String).returns(T.attached_class) }
            def self.new(country:, expiration_date:, file_id:)
            end

            sig { override.returns({country: String, expiration_date: Date, file_id: String}) }
            def to_hash
            end
          end
        end
      end

      class SupplementalDocument < Increase::BaseModel
        # The identifier of the File containing the document.
        sig { returns(String) }
        def file_id
        end

        sig { params(_: String).returns(String) }
        def file_id=(_)
        end

        sig { params(file_id: String).returns(T.attached_class) }
        def self.new(file_id:)
        end

        sig { override.returns({file_id: String}) }
        def to_hash
        end
      end

      class ThirdPartyVerification < Increase::BaseModel
        # The reference identifier for the third party verification.
        sig { returns(String) }
        def reference
        end

        sig { params(_: String).returns(String) }
        def reference=(_)
        end

        # The vendor that was used to perform the verification.
        sig { returns(Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::OrSymbol) }
        def vendor
        end

        sig do
          params(_: Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::OrSymbol)
            .returns(Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::OrSymbol)
        end
        def vendor=(_)
        end

        # A reference to data stored in a third-party verification service. Your
        #   integration may or may not use this field.
        sig do
          params(
            reference: String,
            vendor: Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(reference:, vendor:)
        end

        sig do
          override
            .returns(
              {reference: String, vendor: Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::OrSymbol}
            )
        end
        def to_hash
        end

        # The vendor that was used to perform the verification.
        module Vendor
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::TaggedSymbol) }

          # Alloy. See https://alloy.com for more information.
          ALLOY = T.let(:alloy, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::TaggedSymbol)

          # Middesk. See https://middesk.com for more information.
          MIDDESK =
            T.let(:middesk, Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[Increase::Models::EntityCreateParams::ThirdPartyVerification::Vendor::TaggedSymbol])
            end
            def values
            end
          end
        end
      end

      class Trust < Increase::BaseModel
        # The trust's physical address. Mail receiving locations like PO Boxes and PMB's
        #   are disallowed.
        sig { returns(Increase::Models::EntityCreateParams::Trust::Address) }
        def address
        end

        sig do
          params(_: T.any(Increase::Models::EntityCreateParams::Trust::Address, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::EntityCreateParams::Trust::Address, Increase::Util::AnyHash))
        end
        def address=(_)
        end

        # Whether the trust is `revocable` or `irrevocable`. Irrevocable trusts require
        #   their own Employer Identification Number. Revocable trusts require information
        #   about the individual `grantor` who created the trust.
        sig { returns(Increase::Models::EntityCreateParams::Trust::Category::OrSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::EntityCreateParams::Trust::Category::OrSymbol)
            .returns(Increase::Models::EntityCreateParams::Trust::Category::OrSymbol)
        end
        def category=(_)
        end

        # The legal name of the trust.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # The trustees of the trust.
        sig { returns(T::Array[Increase::Models::EntityCreateParams::Trust::Trustee]) }
        def trustees
        end

        sig do
          params(_: T::Array[Increase::Models::EntityCreateParams::Trust::Trustee])
            .returns(T::Array[Increase::Models::EntityCreateParams::Trust::Trustee])
        end
        def trustees=(_)
        end

        # The identifier of the File containing the formation document of the trust.
        sig { returns(T.nilable(String)) }
        def formation_document_file_id
        end

        sig { params(_: String).returns(String) }
        def formation_document_file_id=(_)
        end

        # The two-letter United States Postal Service (USPS) abbreviation for the state in
        #   which the trust was formed.
        sig { returns(T.nilable(String)) }
        def formation_state
        end

        sig { params(_: String).returns(String) }
        def formation_state=(_)
        end

        # The grantor of the trust. Required if `category` is equal to `revocable`.
        sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor)) }
        def grantor
        end

        sig do
          params(_: T.any(Increase::Models::EntityCreateParams::Trust::Grantor, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::EntityCreateParams::Trust::Grantor, Increase::Util::AnyHash))
        end
        def grantor=(_)
        end

        # The Employer Identification Number (EIN) for the trust. Required if `category`
        #   is equal to `irrevocable`.
        sig { returns(T.nilable(String)) }
        def tax_identifier
        end

        sig { params(_: String).returns(String) }
        def tax_identifier=(_)
        end

        # Details of the trust entity to create. Required if `structure` is equal to
        #   `trust`.
        sig do
          params(
            address: T.any(Increase::Models::EntityCreateParams::Trust::Address, Increase::Util::AnyHash),
            category: Increase::Models::EntityCreateParams::Trust::Category::OrSymbol,
            name: String,
            trustees: T::Array[Increase::Models::EntityCreateParams::Trust::Trustee],
            formation_document_file_id: String,
            formation_state: String,
            grantor: T.any(Increase::Models::EntityCreateParams::Trust::Grantor, Increase::Util::AnyHash),
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
        )
        end

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

          # The trust's physical address. Mail receiving locations like PO Boxes and PMB's
          #   are disallowed.
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

        # Whether the trust is `revocable` or `irrevocable`. Irrevocable trusts require
        #   their own Employer Identification Number. Revocable trusts require information
        #   about the individual `grantor` who created the trust.
        module Category
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Trust::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::EntityCreateParams::Trust::Category::TaggedSymbol) }

          # The trust is revocable by the grantor.
          REVOCABLE = T.let(:revocable, Increase::Models::EntityCreateParams::Trust::Category::TaggedSymbol)

          # The trust cannot be revoked.
          IRREVOCABLE = T.let(:irrevocable, Increase::Models::EntityCreateParams::Trust::Category::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::EntityCreateParams::Trust::Category::TaggedSymbol]) }
            def values
            end
          end
        end

        class Trustee < Increase::BaseModel
          # The structure of the trustee.
          sig { returns(Increase::Models::EntityCreateParams::Trust::Trustee::Structure::OrSymbol) }
          def structure
          end

          sig do
            params(_: Increase::Models::EntityCreateParams::Trust::Trustee::Structure::OrSymbol)
              .returns(Increase::Models::EntityCreateParams::Trust::Trustee::Structure::OrSymbol)
          end
          def structure=(_)
          end

          # Details of the individual trustee. Required when the trustee `structure` is
          #   equal to `individual`.
          sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual)) }
          def individual
          end

          sig do
            params(
              _: T.any(Increase::Models::EntityCreateParams::Trust::Trustee::Individual, Increase::Util::AnyHash)
            )
              .returns(T.any(Increase::Models::EntityCreateParams::Trust::Trustee::Individual, Increase::Util::AnyHash))
          end
          def individual=(_)
          end

          sig do
            params(
              structure: Increase::Models::EntityCreateParams::Trust::Trustee::Structure::OrSymbol,
              individual: T.any(Increase::Models::EntityCreateParams::Trust::Trustee::Individual, Increase::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(structure:, individual: nil)
          end

          sig do
            override
              .returns(
                {
                  structure: Increase::Models::EntityCreateParams::Trust::Trustee::Structure::OrSymbol,
                  individual: Increase::Models::EntityCreateParams::Trust::Trustee::Individual
                }
              )
          end
          def to_hash
          end

          # The structure of the trustee.
          module Structure
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Structure) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Structure::TaggedSymbol) }

            # The trustee is an individual.
            INDIVIDUAL =
              T.let(:individual, Increase::Models::EntityCreateParams::Trust::Trustee::Structure::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[Increase::Models::EntityCreateParams::Trust::Trustee::Structure::TaggedSymbol]) }
              def values
              end
            end
          end

          class Individual < Increase::BaseModel
            # The individual's physical address. Mail receiving locations like PO Boxes and
            #   PMB's are disallowed.
            sig { returns(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address) }
            def address
            end

            sig do
              params(
                _: T.any(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address, Increase::Util::AnyHash)
              )
                .returns(
                  T.any(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address, Increase::Util::AnyHash)
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
            sig { returns(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification) }
            def identification
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
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

            # Details of the individual trustee. Required when the trustee `structure` is
            #   equal to `individual`.
            sig do
              params(
                address: T.any(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Address, Increase::Util::AnyHash),
                date_of_birth: Date,
                identification: T.any(
                  Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification,
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

              sig do
                override.returns({city: String, line1: String, state: String, zip: String, line2: String})
              end
              def to_hash
              end
            end

            class Identification < Increase::BaseModel
              # A method that can be used to verify the individual's identity.
              sig do
                returns(
                  Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::OrSymbol
                )
              end
              def method_
              end

              sig do
                params(
                  _: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::OrSymbol
                )
                  .returns(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::OrSymbol
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
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense
                  )
                )
              end
              def drivers_license
              end

              sig do
                params(
                  _: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
                    Increase::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
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
                  T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other)
                )
              end
              def other
              end

              sig do
                params(
                  _: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
                    Increase::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
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
                  T.nilable(Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport)
                )
              end
              def passport
              end

              sig do
                params(
                  _: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport,
                    Increase::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport,
                      Increase::Util::AnyHash
                    )
                  )
              end
              def passport=(_)
              end

              # A means of verifying the person's identity.
              sig do
                params(
                  method_: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::OrSymbol,
                  number: String,
                  drivers_license: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
                    Increase::Util::AnyHash
                  ),
                  other: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
                    Increase::Util::AnyHash
                  ),
                  passport: T.any(
                    Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport,
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
                      method_: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::OrSymbol,
                      number: String,
                      drivers_license: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::DriversLicense,
                      other: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Other,
                      passport: Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Passport
                    }
                  )
              end
              def to_hash
              end

              # A method that can be used to verify the individual's identity.
              module Method
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
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

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[Increase::Models::EntityCreateParams::Trust::Trustee::Individual::Identification::Method::TaggedSymbol]
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
        end

        class Grantor < Increase::BaseModel
          # The individual's physical address. Mail receiving locations like PO Boxes and
          #   PMB's are disallowed.
          sig { returns(Increase::Models::EntityCreateParams::Trust::Grantor::Address) }
          def address
          end

          sig do
            params(_: T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Address, Increase::Util::AnyHash))
              .returns(T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Address, Increase::Util::AnyHash))
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
          sig { returns(Increase::Models::EntityCreateParams::Trust::Grantor::Identification) }
          def identification
          end

          sig do
            params(
              _: T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Identification, Increase::Util::AnyHash)
            )
              .returns(
                T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Identification, Increase::Util::AnyHash)
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

          # The grantor of the trust. Required if `category` is equal to `revocable`.
          sig do
            params(
              address: T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Address, Increase::Util::AnyHash),
              date_of_birth: Date,
              identification: T.any(Increase::Models::EntityCreateParams::Trust::Grantor::Identification, Increase::Util::AnyHash),
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
            sig { returns(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::OrSymbol) }
            def method_
            end

            sig do
              params(_: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::OrSymbol)
                .returns(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::OrSymbol)
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
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense)) }
            def drivers_license
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                    Increase::Util::AnyHash
                  )
                )
            end
            def drivers_license=(_)
            end

            # Information about the identification document provided. Required if `method` is
            #   equal to `other`.
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other)) }
            def other
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                    Increase::Util::AnyHash
                  )
                )
            end
            def other=(_)
            end

            # Information about the passport used for identification. Required if `method` is
            #   equal to `passport`.
            sig { returns(T.nilable(Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport)) }
            def passport
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport,
                    Increase::Util::AnyHash
                  )
                )
            end
            def passport=(_)
            end

            # A means of verifying the person's identity.
            sig do
              params(
                method_: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::OrSymbol,
                number: String,
                drivers_license: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                  Increase::Util::AnyHash
                ),
                other: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                  Increase::Util::AnyHash
                ),
                passport: T.any(
                  Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport,
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
                    method_: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::OrSymbol,
                    number: String,
                    drivers_license: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::DriversLicense,
                    other: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Other,
                    passport: Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Passport
                  }
                )
            end
            def to_hash
            end

            # A method that can be used to verify the individual's identity.
            module Method
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol) }

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

              class << self
                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::EntityCreateParams::Trust::Grantor::Identification::Method::TaggedSymbol]
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
      end
    end
  end
end
