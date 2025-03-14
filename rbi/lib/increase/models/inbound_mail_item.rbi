# typed: strong

module Increase
  module Models
    class InboundMailItem < Increase::BaseModel
      # The Inbound Mail Item identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Inbound
      #   Mail Item was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The identifier for the File containing the scanned contents of the mail item.
      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      # The identifier for the Lockbox that received this mail item. For mail items that
      #   could not be processed due to an invalid address, this will be null.
      sig { returns(T.nilable(String)) }
      def lockbox_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def lockbox_id=(_)
      end

      # The recipient name as written on the mail item.
      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_name=(_)
      end

      # If the mail item has been rejected, why it was rejected.
      sig { returns(T.nilable(Symbol)) }
      def rejection_reason
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def rejection_reason=(_)
      end

      # If the mail item has been processed.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_mail_item`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Inbound Mail Items represent pieces of physical mail delivered to a Lockbox.
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
        )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, file_id:, lockbox_id:, recipient_name:, rejection_reason:, status:, type:)
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
              rejection_reason: T.nilable(Symbol),
              status: Symbol,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      # If the mail item has been rejected, why it was rejected.
      class RejectionReason < Increase::Enum
        abstract!

        # The mail item does not match any lockbox.
        NO_MATCHING_LOCKBOX = T.let(:no_matching_lockbox, T.nilable(Symbol))

        # The mail item does not contain a check.
        NO_CHECK = T.let(:no_check, T.nilable(Symbol))

        # The Lockbox or its associated Account is not active.
        LOCKBOX_NOT_ACTIVE = T.let(:lockbox_not_active, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # If the mail item has been processed.
      class Status < Increase::Enum
        abstract!

        # The mail item is pending processing.
        PENDING = :pending

        # The mail item has been processed.
        PROCESSED = :processed

        # The mail item has been rejected.
        REJECTED = :rejected

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_mail_item`.
      class Type < Increase::Enum
        abstract!

        INBOUND_MAIL_ITEM = :inbound_mail_item

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
