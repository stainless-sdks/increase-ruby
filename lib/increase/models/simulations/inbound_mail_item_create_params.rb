# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class InboundMailItemCreateParams < Increase::BaseModel
        # @!attribute amount
        #   The amount of the check to be simulated, in cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute lockbox_id
        #   The identifier of the Lockbox to simulate inbound mail to.
        #
        #   @return [String]
        required :lockbox_id, String

        # @!attribute [r] contents_file_id
        #   The file containing the PDF contents. If not present, a default check image file will be used.
        #
        #   @return [String, nil]
        optional :contents_file_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :contents_file_id

        # @!parse
        #   # @param amount [Integer] The amount of the check to be simulated, in cents.
        #   #
        #   # @param lockbox_id [String] The identifier of the Lockbox to simulate inbound mail to.
        #   #
        #   # @param contents_file_id [String] The file containing the PDF contents. If not present, a default check image file
        #   #   will be used.
        #   #
        #   def initialize(amount:, lockbox_id:, contents_file_id: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
