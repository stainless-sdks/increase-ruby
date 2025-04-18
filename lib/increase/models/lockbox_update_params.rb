# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Lockboxes#update
    class LockboxUpdateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] description
      #   The description you choose for the Lockbox.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] recipient_name
      #   The recipient name you choose for the Lockbox.
      #
      #   @return [String, nil]
      optional :recipient_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :recipient_name

      # @!attribute [r] status
      #   This indicates if checks can be sent to the Lockbox.
      #
      #   @return [Symbol, Increase::Models::LockboxUpdateParams::Status, nil]
      optional :status, enum: -> { Increase::Models::LockboxUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, Increase::Models::LockboxUpdateParams::Status]
      #   attr_writer :status

      # @!method initialize(description: nil, recipient_name: nil, status: nil, request_options: {})
      #   @param description [String]
      #   @param recipient_name [String]
      #   @param status [Symbol, Increase::Models::LockboxUpdateParams::Status]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      # This indicates if checks can be sent to the Lockbox.
      module Status
        extend Increase::Internal::Type::Enum

        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = :active

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
