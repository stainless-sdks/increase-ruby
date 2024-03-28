# frozen_string_literal: true

module Increase
  module Models
    class PhysicalCardProfile
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] back_image_file_id
      required :back_image_file_id, String

      # @!attribute [rw] carrier_image_file_id
      required :carrier_image_file_id, String

      # @!attribute [rw] contact_phone
      required :contact_phone, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] creator
      required :creator, Increase::Enum.new([:increase, :user])

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] front_image_file_id
      required :front_image_file_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] is_default
      required :is_default, Increase::BooleanModel

      # @!attribute [rw] status
      required :status,
               Increase::Enum.new(
                 [
                   :pending_creating,
                   :pending_reviewing,
                   :rejected,
                   :pending_submitting,
                   :active,
                   :archived
                 ]
               )

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:physical_card_profile])
    end
  end
end
