# frozen_string_literal: true

module Increase
  module Models
    class CheckTransferCreateParams < Increase::BaseModel
      # @!attribute account_id
      #   The identifier for the account that will send the transfer.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   The transfer amount in USD cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute source_account_number_id
      #   The identifier of the Account Number from which to send the transfer and print on the check.
      #
      #   @return [String]
      required :source_account_number_id, String

      # @!attribute fulfillment_method
      #   Whether Increase will print and mail the check or if you will do it yourself.
      #
      #   @return [Symbol, Increase::Models::CheckTransferCreateParams::FulfillmentMethod]
      optional :fulfillment_method,
               enum: -> {
                 Increase::Models::CheckTransferCreateParams::FulfillmentMethod
               }

      # @!attribute physical_check
      #   Details relating to the physical check that Increase will print and mail. This is required if `fulfillment_method` is equal to `physical_check`. It must not be included if any other `fulfillment_method` is provided.
      #
      #   @return [Increase::Models::CheckTransferCreateParams::PhysicalCheck]
      optional :physical_check, -> { Increase::Models::CheckTransferCreateParams::PhysicalCheck }

      # @!attribute require_approval
      #   Whether the transfer requires explicit approval via the dashboard or API.
      #
      #   @return [Boolean]
      optional :require_approval, Increase::BooleanModel

      # @!attribute third_party
      #   Details relating to the custom fulfillment you will perform. This is required if `fulfillment_method` is equal to `third_party`. It must not be included if any other `fulfillment_method` is provided.
      #
      #   @return [Increase::Models::CheckTransferCreateParams::ThirdParty]
      optional :third_party, -> { Increase::Models::CheckTransferCreateParams::ThirdParty }

      # @!parse
      #   # @param account_id [String] The identifier for the account that will send the transfer.
      #   #
      #   # @param amount [Integer] The transfer amount in USD cents.
      #   #
      #   # @param source_account_number_id [String] The identifier of the Account Number from which to send the transfer and print
      #   #   on the check.
      #   #
      #   # @param fulfillment_method [String] Whether Increase will print and mail the check or if you will do it yourself.
      #   #
      #   # @param physical_check [Increase::Models::CheckTransferCreateParams::PhysicalCheck] Details relating to the physical check that Increase will print and mail. This
      #   #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
      #   #   included if any other `fulfillment_method` is provided.
      #   #
      #   # @param require_approval [Boolean] Whether the transfer requires explicit approval via the dashboard or API.
      #   #
      #   # @param third_party [Increase::Models::CheckTransferCreateParams::ThirdParty] Details relating to the custom fulfillment you will perform. This is required if
      #   #   `fulfillment_method` is equal to `third_party`. It must not be included if any
      #   #   other `fulfillment_method` is provided.
      #   #
      #   def initialize(
      #     account_id:,
      #     amount:,
      #     source_account_number_id:,
      #     fulfillment_method: nil,
      #     physical_check: nil,
      #     require_approval: nil,
      #     third_party: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # Whether Increase will print and mail the check or if you will do it yourself.
      #
      # @example
      #
      # ```ruby
      # case fulfillment_method
      # in :physical_check
      #   # ...
      # in :third_party
      #   # ...
      # end
      # ```
      class FulfillmentMethod < Increase::Enum
        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party

        finalize!
      end

      # @example
      #
      # ```ruby
      # physical_check => {
      #   mailing_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress,
      #   memo: String,
      #   recipient_name: String,
      #   note: String,
      #   return_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress
      # }
      # ```
      class PhysicalCheck < Increase::BaseModel
        # @!attribute mailing_address
        #   Details for where Increase will mail the check.
        #
        #   @return [Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress]
        required :mailing_address,
                 -> { Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress }

        # @!attribute memo
        #   The descriptor that will be printed on the memo field on the check.
        #
        #   @return [String]
        required :memo, String

        # @!attribute recipient_name
        #   The name that will be printed on the check in the 'To:' field.
        #
        #   @return [String]
        required :recipient_name, String

        # @!attribute note
        #   The descriptor that will be printed on the letter included with the check.
        #
        #   @return [String]
        optional :note, String

        # @!attribute return_address
        #   The return address to be printed on the check. If omitted this will default to an Increase-owned address that will mark checks as delivery failed and shred them.
        #
        #   @return [Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress]
        optional :return_address,
                 -> {
                   Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress
                 }

        # @!attribute signature_text
        #   The text that will appear as the signature on the check in cursive font. If not provided, the check will be printed with 'No signature required'.
        #
        #   @return [String]
        optional :signature_text, String

        # @!parse
        #   # Details relating to the physical check that Increase will print and mail. This
        #   #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
        #   #   included if any other `fulfillment_method` is provided.
        #   #
        #   # @param mailing_address [Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress] Details for where Increase will mail the check.
        #   #
        #   # @param memo [String] The descriptor that will be printed on the memo field on the check.
        #   #
        #   # @param recipient_name [String] The name that will be printed on the check in the 'To:' field.
        #   #
        #   # @param note [String] The descriptor that will be printed on the letter included with the check.
        #   #
        #   # @param return_address [Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress] The return address to be printed on the check. If omitted this will default to
        #   #   an Increase-owned address that will mark checks as delivery failed and shred
        #   #   them.
        #   #
        #   # @param signature_text [String] The text that will appear as the signature on the check in cursive font. If not
        #   #   provided, the check will be printed with 'No signature required'.
        #   #
        #   def initialize(mailing_address:, memo:, recipient_name:, note: nil, return_address: nil, signature_text: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # mailing_address => {
        #   city: String,
        #   line1: String,
        #   postal_code: String,
        #   state: String,
        #   line2: String
        # }
        # ```
        class MailingAddress < Increase::BaseModel
          # @!attribute city
          #   The city component of the check's destination address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the address component of the check's destination address.
          #
          #   @return [String]
          required :line1, String

          # @!attribute postal_code
          #   The postal code component of the check's destination address.
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute state
          #   The US state component of the check's destination address.
          #
          #   @return [String]
          required :state, String

          # @!attribute line2
          #   The second line of the address component of the check's destination address.
          #
          #   @return [String]
          optional :line2, String

          # @!attribute name
          #   The name component of the check's destination address. Defaults to the provided `recipient_name` parameter.
          #
          #   @return [String]
          optional :name, String

          # @!parse
          #   # Details for where Increase will mail the check.
          #   #
          #   # @param city [String] The city component of the check's destination address.
          #   #
          #   # @param line1 [String] The first line of the address component of the check's destination address.
          #   #
          #   # @param postal_code [String] The postal code component of the check's destination address.
          #   #
          #   # @param state [String] The US state component of the check's destination address.
          #   #
          #   # @param line2 [String] The second line of the address component of the check's destination address.
          #   #
          #   # @param name [String] The name component of the check's destination address. Defaults to the provided
          #   #   `recipient_name` parameter.
          #   #
          #   def initialize(city:, line1:, postal_code:, state:, line2: nil, name: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # return_address => {
        #   city: String,
        #   line1: String,
        #   name: String,
        #   postal_code: String,
        #   state: String
        # }
        # ```
        class ReturnAddress < Increase::BaseModel
          # @!attribute city
          #   The city of the return address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the return address.
          #
          #   @return [String]
          required :line1, String

          # @!attribute name
          #   The name of the return address.
          #
          #   @return [String]
          required :name, String

          # @!attribute postal_code
          #   The postal code of the return address.
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute state
          #   The US state of the return address.
          #
          #   @return [String]
          required :state, String

          # @!attribute line2
          #   The second line of the return address.
          #
          #   @return [String]
          optional :line2, String

          # @!parse
          #   # The return address to be printed on the check. If omitted this will default to
          #   #   an Increase-owned address that will mark checks as delivery failed and shred
          #   #   them.
          #   #
          #   # @param city [String] The city of the return address.
          #   #
          #   # @param line1 [String] The first line of the return address.
          #   #
          #   # @param name [String] The name of the return address.
          #   #
          #   # @param postal_code [String] The postal code of the return address.
          #   #
          #   # @param state [String] The US state of the return address.
          #   #
          #   # @param line2 [String] The second line of the return address.
          #   #
          #   def initialize(city:, line1:, name:, postal_code:, state:, line2: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # @example
      #
      # ```ruby
      # third_party => {
      #   check_number: String
      # }
      # ```
      class ThirdParty < Increase::BaseModel
        # @!attribute check_number
        #   The check number you will print on the check. This should not contain leading zeroes. If this is omitted, Increase will generate a check number for you; you should inspect the response and use that check number.
        #
        #   @return [String]
        optional :check_number, String

        # @!parse
        #   # Details relating to the custom fulfillment you will perform. This is required if
        #   #   `fulfillment_method` is equal to `third_party`. It must not be included if any
        #   #   other `fulfillment_method` is provided.
        #   #
        #   # @param check_number [String] The check number you will print on the check. This should not contain leading
        #   #   zeroes. If this is omitted, Increase will generate a check number for you; you
        #   #   should inspect the response and use that check number.
        #   #
        #   def initialize(check_number: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
