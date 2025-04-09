# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CheckTransfers#create
    class CheckTransferCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   #/components/schemas/create_a_check_transfer_parameters/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/create_a_check_transfer_parameters/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute fulfillment_method
      #   #/components/schemas/create_a_check_transfer_parameters/properties/fulfillment_method
      #
      #   @return [Symbol, Increase::Models::CheckTransferCreateParams::FulfillmentMethod]
      required :fulfillment_method, enum: -> { Increase::Models::CheckTransferCreateParams::FulfillmentMethod }

      # @!attribute source_account_number_id
      #   #/components/schemas/create_a_check_transfer_parameters/properties/source_account_number_id
      #
      #   @return [String]
      required :source_account_number_id, String

      # @!attribute [r] physical_check
      #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check
      #
      #   @return [Increase::Models::CheckTransferCreateParams::PhysicalCheck, nil]
      optional :physical_check, -> { Increase::Models::CheckTransferCreateParams::PhysicalCheck }

      # @!parse
      #   # @return [Increase::Models::CheckTransferCreateParams::PhysicalCheck]
      #   attr_writer :physical_check

      # @!attribute [r] require_approval
      #   #/components/schemas/create_a_check_transfer_parameters/properties/require_approval
      #
      #   @return [Boolean, nil]
      optional :require_approval, Increase::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :require_approval

      # @!attribute [r] third_party
      #   #/components/schemas/create_a_check_transfer_parameters/properties/third_party
      #
      #   @return [Increase::Models::CheckTransferCreateParams::ThirdParty, nil]
      optional :third_party, -> { Increase::Models::CheckTransferCreateParams::ThirdParty }

      # @!parse
      #   # @return [Increase::Models::CheckTransferCreateParams::ThirdParty]
      #   attr_writer :third_party

      # @!parse
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param fulfillment_method [Symbol, Increase::Models::CheckTransferCreateParams::FulfillmentMethod]
      #   # @param source_account_number_id [String]
      #   # @param physical_check [Increase::Models::CheckTransferCreateParams::PhysicalCheck]
      #   # @param require_approval [Boolean]
      #   # @param third_party [Increase::Models::CheckTransferCreateParams::ThirdParty]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id:,
      #     amount:,
      #     fulfillment_method:,
      #     source_account_number_id:,
      #     physical_check: nil,
      #     require_approval: nil,
      #     third_party: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/create_a_check_transfer_parameters/properties/fulfillment_method
      module FulfillmentMethod
        extend Increase::Internal::Type::Enum

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class PhysicalCheck < Increase::Internal::Type::BaseModel
        # @!attribute mailing_address
        #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address
        #
        #   @return [Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress]
        required :mailing_address,
                 -> { Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress }

        # @!attribute memo
        #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/memo
        #
        #   @return [String]
        required :memo, String

        # @!attribute recipient_name
        #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/recipient_name
        #
        #   @return [String]
        required :recipient_name, String

        # @!attribute [r] check_number
        #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/check_number
        #
        #   @return [String, nil]
        optional :check_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :check_number

        # @!attribute [r] note
        #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/note
        #
        #   @return [String, nil]
        optional :note, String

        # @!parse
        #   # @return [String]
        #   attr_writer :note

        # @!attribute [r] return_address
        #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address
        #
        #   @return [Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress, nil]
        optional :return_address, -> { Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress }

        # @!parse
        #   # @return [Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress]
        #   attr_writer :return_address

        # @!attribute [r] signature_text
        #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/signature_text
        #
        #   @return [String, nil]
        optional :signature_text, String

        # @!parse
        #   # @return [String]
        #   attr_writer :signature_text

        # @!parse
        #   # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check
        #   #
        #   # @param mailing_address [Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress]
        #   # @param memo [String]
        #   # @param recipient_name [String]
        #   # @param check_number [String]
        #   # @param note [String]
        #   # @param return_address [Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress]
        #   # @param signature_text [String]
        #   #
        #   def initialize(
        #     mailing_address:,
        #     memo:,
        #     recipient_name:,
        #     check_number: nil,
        #     note: nil,
        #     return_address: nil,
        #     signature_text: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::CheckTransferCreateParams::PhysicalCheck#mailing_address
        class MailingAddress < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute postal_code
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/postal_code
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute state
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute [r] line2
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/line2
          #
          #   @return [String, nil]
          optional :line2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :line2

          # @!parse
          #   # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param postal_code [String]
          #   # @param state [String]
          #   # @param line2 [String]
          #   #
          #   def initialize(city:, line1:, postal_code:, state:, line2: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::CheckTransferCreateParams::PhysicalCheck#return_address
        class ReturnAddress < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute name
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/name
          #
          #   @return [String]
          required :name, String

          # @!attribute postal_code
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/postal_code
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute state
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute [r] line2
          #   #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/line2
          #
          #   @return [String, nil]
          optional :line2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :line2

          # @!parse
          #   # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param name [String]
          #   # @param postal_code [String]
          #   # @param state [String]
          #   # @param line2 [String]
          #   #
          #   def initialize(city:, line1:, name:, postal_code:, state:, line2: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      class ThirdParty < Increase::Internal::Type::BaseModel
        # @!attribute [r] check_number
        #   #/components/schemas/create_a_check_transfer_parameters/properties/third_party/properties/check_number
        #
        #   @return [String, nil]
        optional :check_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :check_number

        # @!attribute [r] recipient_name
        #   #/components/schemas/create_a_check_transfer_parameters/properties/third_party/properties/recipient_name
        #
        #   @return [String, nil]
        optional :recipient_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :recipient_name

        # @!parse
        #   # #/components/schemas/create_a_check_transfer_parameters/properties/third_party
        #   #
        #   # @param check_number [String]
        #   # @param recipient_name [String]
        #   #
        #   def initialize(check_number: nil, recipient_name: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
