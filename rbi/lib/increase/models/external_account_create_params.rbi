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
      sig { returns(T.nilable(Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol)) }
      def account_holder
      end

      sig do
        params(_: Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol)
          .returns(Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol)
      end
      def account_holder=(_)
      end

      # The type of the destination account. Defaults to `checking`.
      sig { returns(T.nilable(Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol)) }
      def funding
      end

      sig do
        params(_: Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol)
          .returns(Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol)
      end
      def funding=(_)
      end

      sig do
        params(
          account_number: String,
          description: String,
          routing_number: String,
          account_holder: Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol,
          funding: Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol,
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
              account_holder: Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol,
              funding: Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of entity that owns the External Account.
      module AccountHolder
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol) }

        # The External Account is owned by a business.
        BUSINESS = T.let(:business, Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL =
          T.let(:individual, Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = T.let(:unknown, Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol]) }
          def values
          end
        end
      end

      # The type of the destination account. Defaults to `checking`.
      module Funding
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountCreateParams::Funding) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol)

        # A different type of account.
        OTHER = T.let(:other, Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
