# frozen_string_literal: true

module Increase
  module Models
    class IntrafiAccountEnrollmentCreateParams < Increase::BaseModel
      # @!parse
      #   extend Increase::Type::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute account_id
      #   The identifier for the account to be added to IntraFi.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute email_address
      #   The contact email for the account owner, to be shared with IntraFi.
      #
      #   @return [String]
      required :email_address, String

      # @!parse
      #   # @param account_id [String]
      #   # @param email_address [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_id:, email_address:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
