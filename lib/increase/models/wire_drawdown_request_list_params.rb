# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::WireDrawdownRequests#list
    class WireDrawdownRequestListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] cursor
      #   #/paths//wire_drawdown_requests/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] idempotency_key
      #   #/paths//wire_drawdown_requests/get/parameters/3/schema
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] limit
      #   #/paths//wire_drawdown_requests/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #
      #   @return [Increase::Models::WireDrawdownRequestListParams::Status, nil]
      optional :status, -> { Increase::Models::WireDrawdownRequestListParams::Status }

      # @!parse
      #   # @return [Increase::Models::WireDrawdownRequestListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param cursor [String]
      #   # @param idempotency_key [String]
      #   # @param limit [Integer]
      #   # @param status [Increase::Models::WireDrawdownRequestListParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Status < Increase::Internal::Type::BaseModel
        # @!attribute [r] in_
        #   #/paths//wire_drawdown_requests/get/parameters/2/schema
        #
        #   @return [Array<Symbol, Increase::Models::WireDrawdownRequestListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::WireDrawdownRequestListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::WireDrawdownRequestListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::WireDrawdownRequestListParams::Status::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/paths//wire_drawdown_requests/get/parameters/2/schema/items
        module In
          extend Increase::Internal::Type::Enum

          # The drawdown request is queued to be submitted to Fedwire.
          PENDING_SUBMISSION = :pending_submission

          # The drawdown request has been sent and the recipient should respond in some way.
          PENDING_RESPONSE = :pending_response

          # The drawdown request has been fulfilled by the recipient.
          FULFILLED = :fulfilled

          # The drawdown request has been refused by the recipient.
          REFUSED = :refused

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
