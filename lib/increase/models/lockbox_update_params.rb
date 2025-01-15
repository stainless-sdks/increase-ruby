# frozen_string_literal: true

module Increase
  module Models
    class LockboxUpdateParams < Increase::BaseModel
      # @!attribute description
      #   The description you choose for the Lockbox.
      #
      #   @return [String]
      optional :description, String

      # @!attribute recipient_name
      #   The recipient name you choose for the Lockbox.
      #
      #   @return [String]
      optional :recipient_name, String

      # @!attribute status
      #   This indicates if checks can be sent to the Lockbox.
      #
      #   @return [Symbol, Increase::Models::LockboxUpdateParams::Status]
      optional :status, enum: -> { Increase::Models::LockboxUpdateParams::Status }

      # @!parse
      #   # @param description [String] The description you choose for the Lockbox.
      #   #
      #   # @param recipient_name [String] The recipient name you choose for the Lockbox.
      #   #
      #   # @param status [String] This indicates if checks can be sent to the Lockbox.
      #   #
      #   def initialize(description: nil, recipient_name: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # This indicates if checks can be sent to the Lockbox.
      #
      # @example
      #
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
