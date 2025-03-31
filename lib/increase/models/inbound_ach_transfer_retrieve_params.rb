# frozen_string_literal: true

module Increase
  module Models
    class InboundACHTransferRetrieveParams < Increase::BaseModel
      # @!parse
      #   extend Increase::Type::RequestParameters::Converter
      include Increase::RequestParameters

      # @!parse
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
