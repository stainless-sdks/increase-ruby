# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122 < BaseModel
      # @!attribute [rw] method_
      #   A method that can be used to verify the individual's identity.
      #   @return [Symbol]
      required :method_,
               Increase::Enum.new(
                 :social_security_number,
                 :individual_taxpayer_identification_number,
                 :passport,
                 :drivers_license,
                 :other
               )

      # @!attribute [rw] number
      #   An identification number that can be used to verify the individual's identity, such as a social security number.
      #   @return [String]
      required :number, String

      # @!attribute [rw] drivers_license
      #   Information about the United States driver's license used for identification. Required if `method` is equal to `drivers_license`.
      #   @return [Increase::Models::UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122::DriversLicense]
      optional :drivers_license,
               -> { Increase::Models::UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122::DriversLicense }

      # @!attribute [rw] other
      #   Information about the identification document provided. Required if `method` is equal to `other`.
      #   @return [Increase::Models::UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122::Other]
      optional :other, -> { Increase::Models::UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122::Other }

      # @!attribute [rw] passport
      #   Information about the passport used for identification. Required if `method` is equal to `passport`.
      #   @return [Increase::Models::UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122::Passport]
      optional :passport, -> { Increase::Models::UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122::Passport }

      class DriversLicense < BaseModel
        # @!attribute [rw] expiration_date
        #   The driver's license's expiration date in YYYY-MM-DD format.
        #   @return [String]
        required :expiration_date, String

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
        #   @return [String]
        optional :expiration_date, String
      end

      class Passport < BaseModel
        # @!attribute [rw] country
        #   The country that issued the passport.
        #   @return [String]
        required :country, String

        # @!attribute [rw] expiration_date
        #   The passport's expiration date in YYYY-MM-DD format.
        #   @return [String]
        required :expiration_date, String

        # @!attribute [rw] file_id
        #   The identifier of the File containing the passport.
        #   @return [String]
        required :file_id, String
      end
    end
  end
end
