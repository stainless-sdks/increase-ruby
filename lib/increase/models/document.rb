# frozen_string_literal: true

module Increase
  module Models
    class Document < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] category
      required :category,
               Increase::Enum.new([:form_1099_int, :proof_of_authorization, :company_information])

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] entity_id
      required :entity_id, String

      # @!attribute [rw] file_id
      required :file_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:document])
    end
  end
end
