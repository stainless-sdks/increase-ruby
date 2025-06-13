# typed: strong

module Increase
  module Models
    class ExternalAccountUpdateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::ExternalAccountUpdateParams, Increase::Internal::AnyHash) }

      # The type of entity that owns the External Account.
      sig { returns(T.nilable(Increase::ExternalAccountUpdateParams::AccountHolder::OrSymbol)) }
      attr_reader :account_holder

      sig { params(account_holder: Increase::ExternalAccountUpdateParams::AccountHolder::OrSymbol).void }
      attr_writer :account_holder

      # The description you choose to give the external account.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The funding type of the External Account.
      sig { returns(T.nilable(Increase::ExternalAccountUpdateParams::Funding::OrSymbol)) }
      attr_reader :funding

      sig { params(funding: Increase::ExternalAccountUpdateParams::Funding::OrSymbol).void }
      attr_writer :funding

      # The status of the External Account.
      sig { returns(T.nilable(Increase::ExternalAccountUpdateParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Increase::ExternalAccountUpdateParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          account_holder: Increase::ExternalAccountUpdateParams::AccountHolder::OrSymbol,
          description: String,
          funding: Increase::ExternalAccountUpdateParams::Funding::OrSymbol,
          status: Increase::ExternalAccountUpdateParams::Status::OrSymbol,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The type of entity that owns the External Account.
      account_holder: nil,
        # The description you choose to give the external account.
      description: nil,
        # The funding type of the External Account.
      funding: nil,
        # The status of the External Account.
      status: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              account_holder: Increase::ExternalAccountUpdateParams::AccountHolder::OrSymbol,
              description: String,
              funding: Increase::ExternalAccountUpdateParams::Funding::OrSymbol,
              status: Increase::ExternalAccountUpdateParams::Status::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # The type of entity that owns the External Account.
      module AccountHolder
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::ExternalAccountUpdateParams::AccountHolder) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The External Account is owned by a business.
        BUSINESS = T.let(:business, Increase::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL = T.let(:individual, Increase::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol)

        sig { override.returns(T::Array[Increase::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol]) }
        def self.values; end
      end

      # The funding type of the External Account.
      module Funding
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::ExternalAccountUpdateParams::Funding) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        # A different type of account.
        OTHER = T.let(:other, Increase::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        sig { override.returns(T::Array[Increase::ExternalAccountUpdateParams::Funding::TaggedSymbol]) }
        def self.values; end
      end

      # The status of the External Account.
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::ExternalAccountUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The External Account is active.
        ACTIVE = T.let(:active, Increase::ExternalAccountUpdateParams::Status::TaggedSymbol)

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = T.let(:archived, Increase::ExternalAccountUpdateParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::ExternalAccountUpdateParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
