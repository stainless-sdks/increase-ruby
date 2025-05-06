# typed: strong

module Increase
  module Models
    class ExternalAccountUpdateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # The type of entity that owns the External Account.
      sig do
        returns(
          T.nilable(
            Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol
          )
        )
      end
      attr_reader :account_holder

      sig do
        params(
          account_holder:
            Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol
        ).void
      end
      attr_writer :account_holder

      # The description you choose to give the external account.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The funding type of the External Account.
      sig do
        returns(
          T.nilable(
            Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol
          )
        )
      end
      attr_reader :funding

      sig do
        params(
          funding:
            Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol
        ).void
      end
      attr_writer :funding

      # The status of the External Account.
      sig do
        returns(
          T.nilable(
            Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          account_holder:
            Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol,
          description: String,
          funding:
            Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol,
          status:
            Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol,
          request_options:
            T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        ).returns(T.attached_class)
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
      )
      end

      sig do
        override.returns(
          {
            account_holder:
              Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol,
            description: String,
            funding:
              Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol,
            status:
              Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of entity that owns the External Account.
      module AccountHolder
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Increase::Models::ExternalAccountUpdateParams::AccountHolder
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The External Account is owned by a business.
        BUSINESS =
          T.let(
            :business,
            Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol
          )

        # The External Account is owned by an individual.
        INDIVIDUAL =
          T.let(
            :individual,
            Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Increase::Models::ExternalAccountUpdateParams::AccountHolder::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The funding type of the External Account.
      module Funding
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Increase::Models::ExternalAccountUpdateParams::Funding
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # A checking account.
        CHECKING =
          T.let(
            :checking,
            Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol
          )

        # A savings account.
        SAVINGS =
          T.let(
            :savings,
            Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol
          )

        # A different type of account.
        OTHER =
          T.let(
            :other,
            Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Increase::Models::ExternalAccountUpdateParams::Funding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The status of the External Account.
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Increase::Models::ExternalAccountUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The External Account is active.
        ACTIVE =
          T.let(
            :active,
            Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol
          )

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED =
          T.let(
            :archived,
            Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Increase::Models::ExternalAccountUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
