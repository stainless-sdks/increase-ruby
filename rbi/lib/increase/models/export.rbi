# typed: strong

module Increase
  module Models
    class Export < Increase::BaseModel
      # The Export identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The category of the Export. We may add additional possible values for this enum
      #   over time; your application should be able to handle that gracefully.
      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      # The time the Export was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # A URL at which the Export's file can be downloaded. This will be present when
      #   the Export's status transitions to `complete`.
      sig { returns(T.nilable(String)) }
      def file_download_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def file_download_url=(_)
      end

      # The File containing the contents of the Export. This will be present when the
      #   Export's status transitions to `complete`.
      sig { returns(T.nilable(String)) }
      def file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def file_id=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # The status of the Export.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `export`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Exports are batch summaries of your Increase data. You can make them from the
      #   API or dashboard. Since they can take a while, they are generated
      #   asynchronously. We send a webhook when they are ready. For more information,
      #   please read our
      #   [Exports documentation](https://increase.com/documentation/exports).
      sig do
        params(
          id: String,
          category: Symbol,
          created_at: Time,
          file_download_url: T.nilable(String),
          file_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          status: Symbol,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, category:, created_at:, file_download_url:, file_id:, idempotency_key:, status:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              category: Symbol,
              created_at: Time,
              file_download_url: T.nilable(String),
              file_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              status: Symbol,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      # The category of the Export. We may add additional possible values for this enum
      #   over time; your application should be able to handle that gracefully.
      class Category < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # Export an Open Financial Exchange (OFX) file of transactions and balances for a given time range and Account.
        ACCOUNT_STATEMENT_OFX = :account_statement_ofx

        # Export a CSV of all transactions for a given time range.
        TRANSACTION_CSV = :transaction_csv

        # Export a CSV of account balances for the dates in a given range.
        BALANCE_CSV = :balance_csv

        # Export a CSV of bookkeeping account balances for the dates in a given range.
        BOOKKEEPING_ACCOUNT_BALANCE_CSV = :bookkeeping_account_balance_csv

        # Export a CSV of entities with a given status.
        ENTITY_CSV = :entity_csv

        # Export a CSV of vendors added to the third-party risk management dashboard.
        VENDOR_CSV = :vendor_csv

        # Certain dashboard tables are available as CSV exports. This export cannot be created via the API.
        DASHBOARD_TABLE_CSV = :dashboard_table_csv
      end

      # The status of the Export.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # Increase is generating the export.
        PENDING = :pending

        # The export has been successfully generated.
        COMPLETE = :complete

        # The export failed to generate. Increase will reach out to you to resolve the issue.
        FAILED = :failed
      end

      # A constant representing the object's type. For this resource it will always be
      #   `export`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        EXPORT = :export
      end
    end
  end
end
