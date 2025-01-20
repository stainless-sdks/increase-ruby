# frozen_string_literal: true

module Increase
  module Models
    class LockboxCreateParams < Increase::BaseModel
      # @!attribute account_id
      #   The Account checks sent to this Lockbox should be deposited into.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute [r] description
      #   The description you choose for the Lockbox, for display purposes.
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] recipient_name
      #   The name of the recipient that will receive mail at this location.
      #
      #   @return [String, nil]
      optional :recipient_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :recipient_name

      # @!parse
      #   # @param account_id [String] The Account checks sent to this Lockbox should be deposited into.
      #   #
      #   # @param description [String] The description you choose for the Lockbox, for display purposes.
      #   #
      #   # @param recipient_name [String] The name of the recipient that will receive mail at this location.
      #   #
      #   def initialize(account_id:, description: nil, recipient_name: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
