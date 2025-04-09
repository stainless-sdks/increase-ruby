# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::IntrafiAccountEnrollments#create
    class IntrafiAccountEnrollmentCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   #/components/schemas/enroll_an_account_in_the_intrafi_deposit_sweep_network_parameters/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute email_address
      #   #/components/schemas/enroll_an_account_in_the_intrafi_deposit_sweep_network_parameters/properties/email_address
      #
      #   @return [String]
      required :email_address, String

      # @!parse
      #   # @param account_id [String]
      #   # @param email_address [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_id:, email_address:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
