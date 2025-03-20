# typed: strong

module Increase
  module Models
    class LockboxUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The description you choose for the Lockbox.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The recipient name you choose for the Lockbox.
      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: String).returns(String) }
      def recipient_name=(_)
      end

      # This indicates if checks can be sent to the Lockbox.
      sig { returns(T.nilable(Increase::Models::LockboxUpdateParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Increase::Models::LockboxUpdateParams::Status::OrSymbol)
          .returns(Increase::Models::LockboxUpdateParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          description: String,
          recipient_name: String,
          status: Increase::Models::LockboxUpdateParams::Status::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(description: nil, recipient_name: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              description: String,
              recipient_name: String,
              status: Increase::Models::LockboxUpdateParams::Status::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # This indicates if checks can be sent to the Lockbox.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::LockboxUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::LockboxUpdateParams::Status::TaggedSymbol) }

        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = T.let(:active, Increase::Models::LockboxUpdateParams::Status::TaggedSymbol)

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = T.let(:inactive, Increase::Models::LockboxUpdateParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::LockboxUpdateParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
