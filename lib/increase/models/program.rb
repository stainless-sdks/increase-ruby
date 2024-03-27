# frozen_string_literal: true

module Increase
  module Models
    class Program
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] billing_account_id
      required :billing_account_id, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] name_
      required :name_, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:program])

      # @!attribute [rw] updated_at
      required :updated_at, String
    end
  end
end
