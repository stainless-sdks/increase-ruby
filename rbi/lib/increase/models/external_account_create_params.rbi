# typed: strong

module Increase
  module Models
    class ExternalAccountCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The account number for the destination account.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # The name you choose for the Account.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The type of entity that owns the External Account.
      sig { returns(T.nilable(Symbol)) }
      def account_holder
      end

      sig { params(_: Symbol).returns(Symbol) }
      def account_holder=(_)
      end

      # The type of the destination account. Defaults to `checking`.
      sig { returns(T.nilable(Symbol)) }
      def funding
      end

      sig { params(_: Symbol).returns(Symbol) }
      def funding=(_)
      end

      sig do
        params(
          account_number: String,
          description: String,
          routing_number: String,
          account_holder: Symbol,
          funding: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(account_number:, description:, routing_number:, account_holder: nil, funding: nil, request_options: {})
      end

      sig do
        override
          .returns(
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

      # The type of entity that owns the External Account.
      class AccountHolder < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown
      end

      # The type of the destination account. Defaults to `checking`.
      class Funding < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other
      end
    end
  end
end
