# typed: strong

module Increase
  module Models
    class LockboxUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: String).returns(String) }
      def recipient_name=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
            description: String,
            recipient_name: String,
            status: Symbol,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
      end
      def initialize(description: nil, recipient_name: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {description: String, recipient_name: String, status: Symbol, request_options: Increase::RequestOptions}
          )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = :active

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = :inactive

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
