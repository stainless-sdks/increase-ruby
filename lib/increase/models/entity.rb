# frozen_string_literal: true

module Increase
  module Models
    class Entity < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] corporation
      required :corporation, -> { Increase::Models::Entity::Corporation }

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] details_confirmed_at
      required :details_confirmed_at, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] joint
      required :joint, -> { Increase::Models::Entity::Joint }

      # @!attribute [rw] natural_person
      required :natural_person, -> { Increase::Models::Entity::NaturalPerson }

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:active, :archived, :disabled])

      # @!attribute [rw] structure
      required :structure, Increase::Enum.new([:corporation, :natural_person, :joint, :trust])

      # @!attribute [rw] supplemental_documents
      required :supplemental_documents,
               Increase::ArrayOf.new(
                 lambda {
                   Increase::Models::Entity::SupplementalDocument
                 }
               )

      # @!attribute [rw] trust_
      required :trust_, -> { Increase::Models::Entity::Trust }

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:entity])

      class Corporation < BaseModel
        # @!attribute [rw] address
        required :address, -> { Increase::Models::Entity::Corporation::Address }

        # @!attribute [rw] beneficial_owners
        required :beneficial_owners,
                 Increase::ArrayOf.new(
                   lambda {
                     Increase::Models::Entity::Corporation::BeneficialOwner
                   }
                 )

        # @!attribute [rw] incorporation_state
        required :incorporation_state, String

        # @!attribute [rw] industry_code
        required :industry_code, String

        # @!attribute [rw] name_
        required :name_, String

        # @!attribute [rw] tax_identifier
        required :tax_identifier, String

        # @!attribute [rw] website
        required :website, String

        class Address < BaseModel
          # @!attribute [rw] city
          required :city, String

          # @!attribute [rw] line1
          required :line1, String

          # @!attribute [rw] line2
          required :line2, String

          # @!attribute [rw] state
          required :state, String

          # @!attribute [rw] zip
          required :zip, String
        end

        class BeneficialOwner < BaseModel
          # @!attribute [rw] beneficial_owner_id
          required :beneficial_owner_id, String

          # @!attribute [rw] company_title
          required :company_title, String

          # @!attribute [rw] individual
          required :individual,
                   lambda {
                     Increase::Models::Entity::Corporation::BeneficialOwner::Individual
                   }

          # @!attribute [rw] prong
          required :prong, Increase::Enum.new([:ownership, :control])

          class Individual < BaseModel
            # @!attribute [rw] address
            required :address,
                     lambda {
                       Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Address
                     }

            # @!attribute [rw] date_of_birth
            required :date_of_birth, String

            # @!attribute [rw] identification
            required :identification,
                     lambda {
                       Increase::Models::Entity::Corporation::BeneficialOwner::Individual::Identification
                     }

            # @!attribute [rw] name_
            required :name_, String

            class Address < BaseModel
              # @!attribute [rw] city
              required :city, String

              # @!attribute [rw] line1
              required :line1, String

              # @!attribute [rw] line2
              required :line2, String

              # @!attribute [rw] state
              required :state, String

              # @!attribute [rw] zip
              required :zip, String
            end

            class Identification < BaseModel
              # @!attribute [rw] method_
              required :method_,
                       Increase::Enum.new(
                         [
                           :social_security_number,
                           :individual_taxpayer_identification_number,
                           :passport,
                           :drivers_license,
                           :other
                         ]
                       )

              # @!attribute [rw] number_last4
              required :number_last4, String
            end
          end
        end
      end

      class Joint < BaseModel
        # @!attribute [rw] individuals
        required :individuals,
                 Increase::ArrayOf.new(
                   lambda {
                     Increase::Models::Entity::Joint::Individual
                   }
                 )

        # @!attribute [rw] name_
        required :name_, String

        class Individual < BaseModel
          # @!attribute [rw] address
          required :address, -> { Increase::Models::Entity::Joint::Individual::Address }

          # @!attribute [rw] date_of_birth
          required :date_of_birth, String

          # @!attribute [rw] identification
          required :identification,
                   lambda {
                     Increase::Models::Entity::Joint::Individual::Identification
                   }

          # @!attribute [rw] name_
          required :name_, String

          class Address < BaseModel
            # @!attribute [rw] city
            required :city, String

            # @!attribute [rw] line1
            required :line1, String

            # @!attribute [rw] line2
            required :line2, String

            # @!attribute [rw] state
            required :state, String

            # @!attribute [rw] zip
            required :zip, String
          end

          class Identification < BaseModel
            # @!attribute [rw] method_
            required :method_,
                     Increase::Enum.new(
                       [
                         :social_security_number,
                         :individual_taxpayer_identification_number,
                         :passport,
                         :drivers_license,
                         :other
                       ]
                     )

            # @!attribute [rw] number_last4
            required :number_last4, String
          end
        end
      end

      class NaturalPerson < BaseModel
        # @!attribute [rw] address
        required :address, -> { Increase::Models::Entity::NaturalPerson::Address }

        # @!attribute [rw] date_of_birth
        required :date_of_birth, String

        # @!attribute [rw] identification
        required :identification, -> { Increase::Models::Entity::NaturalPerson::Identification }

        # @!attribute [rw] name_
        required :name_, String

        class Address < BaseModel
          # @!attribute [rw] city
          required :city, String

          # @!attribute [rw] line1
          required :line1, String

          # @!attribute [rw] line2
          required :line2, String

          # @!attribute [rw] state
          required :state, String

          # @!attribute [rw] zip
          required :zip, String
        end

        class Identification < BaseModel
          # @!attribute [rw] method_
          required :method_,
                   Increase::Enum.new(
                     [
                       :social_security_number,
                       :individual_taxpayer_identification_number,
                       :passport,
                       :drivers_license,
                       :other
                     ]
                   )

          # @!attribute [rw] number_last4
          required :number_last4, String
        end
      end

      class SupplementalDocument < BaseModel
        # @!attribute [rw] created_at
        required :created_at, String

        # @!attribute [rw] file_id
        required :file_id, String

        # @!attribute [rw] idempotency_key
        required :idempotency_key, String

        # @!attribute [rw] type
        required :type, Increase::Enum.new([:entity_supplemental_document])
      end

      class Trust < BaseModel
        # @!attribute [rw] address
        required :address, -> { Increase::Models::Entity::Trust::Address }

        # @!attribute [rw] category
        required :category, Increase::Enum.new([:revocable, :irrevocable])

        # @!attribute [rw] formation_document_file_id
        required :formation_document_file_id, String

        # @!attribute [rw] formation_state
        required :formation_state, String

        # @!attribute [rw] grantor
        required :grantor, -> { Increase::Models::Entity::Trust::Grantor }

        # @!attribute [rw] name_
        required :name_, String

        # @!attribute [rw] tax_identifier
        required :tax_identifier, String

        # @!attribute [rw] trustees
        required :trustees, Increase::ArrayOf.new(-> { Increase::Models::Entity::Trust::Trustee })

        class Address < BaseModel
          # @!attribute [rw] city
          required :city, String

          # @!attribute [rw] line1
          required :line1, String

          # @!attribute [rw] line2
          required :line2, String

          # @!attribute [rw] state
          required :state, String

          # @!attribute [rw] zip
          required :zip, String
        end

        class Grantor < BaseModel
          # @!attribute [rw] address
          required :address, -> { Increase::Models::Entity::Trust::Grantor::Address }

          # @!attribute [rw] date_of_birth
          required :date_of_birth, String

          # @!attribute [rw] identification
          required :identification,
                   lambda {
                     Increase::Models::Entity::Trust::Grantor::Identification
                   }

          # @!attribute [rw] name_
          required :name_, String

          class Address < BaseModel
            # @!attribute [rw] city
            required :city, String

            # @!attribute [rw] line1
            required :line1, String

            # @!attribute [rw] line2
            required :line2, String

            # @!attribute [rw] state
            required :state, String

            # @!attribute [rw] zip
            required :zip, String
          end

          class Identification < BaseModel
            # @!attribute [rw] method_
            required :method_,
                     Increase::Enum.new(
                       [
                         :social_security_number,
                         :individual_taxpayer_identification_number,
                         :passport,
                         :drivers_license,
                         :other
                       ]
                     )

            # @!attribute [rw] number_last4
            required :number_last4, String
          end
        end

        class Trustee < BaseModel
          # @!attribute [rw] individual
          required :individual, -> { Increase::Models::Entity::Trust::Trustee::Individual }

          # @!attribute [rw] structure
          required :structure, Increase::Enum.new([:individual])

          class Individual < BaseModel
            # @!attribute [rw] address
            required :address,
                     lambda {
                       Increase::Models::Entity::Trust::Trustee::Individual::Address
                     }

            # @!attribute [rw] date_of_birth
            required :date_of_birth, String

            # @!attribute [rw] identification
            required :identification,
                     lambda {
                       Increase::Models::Entity::Trust::Trustee::Individual::Identification
                     }

            # @!attribute [rw] name_
            required :name_, String

            class Address < BaseModel
              # @!attribute [rw] city
              required :city, String

              # @!attribute [rw] line1
              required :line1, String

              # @!attribute [rw] line2
              required :line2, String

              # @!attribute [rw] state
              required :state, String

              # @!attribute [rw] zip
              required :zip, String
            end

            class Identification < BaseModel
              # @!attribute [rw] method_
              required :method_,
                       Increase::Enum.new(
                         [
                           :social_security_number,
                           :individual_taxpayer_identification_number,
                           :passport,
                           :drivers_license,
                           :other
                         ]
                       )

              # @!attribute [rw] number_last4
              required :number_last4, String
            end
          end
        end
      end
    end
  end
end
