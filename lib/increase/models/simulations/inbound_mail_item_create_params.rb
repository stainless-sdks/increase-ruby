# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::InboundMailItems#create
      class InboundMailItemCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

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

        # @!attribute contents_file_id
        #   The file containing the PDF contents. If not present, a default check image file
        #   will be used.
        #
        #   @return [String, nil]
        optional :contents_file_id, String

        # @!method initialize(amount:, lockbox_id:, contents_file_id: nil, request_options: {})
        #   @param amount [Integer]
        #   @param lockbox_id [String]
        #   @param contents_file_id [String]
        #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
