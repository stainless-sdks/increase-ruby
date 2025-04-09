# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::InterestPayments#create
      class InterestPaymentCreateParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute account_id
        #   #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute amount
        #   #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [r] accrued_on_account_id
        #   #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/accrued_on_account_id
        #
        #   @return [String, nil]
        optional :accrued_on_account_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :accrued_on_account_id

        # @!attribute [r] period_end
        #   #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/period_end
        #
        #   @return [Time, nil]
        optional :period_end, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :period_end

        # @!attribute [r] period_start
        #   #/components/schemas/sandbox_create_an_interest_payment_parameters/properties/period_start
        #
        #   @return [Time, nil]
        optional :period_start, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :period_start

        # @!parse
        #   # @param account_id [String]
        #   # @param amount [Integer]
        #   # @param accrued_on_account_id [String]
        #   # @param period_end [Time]
        #   # @param period_start [Time]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     account_id:,
        #     amount:,
        #     accrued_on_account_id: nil,
        #     period_end: nil,
        #     period_start: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
