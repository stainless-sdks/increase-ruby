# typed: strong

module Increase
  module Models
    class ExternalAccountUpdateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/update_an_external_account_parameters/properties/account_holder
      sig { returns(T.nilable(Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol)) }
      attr_reader :account_holder

      sig { params(account_holder: Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol).void }
      attr_writer :account_holder

      # #/components/schemas/update_an_external_account_parameters/properties/description
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # #/components/schemas/update_an_external_account_parameters/properties/funding
      sig { returns(T.nilable(Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol)) }
      attr_reader :funding

      sig { params(funding: Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol).void }
      attr_writer :funding

      # #/components/schemas/update_an_external_account_parameters/properties/status
      sig { returns(T.nilable(Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          account_holder: Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol,
          description: String,
          funding: Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol,
          status: Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(account_holder: nil, description: nil, funding: nil, status: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              account_holder: Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol,
              description: String,
              funding: Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol,
              status: Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # #/components/schemas/update_an_external_account_parameters/properties/account_holder
      module AccountHolder
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountUpdateParams::AccountHolder) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol) }

        # The External Account is owned by a business.
        BUSINESS = T.let(:business, Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL =
          T.let(:individual, Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/update_an_external_account_parameters/properties/funding
      module Funding
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountUpdateParams::Funding) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        # A different type of account.
        OTHER = T.let(:other, Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/update_an_external_account_parameters/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol) }

        # The External Account is active.
        ACTIVE = T.let(:active, Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol)

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = T.let(:archived, Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
