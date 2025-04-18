# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ExternalAccounts#create
    class ExternalAccountCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_number
      #   The account number for the destination account.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute description
      #   The name you choose for the Account.
      #
      #   @return [String]
      required :description, String

      # @!attribute routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute account_holder
      #   The type of entity that owns the External Account.
      #
      #   @return [Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder, nil]
      optional :account_holder, enum: -> { Increase::Models::ExternalAccountCreateParams::AccountHolder }

      # @!attribute funding
      #   The type of the destination account. Defaults to `checking`.
      #
      #   @return [Symbol, Increase::Models::ExternalAccountCreateParams::Funding, nil]
      optional :funding, enum: -> { Increase::Models::ExternalAccountCreateParams::Funding }

      # @!method initialize(account_number:, description:, routing_number:, account_holder: nil, funding: nil, request_options: {})
      #   @param account_number [String]
      #   @param description [String]
      #   @param routing_number [String]
      #   @param account_holder [Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder]
      #   @param funding [Symbol, Increase::Models::ExternalAccountCreateParams::Funding]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      # The type of entity that owns the External Account.
      module AccountHolder
        extend Increase::Internal::Type::Enum

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of the destination account. Defaults to `checking`.
      module Funding
        extend Increase::Internal::Type::Enum

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
