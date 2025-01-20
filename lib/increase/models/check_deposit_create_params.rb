# frozen_string_literal: true

module Increase
  module Models
    class CheckDepositCreateParams < Increase::BaseModel
      # @!attribute account_id
      #   The identifier for the Account to deposit the check in.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   The deposit amount in USD cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute back_image_file_id
      #   The File containing the check's back image.
      #
      #   @return [String]
      required :back_image_file_id, String

      # @!attribute front_image_file_id
      #   The File containing the check's front image.
      #
      #   @return [String]
      required :front_image_file_id, String

      # @!attribute [r] description
      #   The description you choose to give the Check Deposit, for display purposes only.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!parse
      #   # @param account_id [String] The identifier for the Account to deposit the check in.
      #   #
      #   # @param amount [Integer] The deposit amount in USD cents.
      #   #
      #   # @param back_image_file_id [String] The File containing the check's back image.
      #   #
      #   # @param front_image_file_id [String] The File containing the check's front image.
      #   #
      #   # @param description [String] The description you choose to give the Check Deposit, for display purposes only.
      #   #
      #   def initialize(account_id:, amount:, back_image_file_id:, front_image_file_id:, description: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
