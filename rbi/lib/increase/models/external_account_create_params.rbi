# typed: strong

module Increase
  module Models
    class ExternalAccountCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_external_account_parameters/properties/account_number
      sig { returns(String) }
      attr_accessor :account_number

      # #/components/schemas/create_an_external_account_parameters/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/create_an_external_account_parameters/properties/routing_number
      sig { returns(String) }
      attr_accessor :routing_number

      # #/components/schemas/create_an_external_account_parameters/properties/account_holder
      sig { returns(T.nilable(Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol)) }
      attr_reader :account_holder

      sig { params(account_holder: Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol).void }
      attr_writer :account_holder

      # #/components/schemas/create_an_external_account_parameters/properties/funding
      sig { returns(T.nilable(Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol)) }
      attr_reader :funding

      sig { params(funding: Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol).void }
      attr_writer :funding

      sig do
        params(
          account_number: String,
          description: String,
          routing_number: String,
          account_holder: Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol,
          funding: Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_number:,
        description:,
        routing_number:,
        account_holder: nil,
        funding: nil,
        request_options: {}
      )
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
      def to_hash; end

      # #/components/schemas/create_an_external_account_parameters/properties/account_holder
      module AccountHolder
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol) }

        # The External Account is owned by a business.
        BUSINESS = T.let(:business, Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL =
          T.let(:individual, Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = T.let(:unknown, Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ExternalAccountCreateParams::AccountHolder::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/create_an_external_account_parameters/properties/funding
      module Funding
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountCreateParams::Funding) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol)

        # A different type of account.
        OTHER = T.let(:other, Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ExternalAccountCreateParams::Funding::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
