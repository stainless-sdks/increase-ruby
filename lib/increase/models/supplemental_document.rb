# frozen_string_literal: true

module Increase
  module Models
    class SupplementalDocument
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] file_id
      required :file_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:entity_supplemental_document])
    end
  end
end
