# frozen_string_literal: true

module Increase
  module Models
    class DigitalCardProfile < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] app_icon_file_id
      required :app_icon_file_id, String

      # @!attribute [rw] background_image_file_id
      required :background_image_file_id, String

      # @!attribute [rw] card_description
      required :card_description, String

      # @!attribute [rw] contact_email
      required :contact_email, String

      # @!attribute [rw] contact_phone
      required :contact_phone, String

      # @!attribute [rw] contact_website
      required :contact_website, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] is_default
      required :is_default, Increase::BooleanModel

      # @!attribute [rw] issuer_name
      required :issuer_name, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new(:pending, :rejected, :active, :archived)

      # @!attribute [rw] text_color
      required :text_color, -> { Increase::Models::DigitalCardProfile::TextColor }

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:digital_card_profile)

      class TextColor < BaseModel
        # @!attribute [rw] blue
        required :blue, Integer

        # @!attribute [rw] green
        required :green, Integer

        # @!attribute [rw] red
        required :red, Integer
      end
    end
  end
end
