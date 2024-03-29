# frozen_string_literal: true

module Increase
  module Models
    class Group < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] ach_debit_status
      required :ach_debit_status, Increase::Enum.new([:disabled, :enabled])

      # @!attribute [rw] activation_status
      required :activation_status, Increase::Enum.new([:unactivated, :activated])

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:group])
    end
  end
end
