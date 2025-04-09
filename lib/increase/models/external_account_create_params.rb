# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ExternalAccounts#create
    class ExternalAccountCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_number
      #   #/components/schemas/create_an_external_account_parameters/properties/account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute description
      #   #/components/schemas/create_an_external_account_parameters/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute routing_number
      #   #/components/schemas/create_an_external_account_parameters/properties/routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute [r] account_holder
      #   #/components/schemas/create_an_external_account_parameters/properties/account_holder
      #
      #   @return [Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder, nil]
      optional :account_holder, enum: -> { Increase::Models::ExternalAccountCreateParams::AccountHolder }

      # @!parse
      #   # @return [Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder]
      #   attr_writer :account_holder

      # @!attribute [r] funding
      #   #/components/schemas/create_an_external_account_parameters/properties/funding
      #
      #   @return [Symbol, Increase::Models::ExternalAccountCreateParams::Funding, nil]
      optional :funding, enum: -> { Increase::Models::ExternalAccountCreateParams::Funding }

      # @!parse
      #   # @return [Symbol, Increase::Models::ExternalAccountCreateParams::Funding]
      #   attr_writer :funding

      # @!parse
      #   # @param account_number [String]
      #   # @param description [String]
      #   # @param routing_number [String]
      #   # @param account_holder [Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder]
      #   # @param funding [Symbol, Increase::Models::ExternalAccountCreateParams::Funding]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_number:, description:, routing_number:, account_holder: nil, funding: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/create_an_external_account_parameters/properties/account_holder
      module AccountHolder
        extend Increase::Internal::Type::Enum

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/create_an_external_account_parameters/properties/funding
      module Funding
        extend Increase::Internal::Type::Enum

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
