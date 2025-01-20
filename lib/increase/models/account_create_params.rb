# frozen_string_literal: true

module Increase
  module Models
    class AccountCreateParams < Increase::BaseModel
      # @!attribute name
      #   The name you choose for the Account.
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] entity_id
      #   The identifier for the Entity that will own the Account.
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity_id

      # @!attribute [r] informational_entity_id
      #   The identifier of an Entity that, while not owning the Account, is associated with its activity. Its relationship to your group must be `informational`.
      #
      #   @return [String, nil]
      optional :informational_entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :informational_entity_id

      # @!attribute [r] program_id
      #   The identifier for the Program that this Account falls under. Required if you operate more than one Program.
      #
      #   @return [String, nil]
      optional :program_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :program_id

      # @!parse
      #   # @param name [String] The name you choose for the Account.
      #   #
      #   # @param entity_id [String] The identifier for the Entity that will own the Account.
      #   #
      #   # @param informational_entity_id [String] The identifier of an Entity that, while not owning the Account, is associated
      #   #   with its activity. Its relationship to your group must be `informational`.
      #   #
      #   # @param program_id [String] The identifier for the Program that this Account falls under. Required if you
      #   #   operate more than one Program.
      #   #
      #   def initialize(name:, entity_id: nil, informational_entity_id: nil, program_id: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
