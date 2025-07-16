# typed: strong

module Increase
  module Models
    class ExternalAccountCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::ExternalAccountCreateParams, Increase::Internal::AnyHash) }

      # The account number for the destination account.
      sig { returns(String) }
      attr_accessor :account_number

      # The name you choose for the Account.
      sig { returns(String) }
      attr_accessor :description

      # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      # destination account.
      sig { returns(String) }
      attr_accessor :routing_number

      # The type of entity that owns the External Account.
      sig { returns(T.nilable(Increase::ExternalAccountCreateParams::AccountHolder::OrSymbol)) }
      attr_reader :account_holder

      sig { params(account_holder: Increase::ExternalAccountCreateParams::AccountHolder::OrSymbol).void }
      attr_writer :account_holder

      # The type of the destination account. Defaults to `checking`.
      sig { returns(T.nilable(Increase::ExternalAccountCreateParams::Funding::OrSymbol)) }
      attr_reader :funding

      sig { params(funding: Increase::ExternalAccountCreateParams::Funding::OrSymbol).void }
      attr_writer :funding

      sig do
        params(
          account_number: String,
          description: String,
          routing_number: String,
          account_holder: Increase::ExternalAccountCreateParams::AccountHolder::OrSymbol,
          funding: Increase::ExternalAccountCreateParams::Funding::OrSymbol,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The account number for the destination account.
      account_number:,
        # The name you choose for the Account.
      description:,
        # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      # destination account.
      routing_number:,
        # The type of entity that owns the External Account.
      account_holder: nil,
        # The type of the destination account. Defaults to `checking`.
      funding: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              account_number: String,
              description: String,
              routing_number: String,
              account_holder: Increase::ExternalAccountCreateParams::AccountHolder::OrSymbol,
              funding: Increase::ExternalAccountCreateParams::Funding::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # The type of entity that owns the External Account.
      module AccountHolder
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::ExternalAccountCreateParams::AccountHolder) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The External Account is owned by a business.
        BUSINESS = T.let(:business, Increase::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL = T.let(:individual, Increase::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = T.let(:unknown, Increase::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        sig { override.returns(T::Array[Increase::ExternalAccountCreateParams::AccountHolder::TaggedSymbol]) }
        def self.values; end
      end

      # The type of the destination account. Defaults to `checking`.
      module Funding
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::ExternalAccountCreateParams::Funding) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::ExternalAccountCreateParams::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::ExternalAccountCreateParams::Funding::TaggedSymbol)

        # A different type of account.
        OTHER = T.let(:other, Increase::ExternalAccountCreateParams::Funding::TaggedSymbol)

        sig { override.returns(T::Array[Increase::ExternalAccountCreateParams::Funding::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
