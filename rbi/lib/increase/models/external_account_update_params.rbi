# typed: strong

module Increase
  module Models
    class ExternalAccountUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The type of entity that owns the External Account.
      sig { returns(T.nilable(Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol)) }
      def account_holder
      end

      sig do
        params(_: Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol)
          .returns(Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol)
      end
      def account_holder=(_)
      end

      # The description you choose to give the external account.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The funding type of the External Account.
      sig { returns(T.nilable(Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol)) }
      def funding
      end

      sig do
        params(_: Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol)
          .returns(Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol)
      end
      def funding=(_)
      end

      # The status of the External Account.
      sig { returns(T.nilable(Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol)
          .returns(Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          account_holder: Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol,
          description: String,
          funding: Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol,
          status: Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(account_holder: nil, description: nil, funding: nil, status: nil, request_options: {})
      end

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
      def to_hash
      end

      # The type of entity that owns the External Account.
      module AccountHolder
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountUpdateParams::AccountHolder) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol) }

        # The External Account is owned by a business.
        BUSINESS = T.let(:business, Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL =
          T.let(:individual, Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol]) }
          def values
          end
        end
      end

      # The funding type of the External Account.
      module Funding
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountUpdateParams::Funding) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        # A different type of account.
        OTHER = T.let(:other, Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol]) }
          def values
          end
        end
      end

      # The status of the External Account.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol) }

        # The External Account is active.
        ACTIVE = T.let(:active, Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol)

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = T.let(:archived, Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
