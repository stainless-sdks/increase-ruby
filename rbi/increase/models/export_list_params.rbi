# typed: strong

module Increase
  module Models
    class ExportListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Increase::Internal::AnyHash) }

      sig { returns(T.nilable(Increase::ExportListParams::Category)) }
      attr_reader :category

      sig do
        params(category: Increase::ExportListParams::Category::OrHash).void
      end
      attr_writer :category

      sig { returns(T.nilable(Increase::ExportListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(created_at: Increase::ExportListParams::CreatedAt::OrHash).void
      end
      attr_writer :created_at

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Filter records to the one with the specified `idempotency_key` you chose for
      # that object. This value is unique across Increase and is used to ensure that a
      # request is only processed once. Learn more about
      # [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::ExportListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::ExportListParams::Status::OrHash).void }
      attr_writer :status

      sig do
        params(
          category: Increase::ExportListParams::Category::OrHash,
          created_at: Increase::ExportListParams::CreatedAt::OrHash,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::ExportListParams::Status::OrHash,
          request_options:
            T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        ).returns(T.attached_class)
      end
      def self.new(
        category: nil,
        created_at: nil,
        # Return the page of entries after this one.
        cursor: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
        # that object. This value is unique across Increase and is used to ensure that a
        # request is only processed once. Learn more about
        # [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        # objects.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            category: Increase::ExportListParams::Category,
            created_at: Increase::ExportListParams::CreatedAt,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            status: Increase::ExportListParams::Status,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Category < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Increase::Internal::AnyHash) }

        # Filter Exports for those with the specified category or categories. For GET
        # requests, this should be encoded as a comma-delimited string, such as
        # `?in=one,two,three`.
        sig do
          returns(
            T.nilable(
              T::Array[Increase::ExportListParams::Category::In::OrSymbol]
            )
          )
        end
        attr_reader :in_

        sig do
          params(
            in_: T::Array[Increase::ExportListParams::Category::In::OrSymbol]
          ).void
        end
        attr_writer :in_

        sig do
          params(
            in_: T::Array[Increase::ExportListParams::Category::In::OrSymbol]
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter Exports for those with the specified category or categories. For GET
          # requests, this should be encoded as a comma-delimited string, such as
          # `?in=one,two,three`.
          in_: nil
        )
        end

        sig do
          override.returns(
            {
              in_: T::Array[Increase::ExportListParams::Category::In::OrSymbol]
            }
          )
        end
        def to_hash
        end

        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Increase::ExportListParams::Category::In)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # Export an Open Financial Exchange (OFX) file of transactions and balances for a given time range and Account.
          ACCOUNT_STATEMENT_OFX =
            T.let(
              :account_statement_ofx,
              Increase::ExportListParams::Category::In::TaggedSymbol
            )

          # Export a CSV of all transactions for a given time range.
          TRANSACTION_CSV =
            T.let(
              :transaction_csv,
              Increase::ExportListParams::Category::In::TaggedSymbol
            )

          # Export a CSV of account balances for the dates in a given range.
          BALANCE_CSV =
            T.let(
              :balance_csv,
              Increase::ExportListParams::Category::In::TaggedSymbol
            )

          # Export a CSV of bookkeeping account balances for the dates in a given range.
          BOOKKEEPING_ACCOUNT_BALANCE_CSV =
            T.let(
              :bookkeeping_account_balance_csv,
              Increase::ExportListParams::Category::In::TaggedSymbol
            )

          # Export a CSV of entities with a given status.
          ENTITY_CSV =
            T.let(
              :entity_csv,
              Increase::ExportListParams::Category::In::TaggedSymbol
            )

          # Export a CSV of vendors added to the third-party risk management dashboard.
          VENDOR_CSV =
            T.let(
              :vendor_csv,
              Increase::ExportListParams::Category::In::TaggedSymbol
            )

          # Certain dashboard tables are available as CSV exports. This export cannot be created via the API.
          DASHBOARD_TABLE_CSV =
            T.let(
              :dashboard_table_csv,
              Increase::ExportListParams::Category::In::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Increase::ExportListParams::Category::In::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class CreatedAt < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Increase::Internal::AnyHash) }

        # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        # timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        # timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # Return results on or after this
        # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # Return results on or before this
        # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig do
          params(
            after: Time,
            before: Time,
            on_or_after: Time,
            on_or_before: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          # timestamp.
          after: nil,
          # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          # timestamp.
          before: nil,
          # Return results on or after this
          # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          on_or_after: nil,
          # Return results on or before this
          # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          on_or_before: nil
        )
        end

        sig do
          override.returns(
            { after: Time, before: Time, on_or_after: Time, on_or_before: Time }
          )
        end
        def to_hash
        end
      end

      class Status < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Increase::Internal::AnyHash) }

        # Filter Exports for those with the specified status or statuses. For GET
        # requests, this should be encoded as a comma-delimited string, such as
        # `?in=one,two,three`.
        sig do
          returns(
            T.nilable(
              T::Array[Increase::ExportListParams::Status::In::OrSymbol]
            )
          )
        end
        attr_reader :in_

        sig do
          params(
            in_: T::Array[Increase::ExportListParams::Status::In::OrSymbol]
          ).void
        end
        attr_writer :in_

        sig do
          params(
            in_: T::Array[Increase::ExportListParams::Status::In::OrSymbol]
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter Exports for those with the specified status or statuses. For GET
          # requests, this should be encoded as a comma-delimited string, such as
          # `?in=one,two,three`.
          in_: nil
        )
        end

        sig do
          override.returns(
            { in_: T::Array[Increase::ExportListParams::Status::In::OrSymbol] }
          )
        end
        def to_hash
        end

        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Increase::ExportListParams::Status::In)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # Increase is generating the export.
          PENDING =
            T.let(
              :pending,
              Increase::ExportListParams::Status::In::TaggedSymbol
            )

          # The export has been successfully generated.
          COMPLETE =
            T.let(
              :complete,
              Increase::ExportListParams::Status::In::TaggedSymbol
            )

          # The export failed to generate. Increase will reach out to you to resolve the issue.
          FAILED =
            T.let(:failed, Increase::ExportListParams::Status::In::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Increase::ExportListParams::Status::In::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
