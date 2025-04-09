# typed: strong

module Increase
  module Models
    class InboundMailItem < Increase::Internal::Type::BaseModel
      # #/components/schemas/inbound_mail_item/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/inbound_mail_item/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/inbound_mail_item/properties/file_id
      sig { returns(String) }
      attr_accessor :file_id

      # #/components/schemas/inbound_mail_item/properties/lockbox_id
      sig { returns(T.nilable(String)) }
      attr_accessor :lockbox_id

      # #/components/schemas/inbound_mail_item/properties/recipient_name
      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      # #/components/schemas/inbound_mail_item/properties/rejection_reason
      sig { returns(T.nilable(Increase::Models::InboundMailItem::RejectionReason::TaggedSymbol)) }
      attr_accessor :rejection_reason

      # #/components/schemas/inbound_mail_item/properties/status
      sig { returns(Increase::Models::InboundMailItem::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/inbound_mail_item/properties/type
      sig { returns(Increase::Models::InboundMailItem::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/inbound_mail_item
      sig do
        params(
          id: String,
          created_at: Time,
          file_id: String,
          lockbox_id: T.nilable(String),
          recipient_name: T.nilable(String),
          rejection_reason: T.nilable(Increase::Models::InboundMailItem::RejectionReason::OrSymbol),
          status: Increase::Models::InboundMailItem::Status::OrSymbol,
          type: Increase::Models::InboundMailItem::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        file_id:,
        lockbox_id:,
        recipient_name:,
        rejection_reason:,
        status:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              file_id: String,
              lockbox_id: T.nilable(String),
              recipient_name: T.nilable(String),
              rejection_reason: T.nilable(Increase::Models::InboundMailItem::RejectionReason::TaggedSymbol),
              status: Increase::Models::InboundMailItem::Status::TaggedSymbol,
              type: Increase::Models::InboundMailItem::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/inbound_mail_item/properties/rejection_reason
      module RejectionReason
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundMailItem::RejectionReason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundMailItem::RejectionReason::TaggedSymbol) }

        # The mail item does not match any lockbox.
        NO_MATCHING_LOCKBOX =
          T.let(:no_matching_lockbox, Increase::Models::InboundMailItem::RejectionReason::TaggedSymbol)

        # The mail item does not contain a check.
        NO_CHECK = T.let(:no_check, Increase::Models::InboundMailItem::RejectionReason::TaggedSymbol)

        # The Lockbox or its associated Account is not active.
        LOCKBOX_NOT_ACTIVE =
          T.let(:lockbox_not_active, Increase::Models::InboundMailItem::RejectionReason::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundMailItem::RejectionReason::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/inbound_mail_item/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundMailItem::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundMailItem::Status::TaggedSymbol) }

        # The mail item is pending processing.
        PENDING = T.let(:pending, Increase::Models::InboundMailItem::Status::TaggedSymbol)

        # The mail item has been processed.
        PROCESSED = T.let(:processed, Increase::Models::InboundMailItem::Status::TaggedSymbol)

        # The mail item has been rejected.
        REJECTED = T.let(:rejected, Increase::Models::InboundMailItem::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundMailItem::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/inbound_mail_item/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundMailItem::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::InboundMailItem::Type::TaggedSymbol) }

        INBOUND_MAIL_ITEM = T.let(:inbound_mail_item, Increase::Models::InboundMailItem::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundMailItem::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
