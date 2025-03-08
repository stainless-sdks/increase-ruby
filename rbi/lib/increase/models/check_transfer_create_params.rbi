# typed: strong

module Increase
  module Models
    class CheckTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Symbol) }
      def fulfillment_method
      end

      sig { params(_: Symbol).returns(Symbol) }
      def fulfillment_method=(_)
      end

      sig { returns(String) }
      def source_account_number_id
      end

      sig { params(_: String).returns(String) }
      def source_account_number_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck)) }
      def physical_check
      end

      sig do
        params(_: Increase::Models::CheckTransferCreateParams::PhysicalCheck)
          .returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck)
      end
      def physical_check=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def require_approval
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def require_approval=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::ThirdParty)) }
      def third_party
      end

      sig do
        params(_: Increase::Models::CheckTransferCreateParams::ThirdParty)
          .returns(Increase::Models::CheckTransferCreateParams::ThirdParty)
      end
      def third_party=(_)
      end

      sig do
        params(
          account_id: String,
          amount: Integer,
          fulfillment_method: Symbol,
          source_account_number_id: String,
          physical_check: Increase::Models::CheckTransferCreateParams::PhysicalCheck,
          require_approval: T::Boolean,
          third_party: Increase::Models::CheckTransferCreateParams::ThirdParty,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        account_id:,
        amount:,
        fulfillment_method:,
        source_account_number_id:,
        physical_check: nil,
        require_approval: nil,
        third_party: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              amount: Integer,
              fulfillment_method: Symbol,
              source_account_number_id: String,
              physical_check: Increase::Models::CheckTransferCreateParams::PhysicalCheck,
              require_approval: T::Boolean,
              third_party: Increase::Models::CheckTransferCreateParams::ThirdParty,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class FulfillmentMethod < Increase::Enum
        abstract!

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class PhysicalCheck < Increase::BaseModel
        sig { returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress) }
        def mailing_address
        end

        sig do
          params(_: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress)
            .returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress)
        end
        def mailing_address=(_)
        end

        sig { returns(String) }
        def memo
        end

        sig { params(_: String).returns(String) }
        def memo=(_)
        end

        sig { returns(String) }
        def recipient_name
        end

        sig { params(_: String).returns(String) }
        def recipient_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def note
        end

        sig { params(_: String).returns(String) }
        def note=(_)
        end

        sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)) }
        def return_address
        end

        sig do
          params(_: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)
            .returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)
        end
        def return_address=(_)
        end

        sig { returns(T.nilable(String)) }
        def signature_text
        end

        sig { params(_: String).returns(String) }
        def signature_text=(_)
        end

        sig do
          params(
            mailing_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress,
            memo: String,
            recipient_name: String,
            note: String,
            return_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress,
            signature_text: String
          )
            .void
        end
        def initialize(
          mailing_address:,
          memo:,
          recipient_name:,
          note: nil,
          return_address: nil,
          signature_text: nil
        )
        end

        sig do
          override
            .returns(
              {
                mailing_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress,
                memo: String,
                recipient_name: String,
                note: String,
                return_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress,
                signature_text: String
              }
            )
        end
        def to_hash
        end

        class MailingAddress < Increase::BaseModel
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: String).returns(String) }
          def line2=(_)
          end

          sig { params(city: String, line1: String, postal_code: String, state: String, line2: String).void }
          def initialize(city:, line1:, postal_code:, state:, line2: nil)
          end

          sig do
            override.returns({city: String, line1: String, postal_code: String, state: String, line2: String})
          end
          def to_hash
          end
        end

        class ReturnAddress < Increase::BaseModel
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: String).returns(String) }
          def line2=(_)
          end

          sig do
            params(
              city: String,
              line1: String,
              name: String,
              postal_code: String,
              state: String,
              line2: String
            ).void
          end
          def initialize(city:, line1:, name:, postal_code:, state:, line2: nil)
          end

          sig do
            override
              .returns({
                         city: String,
                         line1: String,
                         name: String,
                         postal_code: String,
                         state: String,
                         line2: String
                       })
          end
          def to_hash
          end
        end
      end

      class ThirdParty < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        def check_number
        end

        sig { params(_: String).returns(String) }
        def check_number=(_)
        end

        sig { params(check_number: String).void }
        def initialize(check_number: nil)
        end

        sig { override.returns({check_number: String}) }
        def to_hash
        end
      end
    end
  end
end
