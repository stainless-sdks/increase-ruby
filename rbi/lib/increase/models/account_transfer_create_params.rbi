# typed: strong

module Increase
  module Models
    class AccountTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :destination_account_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      sig do
        params(
          account_id: String,
          amount: Integer,
          description: String,
          destination_account_id: String,
          require_approval: T::Boolean,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        account_id:,
        amount:,
        description:,
        destination_account_id:,
        require_approval: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: Integer,
            description: String,
            destination_account_id: String,
            require_approval: T::Boolean,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
