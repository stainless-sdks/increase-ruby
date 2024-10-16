# frozen_string_literal: true

module Increase
  module Models
    class InboundMailItem < BaseModel
      # @!attribute [rw] id
      #   The Inbound Mail Item identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Inbound Mail Item was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] file_id
      #   The identifier for the File containing the scanned contents of the mail item.
      #   @return [String]
      required :file_id, String

      # @!attribute [rw] lockbox_id
      #   The identifier for the Lockbox that received this mail item. For mail items that could not be processed due to an invalid address, this will be null.
      #   @return [String]
      required :lockbox_id, String

      # @!attribute [rw] recipient_name
      #   The recipient name as written on the mail item.
      #   @return [String]
      required :recipient_name, String

      # @!attribute [rw] rejection_reason
      #   If the mail item has been rejected, why it was rejected.
      #   @return [Symbol, Increase::Models::InboundMailItem::RejectionReason]
      required :rejection_reason, enum: -> { Increase::Models::InboundMailItem::RejectionReason }

      # @!attribute [rw] status
      #   If the mail item has been processed.
      #   @return [Symbol, Increase::Models::InboundMailItem::Status]
      required :status, enum: -> { Increase::Models::InboundMailItem::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_mail_item`.
      #   @return [Symbol, Increase::Models::InboundMailItem::Type]
      required :type, enum: -> { Increase::Models::InboundMailItem::Type }

      # If the mail item has been rejected, why it was rejected.
      class RejectionReason < Increase::Enum
        # The mail item does not match any lockbox.
        NO_MATCHING_LOCKBOX = :no_matching_lockbox

        # The mail item does not contain a check.
        NO_CHECK = :no_check

        # The Lockbox or its associataed Account is not active.
        LOCKBOX_NOT_ACTIVE = :lockbox_not_active
      end

      # If the mail item has been processed.
      class Status < Increase::Enum
        # The mail item is pending processing.
        PENDING = :pending

        # The mail item has been processed.
        PROCESSED = :processed

        # The mail item has been rejected.
        REJECTED = :rejected
      end

      # A constant representing the object's type. For this resource it will always be `inbound_mail_item`.
      class Type < Increase::Enum
        INBOUND_MAIL_ITEM = :inbound_mail_item
      end

      # Create a new instance of InboundMailItem from a Hash of raw data.
      #
      # @overload initialize(id: nil, created_at: nil, file_id: nil, lockbox_id: nil, recipient_name: nil, rejection_reason: nil, status: nil, type: nil)
      # @param id [String] The Inbound Mail Item identifier.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Inbound
      #   Mail Item was created.
      # @param file_id [String] The identifier for the File containing the scanned contents of the mail item.
      # @param lockbox_id [String] The identifier for the Lockbox that received this mail item. For mail items that
      #   could not be processed due to an invalid address, this will be null.
      # @param recipient_name [String] The recipient name as written on the mail item.
      # @param rejection_reason [String] If the mail item has been rejected, why it was rejected.
      # @param status [String] If the mail item has been processed.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `inbound_mail_item`.
      def initialize(data = {})
        super
      end
    end
  end
end
