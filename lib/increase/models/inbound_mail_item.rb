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
      #   @return [DateTime]
      required :created_at, DateTime

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
      #   One of the constants defined in {Increase::Models::InboundMailItem::RejectionReason}
      #   @return [Symbol]
      required :rejection_reason, enum: -> { Increase::Models::InboundMailItem::RejectionReason }

      # @!attribute [rw] return_address
      #   The return address as written on the mail item.
      #   @return [Increase::Models::InboundMailItem::ReturnAddress]
      required :return_address, -> { Increase::Models::InboundMailItem::ReturnAddress }

      # @!attribute [rw] status
      #   If the mail item has been processed.
      #   One of the constants defined in {Increase::Models::InboundMailItem::Status}
      #   @return [Symbol]
      required :status, enum: -> { Increase::Models::InboundMailItem::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_mail_item`.
      #   One of the constants defined in {Increase::Models::InboundMailItem::Type}
      #   @return [Symbol]
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

      class ReturnAddress < BaseModel
        # @!attribute [rw] city
        #   The return address city.
        #   @return [String]
        required :city, String

        # @!attribute [rw] line1
        #   The return address line1.
        #   @return [String]
        required :line1, String

        # @!attribute [rw] line2
        #   The return address line2.
        #   @return [String]
        required :line2, String

        # @!attribute [rw] name_
        #   The return address name.
        #   @return [String]
        required :name_, String

        # @!attribute [rw] postal_code
        #   The return address postal code.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] state
        #   The return address state.
        #   @return [String]
        required :state, String
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
    end
  end
end
