# typed: strong

module Increase
  module Models
    class Export < Increase::Internal::Type::BaseModel
      # #/components/schemas/export/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/export/properties/category
      sig { returns(Increase::Models::Export::Category::TaggedSymbol) }
      attr_accessor :category

      # #/components/schemas/export/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/export/properties/file_download_url
      sig { returns(T.nilable(String)) }
      attr_accessor :file_download_url

      # #/components/schemas/export/properties/file_id
      sig { returns(T.nilable(String)) }
      attr_accessor :file_id

      # #/components/schemas/export/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/export/properties/status
      sig { returns(Increase::Models::Export::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/export/properties/type
      sig { returns(Increase::Models::Export::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/export
      sig do
        params(
          id: String,
          category: Increase::Models::Export::Category::OrSymbol,
          created_at: Time,
          file_download_url: T.nilable(String),
          file_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          status: Increase::Models::Export::Status::OrSymbol,
          type: Increase::Models::Export::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        category:,
        created_at:,
        file_download_url:,
        file_id:,
        idempotency_key:,
        status:,
        type:
      )
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
      def to_hash; end

      # #/components/schemas/export/properties/category
      module Category
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Export::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Export::Category::TaggedSymbol) }

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

        sig { override.returns(T::Array[Increase::Models::Export::Category::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/export/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Export::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Export::Status::TaggedSymbol) }

        # Increase is generating the export.
        PENDING = T.let(:pending, Increase::Models::Export::Status::TaggedSymbol)

        # The export has been successfully generated.
        COMPLETE = T.let(:complete, Increase::Models::Export::Status::TaggedSymbol)

        # The export failed to generate. Increase will reach out to you to resolve the issue.
        FAILED = T.let(:failed, Increase::Models::Export::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Export::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/export/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Export::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Export::Type::TaggedSymbol) }

        EXPORT = T.let(:export, Increase::Models::Export::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Export::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
