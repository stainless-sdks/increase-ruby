# typed: strong

module Increase
  module Models
    class CheckTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Symbol) }
      attr_accessor :fulfillment_method

      sig { returns(String) }
      attr_accessor :source_account_number_id

      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck)) }
      attr_reader :physical_check

      sig { params(physical_check: Increase::Models::CheckTransferCreateParams::PhysicalCheck).void }
      attr_writer :physical_check

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::ThirdParty)) }
      attr_reader :third_party

      sig { params(third_party: Increase::Models::CheckTransferCreateParams::ThirdParty).void }
      attr_writer :third_party

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
        ).void
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
        override.returns(
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
        attr_accessor :mailing_address

        sig { returns(String) }
        attr_accessor :memo

        sig { returns(String) }
        attr_accessor :recipient_name

        sig { returns(T.nilable(String)) }
        attr_reader :note

        sig { params(note: String).void }
        attr_writer :note

        sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)) }
        attr_reader :return_address

        sig do
          params(return_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress).void
        end
        attr_writer :return_address

        sig { returns(T.nilable(String)) }
        attr_reader :signature_text

        sig { params(signature_text: String).void }
        attr_writer :signature_text

        sig do
          params(
            mailing_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress,
            memo: String,
            recipient_name: String,
            note: String,
            return_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress,
            signature_text: String
          ).void
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
          override.returns(
            {
              mailing_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress, memo: String, recipient_name: String, note: String, return_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress, signature_text: String
            }
          )
        end
        def to_hash
        end

        class MailingAddress < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :line1

          sig { returns(String) }
          attr_accessor :postal_code

          sig { returns(String) }
          attr_accessor :state

          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              city: String,
              line1: String,
              postal_code: String,
              state: String,
              line2: String,
              name: String
            ).void
          end
          def initialize(city:, line1:, postal_code:, state:, line2: nil, name: nil)
          end

          sig do
            override.returns(
              {
                city: String,
                line1: String,
                postal_code: String,
                state: String,
                line2: String,
                name: String
              }
            )
          end
          def to_hash
          end
        end

        class ReturnAddress < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :line1

          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :postal_code

          sig { returns(String) }
          attr_accessor :state

          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

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
            override.returns(
              {
                city: String,
                line1: String,
                name: String,
                postal_code: String,
                state: String,
                line2: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class ThirdParty < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :check_number

        sig { params(check_number: String).void }
        attr_writer :check_number

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
