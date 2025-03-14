# typed: strong

module Increase
  module Models
    class ExternalAccountUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The type of entity that owns the External Account.
      sig { returns(T.nilable(Symbol)) }
      def account_holder
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(T.nilable(Symbol)) }
      def funding
      end

      sig { params(_: Symbol).returns(Symbol) }
      def funding=(_)
      end

      # The status of the External Account.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          account_holder: Symbol,
          description: String,
          funding: Symbol,
          status: Symbol,
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

      # The type of entity that owns the External Account.
      class AccountHolder < Increase::Enum
        abstract!

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # The funding type of the External Account.
      class Funding < Increase::Enum
        abstract!

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # The status of the External Account.
      class Status < Increase::Enum
        abstract!

        # The External Account is active.
        ACTIVE = :active

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = :archived

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
