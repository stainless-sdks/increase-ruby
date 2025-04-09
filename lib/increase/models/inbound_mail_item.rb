# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundMailItems#retrieve
    class InboundMailItem < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/inbound_mail_item/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   #/components/schemas/inbound_mail_item/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute file_id
      #   #/components/schemas/inbound_mail_item/properties/file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute lockbox_id
      #   #/components/schemas/inbound_mail_item/properties/lockbox_id
      #
      #   @return [String, nil]
      required :lockbox_id, String, nil?: true

      # @!attribute recipient_name
      #   #/components/schemas/inbound_mail_item/properties/recipient_name
      #
      #   @return [String, nil]
      required :recipient_name, String, nil?: true

      # @!attribute rejection_reason
      #   #/components/schemas/inbound_mail_item/properties/rejection_reason
      #
      #   @return [Symbol, Increase::Models::InboundMailItem::RejectionReason, nil]
      required :rejection_reason, enum: -> { Increase::Models::InboundMailItem::RejectionReason }, nil?: true

      # @!attribute status
      #   #/components/schemas/inbound_mail_item/properties/status
      #
      #   @return [Symbol, Increase::Models::InboundMailItem::Status]
      required :status, enum: -> { Increase::Models::InboundMailItem::Status }

      # @!attribute type
      #   #/components/schemas/inbound_mail_item/properties/type
      #
      #   @return [Symbol, Increase::Models::InboundMailItem::Type]
      required :type, enum: -> { Increase::Models::InboundMailItem::Type }

      # @!parse
      #   # #/components/schemas/inbound_mail_item
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param file_id [String]
      #   # @param lockbox_id [String, nil]
      #   # @param recipient_name [String, nil]
      #   # @param rejection_reason [Symbol, Increase::Models::InboundMailItem::RejectionReason, nil]
      #   # @param status [Symbol, Increase::Models::InboundMailItem::Status]
      #   # @param type [Symbol, Increase::Models::InboundMailItem::Type]
      #   #
      #   def initialize(id:, created_at:, file_id:, lockbox_id:, recipient_name:, rejection_reason:, status:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/inbound_mail_item/properties/rejection_reason
      #
      # @see Increase::Models::InboundMailItem#rejection_reason
      module RejectionReason
        extend Increase::Internal::Type::Enum

        # The mail item does not match any lockbox.
        NO_MATCHING_LOCKBOX = :no_matching_lockbox

        # The mail item does not contain a check.
        NO_CHECK = :no_check

        # The Lockbox or its associated Account is not active.
        LOCKBOX_NOT_ACTIVE = :lockbox_not_active

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/inbound_mail_item/properties/status
      #
      # @see Increase::Models::InboundMailItem#status
      module Status
        extend Increase::Internal::Type::Enum

        # The mail item is pending processing.
        PENDING = :pending

        # The mail item has been processed.
        PROCESSED = :processed

        # The mail item has been rejected.
        REJECTED = :rejected

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/inbound_mail_item/properties/type
      #
      # @see Increase::Models::InboundMailItem#type
      module Type
        extend Increase::Internal::Type::Enum

        INBOUND_MAIL_ITEM = :inbound_mail_item

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
