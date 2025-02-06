# typed: strong

module Increase
  module Models
    class InboundMailItem < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :file_id

      sig { returns(T.nilable(String)) }
      attr_accessor :lockbox_id

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :rejection_reason

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          created_at: Time,
          file_id: String,
          lockbox_id: T.nilable(String),
          recipient_name: T.nilable(String),
          rejection_reason: T.nilable(Symbol),
          status: Symbol,
          type: Symbol
        ).void
      end
      def initialize(
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
        override.returns(
          {
            id: String,
            created_at: Time,
            file_id: String,
            lockbox_id: T.nilable(String),
            recipient_name: T.nilable(String),
            rejection_reason: T.nilable(Symbol),
            status: Symbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class RejectionReason < Increase::Enum
        abstract!

        # The mail item does not match any lockbox.
        NO_MATCHING_LOCKBOX = T.let(:no_matching_lockbox, T.nilable(Symbol))

        # The mail item does not contain a check.
        NO_CHECK = T.let(:no_check, T.nilable(Symbol))

        # The Lockbox or its associated Account is not active.
        LOCKBOX_NOT_ACTIVE = T.let(:lockbox_not_active, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

        # The mail item is pending processing.
        PENDING = :pending

        # The mail item has been processed.
        PROCESSED = :processed

        # The mail item has been rejected.
        REJECTED = :rejected

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        INBOUND_MAIL_ITEM = :inbound_mail_item

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
