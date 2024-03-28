# frozen_string_literal: true

module Increase
  module Models
    class File
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] direction
      required :direction, Increase::Enum.new([:to_increase, :from_increase])

      # @!attribute [rw] download_url
      required :download_url, String

      # @!attribute [rw] filename
      required :filename, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] mime_type
      required :mime_type, String

      # @!attribute [rw] purpose
      required :purpose,
               Increase::Enum.new(
                 [
                   :check_image_front,
                   :check_image_back,
                   :mailed_check_image,
                   :check_deposit_mail_item,
                   :form_1099_int,
                   :form_ss_4,
                   :identity_document,
                   :increase_statement,
                   :other,
                   :trust_formation_document,
                   :digital_wallet_artwork,
                   :digital_wallet_app_icon,
                   :physical_card_front,
                   :physical_card_back,
                   :physical_card_carrier,
                   :document_request,
                   :entity_supplemental_document,
                   :export,
                   :unusual_activity_report_attachment
                 ]
               )

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:file])
    end
  end
end
