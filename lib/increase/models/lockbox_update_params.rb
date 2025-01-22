# frozen_string_literal: true

module Increase
  module Models
    class LockboxUpdateParams < Increase::BaseModel
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

      # @!parse
      #   # @param description [String]
      #   # @param recipient_name [String]
      #   # @param status [String]
      #   #
      #   def initialize(description: nil, recipient_name: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # This indicates if checks can be sent to the Lockbox.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :inactive
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = :active

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = :inactive

        finalize!
      end
    end
  end
end
