# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef8fe1acb8055268850de9b2b887f17703 < BaseModel
      # @!attribute [rw] status
      #   How Increase should process checks with this account number printed on them.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:allowed, :check_transfers_only)
    end
  end
end
