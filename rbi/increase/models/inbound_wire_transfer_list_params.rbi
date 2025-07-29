# typed: strong

module Increase
  module Models
    class InboundWireTransferListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::InboundWireTransferListParams, Increase::Internal::AnyHash) }

      # Filter Inbound Wire Transfers to ones belonging to the specified Account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Filter Inbound Wire Transfers to ones belonging to the specified Account Number.
      sig { returns(T.nilable(String)) }
      attr_reader :account_number_id

      sig { params(account_number_id: String).void }
      attr_writer :account_number_id

      sig { returns(T.nilable(Increase::InboundWireTransferListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::InboundWireTransferListParams::CreatedAt::OrHash).void }
      attr_writer :created_at

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::InboundWireTransferListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::InboundWireTransferListParams::Status::OrHash).void }
      attr_writer :status

      # Filter Inbound Wire Transfers to ones belonging to the specified Wire Drawdown
      # Request.
      sig { returns(T.nilable(String)) }
      attr_reader :wire_drawdown_request_id

      sig { params(wire_drawdown_request_id: String).void }
      attr_writer :wire_drawdown_request_id

      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at: Increase::InboundWireTransferListParams::CreatedAt::OrHash,
          cursor: String,
          limit: Integer,
          status: Increase::InboundWireTransferListParams::Status::OrHash,
          wire_drawdown_request_id: String,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Filter Inbound Wire Transfers to ones belonging to the specified Account.
      account_id: nil,
        # Filter Inbound Wire Transfers to ones belonging to the specified Account Number.
      account_number_id: nil,
        created_at: nil,
        # Return the page of entries after this one.
      cursor: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      limit: nil,
        status: nil,
        # Filter Inbound Wire Transfers to ones belonging to the specified Wire Drawdown
      # Request.
      wire_drawdown_request_id: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              account_id: String,
              account_number_id: String,
              created_at: Increase::InboundWireTransferListParams::CreatedAt,
              cursor: String,
              limit: Integer,
              status: Increase::InboundWireTransferListParams::Status,
              wire_drawdown_request_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class CreatedAt < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Increase::InboundWireTransferListParams::CreatedAt, Increase::Internal::AnyHash) }

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

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class) }
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
        ); end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash; end
      end

      class Status < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Increase::InboundWireTransferListParams::Status, Increase::Internal::AnyHash) }

        # Filter Inbound Wire Transfers to those with the specified status. For GET
        # requests, this should be encoded as a comma-delimited string, such as
        # `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::InboundWireTransferListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::InboundWireTransferListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::InboundWireTransferListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(
          # Filter Inbound Wire Transfers to those with the specified status. For GET
        # requests, this should be encoded as a comma-delimited string, such as
        # `?in=one,two,three`.
        in_: nil
        ); end

        sig { override.returns({in_: T::Array[Increase::InboundWireTransferListParams::Status::In::OrSymbol]}) }
        def to_hash; end

        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::InboundWireTransferListParams::Status::In) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
          PENDING = T.let(:pending, Increase::InboundWireTransferListParams::Status::In::TaggedSymbol)

          # The Inbound Wire Transfer is accepted.
          ACCEPTED = T.let(:accepted, Increase::InboundWireTransferListParams::Status::In::TaggedSymbol)

          # The Inbound Wire Transfer was declined.
          DECLINED = T.let(:declined, Increase::InboundWireTransferListParams::Status::In::TaggedSymbol)

          # The Inbound Wire Transfer was reversed.
          REVERSED = T.let(:reversed, Increase::InboundWireTransferListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::InboundWireTransferListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
