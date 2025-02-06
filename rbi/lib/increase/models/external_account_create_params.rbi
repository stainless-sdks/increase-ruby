# typed: strong

module Increase
  module Models
    class ExternalAccountCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(String) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(T.nilable(Symbol)) }
      attr_reader :account_holder

      sig { params(account_holder: Symbol).void }
      attr_writer :account_holder

      sig { returns(T.nilable(Symbol)) }
      attr_reader :funding

      sig { params(funding: Symbol).void }
      attr_writer :funding

      sig do
        params(
          account_number: String,
          description: String,
          routing_number: String,
          account_holder: Symbol,
          funding: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        account_number:,
        description:,
        routing_number:,
        account_holder: nil,
        funding: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            description: String,
            routing_number: String,
            account_holder: Symbol,
            funding: Symbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AccountHolder < Increase::Enum
        abstract!

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Funding < Increase::Enum
        abstract!

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
