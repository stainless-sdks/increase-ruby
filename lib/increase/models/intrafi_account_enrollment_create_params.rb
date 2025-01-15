# frozen_string_literal: true

module Increase
  module Models
    class IntrafiAccountEnrollmentCreateParams < Increase::BaseModel
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
      #   # @param account_id [String] The identifier for the account to be added to IntraFi.
      #   #
      #   # @param email_address [String] The contact email for the account owner, to be shared with IntraFi.
      #   #
      #   def initialize(account_id:, email_address:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
