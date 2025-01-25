# frozen_string_literal: true

module Increase
  module Models
    class ExternalAccountUpdateParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute [r] account_holder
      #   The type of entity that owns the External Account.
      #
      #   @return [Symbol, Increase::Models::ExternalAccountUpdateParams::AccountHolder, nil]
      optional :account_holder, enum: -> { Increase::Models::ExternalAccountUpdateParams::AccountHolder }

      # @!parse
      #   # @return [Symbol, Increase::Models::ExternalAccountUpdateParams::AccountHolder]
      #   attr_writer :account_holder

      # @!attribute [r] description
      #   The description you choose to give the external account.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] funding
      #   The funding type of the External Account.
      #
      #   @return [Symbol, Increase::Models::ExternalAccountUpdateParams::Funding, nil]
      optional :funding, enum: -> { Increase::Models::ExternalAccountUpdateParams::Funding }

      # @!parse
      #   # @return [Symbol, Increase::Models::ExternalAccountUpdateParams::Funding]
      #   attr_writer :funding

      # @!attribute [r] status
      #   The status of the External Account.
      #
      #   @return [Symbol, Increase::Models::ExternalAccountUpdateParams::Status, nil]
      optional :status, enum: -> { Increase::Models::ExternalAccountUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, Increase::Models::ExternalAccountUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_holder [String]
      #   # @param description [String]
      #   # @param funding [String]
      #   # @param status [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_holder: nil, description: nil, funding: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The type of entity that owns the External Account.
      #
      # @example
      # ```ruby
      # case account_holder
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # end
      # ```
      class AccountHolder < Increase::Enum
        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        finalize!
      end

      # The funding type of the External Account.
      #
      # @example
      # ```ruby
      # case funding
      # in :checking
      #   # ...
      # in :savings
      #   # ...
      # in :other
      #   # ...
      # end
      # ```
      class Funding < Increase::Enum
        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        finalize!
      end

      # The status of the External Account.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :archived
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The External Account is active.
        ACTIVE = :active

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = :archived

        finalize!
      end
    end
  end
end
