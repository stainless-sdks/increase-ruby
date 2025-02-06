# typed: strong

module Increase
  module Models
    class LockboxUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :recipient_name

      sig { params(recipient_name: String).void }
      attr_writer :recipient_name

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          description: String,
          recipient_name: String,
          status: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(description: nil, recipient_name: nil, status: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            description: String,
            recipient_name: String,
            status: Symbol,
            request_options: Increase::RequestOptions
          }
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
