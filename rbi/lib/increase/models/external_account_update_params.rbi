# typed: strong

module Increase
  module Models
    class ExternalAccountUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      attr_reader :account_holder

      sig { params(account_holder: Symbol).void }
      attr_writer :account_holder

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Symbol)) }
      attr_reader :funding

      sig { params(funding: Symbol).void }
      attr_writer :funding

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          account_holder: Symbol,
          description: String,
          funding: Symbol,
          status: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(account_holder: nil, description: nil, funding: nil, status: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            account_holder: Symbol,
            description: String,
            funding: Symbol,
            status: Symbol,
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

      class Status < Increase::Enum
        abstract!

        # The External Account is active.
        ACTIVE = :active

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = :archived

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
