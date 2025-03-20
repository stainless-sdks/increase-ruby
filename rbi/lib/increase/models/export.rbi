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
      sig { returns(Increase::Models::Export::Category::TaggedSymbol) }
      def category
      end

      sig do
        params(_: Increase::Models::Export::Category::TaggedSymbol)
          .returns(Increase::Models::Export::Category::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::Export::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::Export::Status::TaggedSymbol)
          .returns(Increase::Models::Export::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `export`.
      sig { returns(Increase::Models::Export::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::Export::Type::TaggedSymbol)
          .returns(Increase::Models::Export::Type::TaggedSymbol)
      end
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
          category: Increase::Models::Export::Category::TaggedSymbol,
          created_at: Time,
          file_download_url: T.nilable(String),
          file_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          status: Increase::Models::Export::Status::TaggedSymbol,
          type: Increase::Models::Export::Type::TaggedSymbol
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
              category: Increase::Models::Export::Category::TaggedSymbol,
              created_at: Time,
              file_download_url: T.nilable(String),
              file_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              status: Increase::Models::Export::Status::TaggedSymbol,
              type: Increase::Models::Export::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The category of the Export. We may add additional possible values for this enum
      #   over time; your application should be able to handle that gracefully.
      module Category
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Export::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Export::Category::TaggedSymbol) }

        # Export an Open Financial Exchange (OFX) file of transactions and balances for a given time range and Account.
        ACCOUNT_STATEMENT_OFX = T.let(:account_statement_ofx, Increase::Models::Export::Category::TaggedSymbol)

        # Export a CSV of all transactions for a given time range.
        TRANSACTION_CSV = T.let(:transaction_csv, Increase::Models::Export::Category::TaggedSymbol)

        # Export a CSV of account balances for the dates in a given range.
        BALANCE_CSV = T.let(:balance_csv, Increase::Models::Export::Category::TaggedSymbol)

        # Export a CSV of bookkeeping account balances for the dates in a given range.
        BOOKKEEPING_ACCOUNT_BALANCE_CSV =
          T.let(:bookkeeping_account_balance_csv, Increase::Models::Export::Category::TaggedSymbol)

        # Export a CSV of entities with a given status.
        ENTITY_CSV = T.let(:entity_csv, Increase::Models::Export::Category::TaggedSymbol)

        # Export a CSV of vendors added to the third-party risk management dashboard.
        VENDOR_CSV = T.let(:vendor_csv, Increase::Models::Export::Category::TaggedSymbol)

        # Certain dashboard tables are available as CSV exports. This export cannot be created via the API.
        DASHBOARD_TABLE_CSV = T.let(:dashboard_table_csv, Increase::Models::Export::Category::TaggedSymbol)
      end

      # The status of the Export.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Export::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Export::Status::TaggedSymbol) }

        # Increase is generating the export.
        PENDING = T.let(:pending, Increase::Models::Export::Status::TaggedSymbol)

        # The export has been successfully generated.
        COMPLETE = T.let(:complete, Increase::Models::Export::Status::TaggedSymbol)

        # The export failed to generate. Increase will reach out to you to resolve the issue.
        FAILED = T.let(:failed, Increase::Models::Export::Status::TaggedSymbol)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `export`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Export::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Export::Type::TaggedSymbol) }

        EXPORT = T.let(:export, Increase::Models::Export::Type::TaggedSymbol)
      end
    end
  end
end
